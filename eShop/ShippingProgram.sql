CREATE TABLE `ShippingProgram` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Date` datetime NOT NULL,
    `Capacity` int NOT NULL DEFAULT 1,
    `DriverNationalCode` varchar(10) NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_ShippingProgram_Driver_DriverNationalCode` FOREIGN KEY (`DriverNationalCode`) REFERENCES `Driver` (`NationalCode`) ON DELETE CASCADE
);

CREATE INDEX `IX_ShippingProgram_DriverNationalCode` ON `ShippingProgram` (`DriverNationalCode`);

INSERT INTO `ShippingProgram`(`Date`, `Capacity`, `DriverNationalCode`) VALUES('2020-12-20', 150, '1562365482');
