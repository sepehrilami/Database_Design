CREATE TABLE `Order` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Date` datetime NOT NULL,
    `ShippingType` varchar(30) NOT NULL,
    `Status` varchar(30) NOT NULL,
    `UserEmail` varchar(100) NOT NULL,
    `ShippingProgramId` int NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Order_ShippingProgram_ShippingProgramId` FOREIGN KEY (`ShippingProgramId`) REFERENCES `ShippingProgram` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_Order_Users_UserEmail` FOREIGN KEY (`UserEmail`) REFERENCES `Users` (`Email`) ON DELETE CASCADE
);

CREATE INDEX `IX_Order_ShippingProgramId` ON `Order` (`ShippingProgramId`);
CREATE INDEX `IX_Order_UserEmail` ON `Order` (`UserEmail`);

INSERT INTO `Order`(`Date`, `ShippingType`, `Status`, `UserEmail`, `ShippingProgramId`) VALUES('2020-12-17', 'Post', 'Sent', 'sepehr@ilami.com', 1);
