CREATE TABLE `Comment` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Content` varchar(3000) NOT NULL,
    `Score` int NOT NULL DEFAULT 1,
    `UserEmail` varchar(100) NOT NULL,
    `ProductId` int NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Comment_Product_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `Product` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_Comment_Users_UserEmail` FOREIGN KEY (`UserEmail`) REFERENCES `Users` (`Email`) ON DELETE CASCADE
);

CREATE INDEX `IX_Comment_ProductId` ON `Comment` (`ProductId`);
CREATE INDEX `IX_Comment_UserEmail` ON `Comment` (`UserEmail`);

INSERT INTO `Comment`(`Content`, `Score`, `UserEmail`, `ProductId`) VALUES('Very Good!', 5, 'sepehr@ilami.com', 1);
