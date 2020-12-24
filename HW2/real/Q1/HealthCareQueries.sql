-- Ahmad Salimi (97106013) 
-- Alireza Ilami (97101286)

use db_HW2_1;


-- 1

SELECT * 
FROM `drug`
WHERE (`Name`, `CompanyName`) IN (
    SELECT `DrugName` as `Name`, `CompanyName`
    FROM `drug_prescription`    
    WHERE `PatientId` = '0012345678'
);


-- 2

SELECT `FirstName`, `LastName`
FROM `patient`
WHERE `NationalID` IN (
    SELECT DISTINCT `PatientId` as `NationalID`
    FROM `drug_prescription`
    WHERE `DrugName` = 'med' AND `CompanyName` = 'comp' AND `Quantity` > 3
);


-- 3

SELECT `Id`, `Telephone`
FROM `pharmacy`
WHERE `Address` LIKE 'Tehran%' AND `Id` IN (
    SELECT `PharmacyId` as `Id`
    FROM `sale`
    WHERE `DrugName` = 'med' AND `Price` < 100
);


-- 4

SELECT COUNT(*) as `Count`
FROM `patient`
WHERE `MainDoctorId` IN (
    SELECT `NationalID` as `MainDoctorId`
    FROM `doctor`
    WHERE `FirstName` = 'doc' AND `LastName` = 'doctor'
) AND (
    SELECT SUM(`Quantity`)
    FROM `drug_prescription`
    WHERE `patient`.`MainDoctorId` = `DoctorId` AND `patient`.`NationalID` = `PatientId` AND (
        SELECT `PrescriptionDate`
        FROM `prescription`
        WHERE `drug_prescription`.`PrescriptionId` = `Id`
    ) = '1399-08-20'
) > 10;


-- 5

SELECT `Name`
FROM `company`
WHERE `company`.`Name` IN (
    SELECT `CompanyName` as `Name`
    FROM `drug`
    WHERE `drug`.`Formula` = 'CxHyOzHw'
) AND `company`.`Name` NOT IN (
    SELECT `Name`
    FROM `company`
    WHERE (
        SELECT COUNT(*)
        FROM `contract`
        WHERE `company`.`Name` = `CompanyName`
        GROUP BY `CompanyName`
    ) = (
        SELECT MAX(`ContractsCount`)
        FROM (
            SELECT DISTINCT `CompanyName`, COUNT(*) AS `ContractsCount`
            FROM `contract`
            GROUP BY `CompanyName`
        ) as `CC`
    )
);


-- 6

SELECT *
FROM `doctor`
WHERE `NationalID` IN (
    SELECT `DoctorId` AS `NationalID`
    FROM (
        SELECT `DoctorId`, COUNT(*) AS `PCount`
        FROM `prescription`
        WHERE `PatientId` = '0012345678'
        GROUP BY `DoctorId`
    ) AS `PCounts`
    WHERE `PCounts`.`PCount` > 2
);