-- Depends on PharmaceuticalCompany

CREATE TABLE `Medicine` (
    `CommercialName` varchar(30) NOT NULL,
    `Formula` varchar(40) NOT NULL,
    `CompanyName` varchar(30) NOT NULL,
    PRIMARY KEY (`CommercialName`),
    CONSTRAINT `FK_Medicine_PharmaceuticalCompany_CompanyName` FOREIGN KEY (`CompanyName`) REFERENCES `PharmaceuticalCompany` (`Name`) ON DELETE CASCADE
);

CREATE INDEX `IX_Medicine_CompanyName` ON `Medicine` (`CompanyName`);

INSERT INTO `Medicine`(`CommercialName`, `Formula`, `CompanyName`) VALUES('AdultCold', 'CH3COOH', 'Company1');
