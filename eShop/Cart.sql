-- Depends on User

CREATE TABLE `Cart` (
    `UserEmail` varchar(100) NOT NULL,
    PRIMARY KEY (`UserEmail`),
    CONSTRAINT `FK_Cart_User_UserEmail` FOREIGN KEY (`UserEmail`) REFERENCES `User` (`Email`) ON DELETE CASCADE
);

INSERT INTO `Cart`(`UserEmail`) VALUES('sepehr@ilami.com');