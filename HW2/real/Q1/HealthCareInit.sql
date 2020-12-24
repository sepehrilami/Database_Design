use db_HW2_1;

INSERT INTO `doctor`(`NationalID`, `FirstName`, `LastName`, `Profession`, `Background`)
VALUES('9876543210', 'doc', 'doctor', 'profess', 10);

INSERT INTO `patient`(`NationalID`, `FirstName`, `LastName`, `BirthYear`, `Password`, `MainDoctorId`)
VALUES('0012345678', 'FN', 'LN', 1999, '123456', '9876543210');

INSERT INTO `prescription`(`Id`, `PrescriptionDate`, `DoctorId`, `PatientId`)
VALUES('1', '1399-08-20', '9876543210', '0012345678');

INSERT INTO `company`(`Name`, `Telephone`)
VALUES('comp', '02136547');

INSERT INTO `drug`(`Name`, `Formula`, `CompanyName`)
VALUES('med', 'CxHyOzHw', 'comp');

INSERT INTO `drug`(`Name`, `Formula`, `CompanyName`)
VALUES('med2', 'CxHyOzHw', 'comp');

INSERT INTO `drug_prescription`(`PrescriptionId`, `DoctorId`, `PatientId`, `DrugName`, `CompanyName`, `Quantity`)
VALUES('1', '9876543210', '0012345678', 'med', 'comp', 10);

INSERT INTO `drug_prescription`(`PrescriptionId`, `DoctorId`, `PatientId`, `DrugName`, `CompanyName`, `Quantity`)
VALUES('1', '9876543210', '0012345678', 'med2', 'comp', 10);

INSERT INTO `pharmacy`(`Id`, `Name`, `Address`, `Telephone`)
VALUES('1', 'pharmacy1', 'Tehran, Folan, Bisar', '0218465');

INSERT INTO `sale`(`Price`, `DrugName`, `CompanyName`, `PharmacyId`)
VALUES('90', 'med', 'comp', '1');

INSERT INTO `contract`(`Id`, `Text`, `StartDate`, `EndDate`, `CompanyName`, `PharmacyId`)
VALUES('1', 'The Text', '1390-10-10', '1395-10-10', 'comp', '1');

INSERT INTO `company`(`Name`, `Telephone`)
VALUES('comp2', '021365478');

INSERT INTO `contract`(`Id`, `Text`, `StartDate`, `EndDate`, `CompanyName`, `PharmacyId`)
VALUES('2', 'The Text', '1390-10-10', '1395-10-10', 'comp2', '1');

INSERT INTO `pharmacy`(`Id`, `Name`, `Address`, `Telephone`)
VALUES('2', 'pharmacy2', 'Tehran, Folan, Bisar', '0218465');

INSERT INTO `contract`(`Id`, `Text`, `StartDate`, `EndDate`, `CompanyName`, `PharmacyId`)
VALUES('3', 'The Text', '1390-10-10', '1395-10-10', 'comp2', '2');

INSERT INTO `contract`(`Id`, `Text`, `StartDate`, `EndDate`, `CompanyName`, `PharmacyId`)
VALUES('4', 'The Text', '1390-10-10', '1395-10-10', 'comp', '2');

INSERT INTO `pharmacy`(`Id`, `Name`, `Address`, `Telephone`)
VALUES('3', 'pharmacy3', 'Tehran, Folan, Bisar', '0218453');

INSERT INTO `contract`(`Id`, `Text`, `StartDate`, `EndDate`, `CompanyName`, `PharmacyId`)
VALUES('5', 'The Text', '1390-10-10', '1395-10-10', 'comp2', '3');

INSERT INTO `prescription`(`Id`, `PrescriptionDate`, `DoctorId`, `PatientId`)
VALUES('2', '1399-08-25', '9876543210', '0012345678');