-- No Dependency

CREATE TABLE `Pharmacy` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Name` varchar(30) NOT NULL,
    `Address` varchar(200) NOT NULL,
    `Phone` varchar(15) NOT NULL,
    PRIMARY KEY (`Id`)
);

INSERT INTO `Pharmacy`(`Name`, `Address`, `Phone`) VALUES('Pharmacy1', '22 Jump Street', '0218585');
