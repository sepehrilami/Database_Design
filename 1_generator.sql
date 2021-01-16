INSERT INTO db_HW2_1.company (Name, Telephone) VALUES ('comp', '0211234567');
INSERT INTO db_HW2_1.company (Name, Telephone) VALUES ('daro1', '0123456466');
INSERT INTO db_HW2_1.company (Name, Telephone) VALUES ('daro2', '0315467899');
INSERT INTO db_HW2_1.company (Name, Telephone) VALUES ('daro3', '0232341564');
INSERT INTO db_HW2_1.company (Name, Telephone) VALUES ('daro4', '1231546489');
INSERT INTO db_HW2_1.company (Name, Telephone) VALUES ('Pfizer ', '1304616161');


INSERT INTO db_HW2_1.doctor (NationalID, FirstName, LastName, Profession, Background) VALUES ('0000000000', 'doc', 'doctor', 'Cardiologist', 10);
INSERT INTO db_HW2_1.doctor (NationalID, FirstName, LastName, Profession, Background) VALUES ('0000000001', 'Doc', 'Doctor2', 'Cardiologist', 10);
INSERT INTO db_HW2_1.doctor (NationalID, FirstName, LastName, Profession, Background) VALUES ('0000000002', 'Doc', 'Doctor3', 'Cardiologist', 10);
INSERT INTO db_HW2_1.doctor (NationalID, FirstName, LastName, Profession, Background) VALUES ('0000000003', 'Mohammad', 'Abbasi', 'Cardiologist', 10);
INSERT INTO db_HW2_1.doctor (NationalID, FirstName, LastName, Profession, Background) VALUES ('0000000004', 'Karim', 'Karimi', 'Cardiologist', 10);
INSERT INTO db_HW2_1.doctor (NationalID, FirstName, LastName, Profession, Background) VALUES ('1234567890', 'Ali', 'Alavi', 'Paediatrics', 10);


INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0000000001', 'Mike', 'Michela', 'Tehran', 1999, '123', '0000000000');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0000000002', 'Bill', 'Gates', 'Tehran', 1999, '123', '0000000000');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0000000003', 'Steve', 'Jobs', 'Tehran', 1999, '123', '0000000000');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0000000004', 'Larry', 'Page', 'Tehran', 1999, '123', '0000000000');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0000000005', 'Tim', 'Cook', 'Tehran', 1999, '123', '0000000000');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0000000006', 'Sundar', 'Pichai', 'Tehran', 1999, '123', '0000000000');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0012345677', 'Joseph', 'Adams', 'Tehran', 1999, '123', '1234567890');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0012345678', 'John', 'Smith', 'Tehran', 1999, '123', '1234567890');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('0012345679', 'Alex', 'Smith', 'Tehran', 1999, '123', '1234567890');
INSERT INTO db_HW2_1.patient (NationalID, FirstName, LastName, Address, BirthYear, Password, MainDoctorId) VALUES ('2134567890', 'Mahdi', 'Mahdavi', 'Tehran', 1999, '123', '1234567890');


INSERT INTO db_HW2_1.pharmacy (Id, Name, Address, Telephone) VALUES ('1', 'DrugStore', 'Tehran SUT', '0211234567');
INSERT INTO db_HW2_1.pharmacy (Id, Name, Address, Telephone) VALUES ('2', 'DrugStore2', 'Tehran AUT', '0212345649');
INSERT INTO db_HW2_1.pharmacy (Id, Name, Address, Telephone) VALUES ('3', 'DrugStore3', 'Mashhad FU', '0513234657');
INSERT INTO db_HW2_1.pharmacy (Id, Name, Address, Telephone) VALUES ('4', 'DrugStore4', 'Isfahan IUT', '0368978979');
INSERT INTO db_HW2_1.pharmacy (Id, Name, Address, Telephone) VALUES ('5', 'DrugStore5', 'Tehran UT', '0213456489');
INSERT INTO db_HW2_1.pharmacy (Id, Name, Address, Telephone) VALUES ('6', 'DrugStore6', 'Tehran Yadegar', '0217898978');

INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('acetaminophen', 'C8H9NO2', 'Pfizer');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Aspirin', 'C9H8O4', 'Pfizer');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Covid 19 Vaccine', 'Hg', 'Pfizer');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('med', 'H2O', 'comp');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Penicillin1', 'CxHyOzHw', 'comp');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Penicillin1', 'CxHyOzHw', 'daro2');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Penicillin2', 'CxHyOzHw', 'daro1');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Penicillin3', 'CxHyOzHw', 'daro2');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Penicillin4', 'CxHyOzHw', 'daro3');
INSERT INTO db_HW2_1.drug (Name, Formula, CompanyName) VALUES ('Penicillin5', 'CxHyOzHw', 'daro4');



INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('1', '2020-11-18', '1234567890', '0012345677');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('100', '2020-10-01', '0000000000', '0000000001');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('101', '2020-10-02', '0000000000', '0000000002');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('102', '2020-10-01', '0000000000', '0000000003');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('103', '2020-10-01', '0000000000', '0000000004');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('2', '2020-11-18', '1234567890', '0012345679');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('200', '2020-12-12', '0000000001', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('201', '2020-12-12', '0000000001', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('202', '2020-12-12', '0000000001', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('203', '2020-12-12', '0000000002', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('204', '2020-12-12', '0000000002', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('205', '2020-12-12', '0000000003', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('206', '2020-12-12', '0000000003', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('207', '2020-12-12', '0000000003', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('208', '2020-12-12', '0000000004', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('209', '2020-12-12', '0000000000', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('210', '2020-12-12', '0000000000', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('3', '2020-11-18', '1234567890', '0012345679');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('45', '2020-11-18', '1234567890', '2134567890');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('46', '2020-11-18', '1234567890', '0012345678');
INSERT INTO db_HW2_1.prescription (Id, PrescriptionDate, DoctorId, PatientId) VALUES ('47', '2020-11-18', '1234567890', '0012345678');

INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('1', '1234567890', '0012345677', 'med', 'comp', 1);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('100', '0000000000', '0000000001', 'med', 'comp', 5);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('100', '0000000000', '0000000001', 'Penicillin1', 'comp', 6);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('101', '0000000000', '0000000002', 'med', 'comp', 11111);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('102', '0000000000', '0000000003', 'med', 'comp', 100);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('103', '0000000000', '0000000004', 'med', 'comp', 1);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('103', '0000000000', '0000000004', 'Penicillin1', 'comp', 6);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('2', '1234567890', '0012345679', 'med', 'comp', 4);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('3', '1234567890', '0012345679', 'med', 'comp', 100);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('45', '1234567890', '2134567890', 'Covid 19 Vaccine', 'Pfizer', 1000);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('45', '1234567890', '2134567890', 'med', 'comp', 5);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('46', '1234567890', '0012345678', 'Penicillin1', 'comp', 1200);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('46', '1234567890', '0012345678', 'Penicillin3', 'daro2', 1200);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('47', '1234567890', '0012345678', 'Penicillin1', 'comp', 1200);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('47', '1234567890', '0012345678', 'Penicillin1', 'daro2', 1);
INSERT INTO db_HW2_1.drug_prescription (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName, Quantity) VALUES ('47', '1234567890', '0012345678', 'Penicillin2', 'daro1', 1200);



INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('1', 'TEST', '2020-11-01', '2024-11-30', 'daro1', '1');
INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('10', 'TEST2', '2020-11-01', '2024-11-30', 'Pfizer', '1');
INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('123', 'For Covid 19 Vaccine', '2020-11-01', '2024-11-30', 'daro1', '1');
INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('2', 'TEST2', '2020-11-01', '2024-11-30', 'daro1', '2');
INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('3', 'TEST2', '2020-11-01', '2024-11-30', 'daro1', '3');
INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('7', 'TEST2', '2020-11-01', '2024-11-30', 'daro2', '1');
INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('8', 'TEST2', '2020-11-01', '2024-11-30', 'daro3', '1');
INSERT INTO db_HW2_1.contract (Id, Text, StartDate, EndDate, CompanyName, PharmacyId) VALUES ('9', 'TEST2', '2020-11-01', '2024-11-30', 'daro4', '1');


INSERT INTO db_HW2_1.sale (Price, DrugName, CompanyName, PharmacyId) VALUES (100, 'Covid 19 Vaccine', 'Pfizer', '1');
INSERT INTO db_HW2_1.sale (Price, DrugName, CompanyName, PharmacyId) VALUES (90, 'med', 'comp', '1');
INSERT INTO db_HW2_1.sale (Price, DrugName, CompanyName, PharmacyId) VALUES (110, 'med', 'comp', '2');
INSERT INTO db_HW2_1.sale (Price, DrugName, CompanyName, PharmacyId) VALUES (90, 'med', 'comp', '3');
INSERT INTO db_HW2_1.sale (Price, DrugName, CompanyName, PharmacyId) VALUES (85, 'med', 'comp', '4');
INSERT INTO db_HW2_1.sale (Price, DrugName, CompanyName, PharmacyId) VALUES (85, 'med', 'comp', '5');


