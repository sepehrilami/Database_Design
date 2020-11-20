CREATE TABLE `Patient` (
    `NationalCode` varchar(10) NOT NULL,
    `BirthYear` int NOT NULL,
    `Password` varchar(200) NOT NULL,
    `Name` varchar(30) NOT NULL,
    `LastName` varchar(30) NOT NULL,
    `Address` varchar(300) NOT NULL,
    `MainDoctorNationalCode` varchar(10) NOT NULL,
    PRIMARY KEY (`NationalCode`),
    CONSTRAINT `FK_Patient_Doctor_MainDoctorNationalCode` FOREIGN KEY (`MainDoctorNationalCode`) REFERENCES `Doctor` (`NationalCode`) ON DELETE CASCADE
);

CREATE INDEX `IX_Patient_MainDoctorNationalCode` ON `Patient` (`MainDoctorNationalCode`);
INSERT INTO `Patient`(`NationalCode`, `BirthYear`, `Password`, `Name`, `LastName`, `Address`, `MainDoctorNationalCode`) VALUES('783001', '1379', '123456', 'Ahmad', 'Salimi', 'Ghadir st.', '228001');
