-- Depends on PharmaceuticalCompany and Pharmacy

CREATE TABLE `Contract` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `StartDate` datetime NOT NULL,
    `EndDate` datetime NOT NULL,
    `Content` varchar(3000) NOT NULL,
    `PharmacyId` int NOT NULL,
    `CompanyName` varchar(30) NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Contract_PharmaceuticalCompany_CompanyName` FOREIGN KEY (`CompanyName`) REFERENCES `PharmaceuticalCompany` (`Name`) ON DELETE CASCADE,
    CONSTRAINT `FK_Contract_Pharmacy_PharmacyId` FOREIGN KEY (`PharmacyId`) REFERENCES `Pharmacy` (`Id`) ON DELETE CASCADE
);

CREATE INDEX `IX_Contract_CompanyName` ON `Contract` (`CompanyName`);
CREATE INDEX `IX_Contract_PharmacyId` ON `Contract` (`PharmacyId`);

INSERT INTO `Contract`(`StartDate`, `EndDate`, `Content`, `PharmacyId`, `CompanyName`) VALUES('1/1/1', '2/2/2', '6 months for 10000$', '1', 'Company1');
