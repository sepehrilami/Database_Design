-- 2 a

CREATE VIEW prescription_details AS
SELECT prescription.*, drug_prescription.DrugName, drug_prescription.Quantity
FROM prescription
JOIN drug_prescription ON prescription.Id = drug_prescription.PrescriptionId;

-- 2 b

CREATE VIEW medicine_records AS
SELECT PatientId, DrugName, SUM(Quantity) as Quantity
FROM drug_prescription
GROUP BY PatientId, DrugName;

-- 2 c

CREATE VIEW prices AS
SELECT DrugName, PharmacyId, Price
FROM sale;
