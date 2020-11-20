CREATE TABLE `Cart` (
    `UserEmail` varchar(100) NOT NULL,
    PRIMARY KEY (`UserEmail`),
    CONSTRAINT `FK_Cart_Users_UserEmail` FOREIGN KEY (`UserEmail`) REFERENCES `Users` (`Email`) ON DELETE CASCADE
);

INSERT INTO `Cart`(`UserEmail`) VALUES('sepehr@ilami.com');