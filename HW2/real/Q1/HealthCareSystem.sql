

/* credit to Amir Mehdi Namjoo & Syd Mohammad Sadegh Keshavarzi */

create database db_HW2_1;

use db_HW2_1;

CREATE TABLE `doctor`
(
    `NationalID` char(10) primary key not null,
    `FirstName`  varchar(32)          not null,
    `LastName`   varchar(32)          not null,
    `Profession` varchar(32)          not null,
    `Background` int(2)               not null
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `patient`
(
    `NationalID`   char(10) primary key,
    `FirstName`    varchar(32)  not null,
    `LastName`     varchar(32)  not null,
    `Address`      varchar(256),
    `BirthYear`    YEAR         not null,
    `Password`     VARCHAR(256) not null,
    `MainDoctorId` char(10)     not null,
    foreign key (MainDoctorId) references doctor (NationalID) ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `pharmacy`
(
    `Id`        char(10) primary key not null,
    `Name`      varchar(32)          not null,
    `Address`   varchar(256),
    `Telephone` char(10)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `company`
(

    `Name`      varchar(32) primary key not null,
    `Telephone` char(10)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `contract`
(
    `Id`          char(10) primary key not null,
    `Text`        varchar(1024),
    `StartDate`   DATE                 not null,
    `EndDate`     DATE                 not null,
    `CompanyName` varchar(32)          not null,
    `PharmacyId`  char(10)             not null,
    FOREIGN KEY (CompanyName) references company (Name) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (PharmacyId) references pharmacy (Id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `drug`
(
    `Name`        varchar(100) not null,
    `Formula`     varchar(100) not null,
    `CompanyName` varchar(32)  not null,
    primary key (Name, CompanyName),
    FOREIGN KEY (CompanyName) references company (Name) ON UPDATE CASCADE ON DELETE CASCADE

) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `sale`
(
    `Price`       INT          NOT NULL,
    `DrugName`    varchar(100) NOT NULL,
    `CompanyName` varchar(32)  NOT NULL,
    `PharmacyId`  char(10)     NOT NULL,
    primary key (DrugName, CompanyName, PharmacyId),
    FOREIGN KEY (DrugName, CompanyName) references drug (Name, CompanyName) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (PharmacyId) references pharmacy (Id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;


CREATE TABLE `prescription`
(
    `Id`               char(10) not null,
    `PrescriptionDate` DATE     not null,
    `DoctorId`         char(10) not null,
    `PatientId`        char(10) not null,
    PRIMARY KEY (Id, DoctorId, PatientId),
    FOREIGN KEY (DoctorId) references doctor (NationalID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (PatientId) references patient (NationalID) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

CREATE TABLE `drug_prescription`
(
    `PrescriptionId` char(10)     not null,
    `DoctorId`       char(10)     not null,
    `PatientId`      char(10)     not null,
    `DrugName`       varchar(100) not null,
    `CompanyName`    varchar(32)  not null,
    `Quantity`       int          not null,
    primary key (PrescriptionId, DoctorId, PatientId, DrugName, CompanyName),
    FOREIGN KEY (PrescriptionId, DoctorId, PatientId) references prescription (Id, DoctorId, PatientId) On UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (DrugName, CompanyName) references drug (Name, CompanyName) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;
