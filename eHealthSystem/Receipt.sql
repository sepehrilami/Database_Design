CREATE TABLE `Receipt` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `PatientNationalCode` varchar(10) NOT NULL,
    `DoctorNationalCode` varchar(10) NOT NULL,
    `Date` datetime NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Receipt_Doctor_DoctorNationalCode` FOREIGN KEY (`DoctorNationalCode`) REFERENCES `Doctor` (`NationalCode`) ON DELETE CASCADE,
    CONSTRAINT `FK_Receipt_Patient_PatientNationalCode` FOREIGN KEY (`PatientNationalCode`) REFERENCES `Patient` (`NationalCode`) ON DELETE CASCADE
);

CREATE INDEX `IX_Receipt_DoctorNationalCode` ON `Receipt` (`DoctorNationalCode`);
CREATE INDEX `IX_Receipt_PatientNationalCode` ON `Receipt` (`PatientNationalCode`);
