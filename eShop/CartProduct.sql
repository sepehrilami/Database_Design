-- Depends on ProductAvailability and Cart

CREATE TABLE `CartProduct` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Count` int NOT NULL DEFAULT 1,
    `ProductAvailabilityId` int NOT NULL,
    `CartUserEmail` varchar(100) NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_CartProduct_Cart_CartUserEmail` FOREIGN KEY (`CartUserEmail`) REFERENCES `Cart` (`UserEmail`) ON DELETE CASCADE,
    CONSTRAINT `FK_CartProduct_ProductAvailability_ProductAvailabilityId` FOREIGN KEY (`ProductAvailabilityId`) REFERENCES `ProductAvailability` (`Id`) ON DELETE CASCADE
);

CREATE INDEX `IX_CartProduct_CartUserEmail` ON `CartProduct` (`CartUserEmail`);
CREATE INDEX `IX_CartProduct_ProductAvailabilityId` ON `CartProduct` (`ProductAvailabilityId`);

INSERT INTO `CartProduct`(`Count`, `ProductAvailabilityId`, `CartUserEmail`) VALUES(5, 1, 'sepehr@ilami.com');
