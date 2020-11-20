-- No Dependency

CREATE TABLE `Doctor` (
    `NationalCode` varchar(10) NOT NULL,
    `Speciality` varchar(20) NOT NULL,
    `Experience` int NOT NULL DEFAULT 0,
    `Name` varchar(30) NOT NULL,
    `LastName` varchar(30) NOT NULL,
    PRIMARY KEY (`NationalCode`)
);

INSERT INTO `Doctor`(`NationalCode`, `Speciality`, `Experience`, `Name`, `LastName`) VALUES('228001', 'Orology', 10, 'Uncle', 'Johnny');
