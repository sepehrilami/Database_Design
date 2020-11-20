-- No Dependency

CREATE TABLE `Product` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Name` varchar(30) NOT NULL,
    `Seller` varchar(30) NOT NULL,
    `Category` varchar(30) NOT NULL,
    `Price` int NOT NULL DEFAULT 10000,
    PRIMARY KEY (`Id`)
);

INSERT INTO `Product`(`Name`, `Seller`, `Category`, `Price`) VALUES('Good T-Shirt', 'Jeanswest', 'T-Shirt', 150000);
