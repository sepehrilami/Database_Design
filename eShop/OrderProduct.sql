-- Depends on Order and ProductAvailability

CREATE TABLE `OrderProduct` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `OrderId` int NOT NULL,
    `ProductAvailabilityId` int NOT NULL,
    `Count` int NOT NULL DEFAULT 1,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_OrderProduct_Order_OrderId` FOREIGN KEY (`OrderId`) REFERENCES `Order` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_OrderProduct_ProductAvailability_ProductAvailabilityId` FOREIGN KEY (`ProductAvailabilityId`) REFERENCES `ProductAvailability` (`Id`) ON DELETE CASCADE
);

CREATE INDEX `IX_OrderProduct_OrderId` ON `OrderProduct` (`OrderId`);
CREATE INDEX `IX_OrderProduct_ProductAvailabilityId` ON `OrderProduct` (`ProductAvailabilityId`);

INSERT INTO `OrderProduct`(`OrderId`, `ProductAvailabilityId`, `Count`) VALUES(1, 1, 5);
