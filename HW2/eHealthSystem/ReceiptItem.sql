-- Depends on Medicine and Receipt

CREATE TABLE `ReceiptItem` (
    `MedicineCommercialName` varchar(30) NOT NULL,
    `Count` int NOT NULL DEFAULT 1,
    `ReceiptId` int NOT NULL,
    PRIMARY KEY (`MedicineCommercialName`, `ReceiptId`),
    CONSTRAINT `FK_ReceiptItem_Medicine_MedicineCommercialName` FOREIGN KEY (`MedicineCommercialName`) REFERENCES `Medicine` (`CommercialName`) ON DELETE CASCADE,
    CONSTRAINT `FK_ReceiptItem_Receipt_ReceiptId` FOREIGN KEY (`ReceiptId`) REFERENCES `Receipt` (`Id`) ON DELETE CASCADE
);

CREATE INDEX `IX_ReceiptItem_MedicineCommercialName` ON `ReceiptItem` (`MedicineCommercialName`);
CREATE INDEX `IX_ReceiptItem_ReceiptId` ON `ReceiptItem` (`ReceiptId`);

INSERT INTO `ReceiptItem`(`MedicineCommercialName`, `Count`, `ReceiptId`) VALUES('AdultCold', 30, 1);
