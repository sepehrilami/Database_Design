-- No Dependency

CREATE TABLE `PharmaceuticalCompany` (
    `Name` varchar(30) NOT NULL,
    `Phone` varchar(15) NOT NULL,
    PRIMARY KEY (`Name`)
);

INSERT INTO `PharmaceuticalCompany`(`Name`, `Phone`) VALUES('Company1', '0216616');
