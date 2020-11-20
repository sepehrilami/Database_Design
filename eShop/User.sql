-- No Dependency

CREATE TABLE `User` (
    `Email` varchar(100) NOT NULL,
    `Name` varchar(30) NOT NULL,
    `LastName` varchar(30) NOT NULL,
    `City` varchar(30) NOT NULL,
    `Address` varchar(300) NOT NULL,
    `Phone` varchar(15) NOT NULL,
    `Password` varchar(200) NOT NULL,
    PRIMARY KEY (`Email`)
);

INSERT INTO `User`(`Email`, `Name`, `LastName`, `City`, `Address`, `Phone`, `Password`) VALUES('sepehr@ilami.com', 'Sepehr', 'Ilami', 'Shiraz', 'Mali Abad St.' '09123456789', '123456q1');
