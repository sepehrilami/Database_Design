-- Depends on Product

CREATE TABLE `ProductAvailability` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Color` varchar(30) NOT NULL,
    `Size` varchar(30) NOT NULL,
    `AvailableCount` int NOT NULL DEFAULT 0,
    `ProductId` int NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_ProductAvailability_Product_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `Product` (`Id`) ON DELETE CASCADE
);

CREATE INDEX `IX_ProductAvailability_ProductId` ON `ProductAvailability` (`ProductId`);

INSERT INTO `ProductAvailability`(`Color`, `Size`, `AvailableCount`, `ProductId`) VALUES('Red', 'XL', 50, 1);
