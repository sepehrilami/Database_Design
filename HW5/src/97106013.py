#!/usr/bin/env python
# coding: utf-8

# ## Prepare Environment

# In[ ]:


# !pip3 install pymongo
# !pip3 install mongoengine
# !pip3 install Faker
# !pip3 install mongomock


# In[ ]:


# %load_ext nb_black
# %load_ext autoreload
# %autoreload 2


# In[ ]:


# Prepare environment for importing from src
import sys
import os

sys.path.insert(0, "..")


# ## Import Dependencies 

# In[ ]:


import random
import datetime

from mongoengine import connect, get_connection

from src.data import initialize_db
from src.utils import drop_db


# ## Connect to Mock DB

# In[ ]:


from pymongo import MongoClient

client = connect("assignment", host="mongodb://127.0.0.1:27017")


# In[ ]:


if not os.environ.get("TEST"):
    drop_db(client, "assignment")


# ## Generate Fake Data & Insert Them to DB

# In[ ]:


if not os.environ.get("TEST"):
    initialize_db()


# In[ ]:


print(client.assignment.list_collection_names())
print(client.assignment.patient.find_one())


# ## Examples

# In[ ]:


print(client.assignment.drug.find_one({"formula": "CH3COOH"}))


# In[ ]:





# In[ ]:


list(
    client.assignment.drug.aggregate(
        [{"$group": {"_id": "$formula", "count": {"$sum": 1}}}]
    )
)


# In[ ]:





# In[ ]:


client.assignment.patient.aggregate(
    [
        {
            "$lookup": {
                "from": "doctor",
                "localField": "doctor_id",
                "foreignField": "_id",
                "as": "doctor",
            }
        },
        {"$match": {"doctor.first_name": "Robert"}},
        {"$count": "patients"},
    ]
).next()


# In[ ]:





# ## Query Assignments

# In[ ]:


# نام داروخانه هایی که شماره تلفن آنها با 1+ شروع می شود
print("##1##")
a1 = list(
    client.assignment.pharmacy.find(
        filter={
            'telephone': {
                '$regex': r'^\+1.+$'
            }
        },
        projection={"name": 1, "_id": 0},
    )
)
# print(a1)


# In[ ]:





# In[ ]:


# شماره ملی افرادی که بعد از تاریخ datetime.datetime(2000, 1, 1, 0, 0) متولد شده اند
print("##2##")
a2 = list(
    client.assignment.patient.find(
        filter={
            'birthdate': {
                '$gt': datetime.datetime(2000, 1, 1, 0, 0)
            }
        },
        projection={"national_id": 1, "_id": 0},
    )
)
# print(a2)


# In[ ]:





# In[ ]:


# تعداد نسخه هایی که دارای حداقل 15 دارو هستند
print("##3##")
a3 = client.assignment.prescription.find(
    filter={
        '$where': "this.items.length > 15"
    }
).count()
# print(a3)


# In[ ]:





# In[ ]:


# کد ملی بیمارانی که اسم پزشک آنها "Robert" است
print("##4##")
a4 = list(
    client.assignment.patient.aggregate(
        [
            { 
                "$lookup": {
                    'from': 'doctor',
                    'localField': 'doctor_id',
                    'foreignField': '_id',
                    'as': 'doctor'
                }
            },
            {
                "$unwind": "$doctor"
            },
            {
                "$match": {
                    'doctor.first_name': 'Robert'
                }
            },
            {
                '$project': {
                    'national_id': 1,
                     "_id": 0,
                }
            }
        ]
    )
)
# print(a4)


# In[ ]:





# In[ ]:


# نام داروخانه ای که دارویی به گرانترین قیمت به آن فروخته شده است
print("##5##")
a5 = client.assignment.sale.aggregate(
    [
        {
            '$group': {
                '_id': None,
                "maxPrice": {
                    "$max": "$price"
                }
            }
        },
        { 
            "$lookup": {
                'from': 'sale',
                'localField': 'maxPrice',
                'foreignField': 'price',
                'as': 'sale'
            }
        },
        {
            "$unwind": "$sale"
        },
        { 
            "$lookup": {
                'from': 'pharmacy',
                'localField': 'sale.pharmacy_id',
                'foreignField': '_id',
                'as': 'pharmacy'
            }
        },
        {
            "$unwind": "$pharmacy"
        },
        {
            '$project': {
                'pharmacy.name': 1,
                "_id": 0,
            }
        },
        {
            "$replaceRoot": {
                "newRoot": "$pharmacy"
            }
        }
    ]
).next()
# print(a5)


# In[ ]:





# In[ ]:


# نام و فرمول پنج دارویی که گران ترین قیمت برای آنها ثبت شده است
print("##6##")
a6 = list(
    client.assignment.sale.aggregate(
        [
            {
                "$group": {
                    '_id': '$drug_id',
                    'max_price': {
                        '$max': '$price'
                    }
                }
            },
            {
                '$sort': {
                    'max_price': -1
                }
            },
            {
                '$limit': 5
            },
            {
                '$lookup': {
                    'from': 'drug',
                    'localField': '_id',
                    'foreignField': '_id',
                    'as': 'drug'
                }
            },
            {
                "$unwind": "$drug"
            },
            {
                '$project': {
                    'drug.name': 1,
                    'drug.formula': 1,
                    "_id": 0,
                }
            },
            {
                "$replaceRoot": {
                    "newRoot": "$drug"
                }
            }
        ]
    )
)
# print(a6)


# In[ ]:





# In[ ]:


# نام تمام داروهایی که در تاریخ datetime.datetime(2020, 9, 23, 0, 0) تجویز شده اند
print("##7##")
a7 = list(
    client.assignment.prescription.aggregate(
        [
            {
                '$match': {
                    'date': datetime.datetime(2020, 9, 23, 0, 0)
                }
            },
            {
                '$project': {
                    '_id': 0,
                    'items.drug_id': 1
                }
            },
            {
                "$replaceRoot": {
                    "newRoot": {
                        "$mergeObjects":[
                            {
                                '_id': '$items.drug_id'
                            }
                        ]
                    }
                }
            },
            {
                "$unwind": "$_id"
            },
            {
                '$lookup': {
                    'from': 'drug',
                    'localField': '_id',
                    'foreignField': '_id',
                    'as': 'drug'
                }
            },
            {
                "$unwind": "$drug"
            },
            {
                '$replaceRoot': {
                    'newRoot': '$drug'
                }
            },
            {
                "$sort" : {
                    "company_id" : 1
                }
            },
            {
                '$project': {
                    '_id': 0,
                    'name': 1
                }
            },
        ]
    )
)
# print(a7)


# In[ ]:





# In[ ]:


# نام تمام کارخانه هایی که داروی با فرمول "C2H6Na4O12" را تولید می کنند
print("##8##")
a8 = list(
    client.assignment.drug.aggregate(
        [
            {
                '$match': {
                    'formula': 'C2H6Na4O12'
                }
            },
            {
                '$lookup': {
                    'from': 'company',
                    'localField': 'company_id',
                    'foreignField': '_id',
                    'as': 'company'
                }
            },
            {
                "$unwind": "$company"
            },
            {
                '$replaceRoot': {
                    'newRoot': '$company'
                }
            },
            {
                '$project': {
                    '_id': 0,
                    'name': 1
                }
            },
        ]
    )
)
# print(a8)


# In[ ]:





# In[ ]:


# کاربرانی که در سبد آنها ده BasketItem وجود دارد
print("##9##")
a9 = list(
    client.assignment.user.find(
        filter={
            '$where': 'this.basket.length == 10'
        },
        projection={"email": 1, "_id": 0},
    )
)
# print(a9)


# In[ ]:





# In[ ]:


print("##10##")
a10 = client.assignment.product_item.aggregate(
    [
        {
            '$match': {
                'size': 'XL'
            }
        },
        {
            '$group': {
                '_id': None,
                'sum': {
                    '$sum': '$quantity'
                }
            }
        },
        {
            '$project': {
                '_id': 0,
                'sum': 1
            }
        }
    ]
).next()
# print(a10)


# In[ ]:





# In[ ]:


# شماره ملی رانندگانی که پلاک آنها به 25 ختم می شود
print("##11##")
a11 = list(
    client.assignment.driver.find(
        filter={
            'license_plate': {
                '$regex': r'^.*25$'
            }
        },
        projection={"_id": 0, "national_id": 1},
    )
)
# print(a11)


# In[ ]:





# In[ ]:


print("##12##")
a12 = list(
    client.assignment.comment.find(
        filter={
            'text': {
                '$regex': r'(great|good)'
            }
        },
        projection={"_id": 0, "text": 1},
    )
)
# print(a12)


# In[ ]:





# In[ ]:


print("##13##")
a13 = client.assignment.comment.aggregate(
    [
        {
            '$match': {
                'rating': 5
            }
        },
        {
            '$count': 'count'
        }
    ]
).next()
# print(a13)


# In[ ]:





# In[ ]:


answers = {
    "a1": a1,
    "a2": a2,
    "a3": a3,
    "a4": a4,
    "a5": a5,
    "a6": a6,
    "a7": a7,
    "a8": a8,
    "a9": a9,
    "a10": a10,
    "a11": a11,
    "a12": a12,
    "a13": a13,
}


# In[ ]:


import json
with open("answers.json", "r") as json_file:
    target = json.load(json_file)


# In[ ]:


correct = 0
for i in range(1, 14):
    if answers["a{}".format(i)] == target["a{}".format(i)]:
        print("Query {:2d} Correct!".format(i))
        correct += 1
    else:
        print("Query {:2d} Wrong!".format(i))
print(correct)


# ## Print Result to File  

# In[ ]:


# Set your student number
student_number = 97106013
file_path = os.path.join(
    os.getenv("OUTPUT_DIR", "."), "{}.json".format(student_number)
)
with open(file_path, "w") as file:
    corrects = []
    wrongs = []
    for i in range(1, 14):
        if answers["a{}".format(i)] == target["a{}".format(i)]:
            corrects.append(i)
        else:
            wrongs.append(i)
    json.dump({"corrects": corrects, "wrongs": wrongs, "score": len(corrects)}, file)


# In[ ]:




