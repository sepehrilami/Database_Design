CREATE TABLE `Driver` (
    `NationalCode` varchar(10) NOT NULL,
    `Name` varchar(30) NOT NULL,
    `LastName` varchar(30) NOT NULL,
    `Phone` varchar(15) NOT NULL,
    `PlateNumber` varchar(30) NOT NULL,
    PRIMARY KEY (`NationalCode`)
);

INSERT INTO `Driver`(`NationalCode`, `Name`, `LastName`, `Phone`, `PlateNumber`) VALUES('1562365482', 'Ali', 'Ranandeh', '09123456789', 'THE CAPN');
