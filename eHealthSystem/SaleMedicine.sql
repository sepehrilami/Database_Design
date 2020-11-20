CREATE TABLE `SaleMedicine` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `MedicineCommercialName` varchar(30) NOT NULL,
    `PharmacyId` int NOT NULL,
    `Price` int NOT NULL DEFAULT 10000,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_SaleMedicine_Medicine_MedicineCommercialName` FOREIGN KEY (`MedicineCommercialName`) REFERENCES `Medicine` (`CommercialName`) ON DELETE CASCADE,
    CONSTRAINT `FK_SaleMedicine_Pharmacy_PharmacyId` FOREIGN KEY (`PharmacyId`) REFERENCES `Pharmacy` (`Id`) ON DELETE CASCADE
);

CREATE INDEX `IX_SaleMedicine_MedicineCommercialName` ON `SaleMedicine` (`MedicineCommercialName`);
CREATE INDEX `IX_SaleMedicine_PharmacyId` ON `SaleMedicine` (`PharmacyId`);
INSERT INTO `SaleMedicine`(`MedicineCommercialName`, `PharmacyId`, `Price`) VALUES('AdultCold', '1', '15000');
