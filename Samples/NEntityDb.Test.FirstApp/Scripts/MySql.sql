CREATE TABLE `sys`.`Customers` (
	`CUS_Id` int(11) NOT NULL AUTO_INCREMENT,
	`CUS_FirstName` varchar(50) NOT NULL,
	`CUS_LastName` varchar(50) NOT NULL,
	`CUS_Email` varchar(50) NOT NULL,
	`CUS_CreationDate` datetime NOT NULL,
	PRIMARY KEY (`CUS_Id`)
);

CREATE TABLE `sys`.`Countries` (
	`COU_Id` int(11) NOT NULL AUTO_INCREMENT,
	`COU_Name` varchar(50) NOT NULL,
	PRIMARY KEY (`COU_Id`),
    UNIQUE KEY `idx_Countries_Name` (`COU_Name`)
);

CREATE TABLE `sys`.`Addresses` ( 
	`ADR_Id` int(11) NOT NULL AUTO_INCREMENT,
	`ADR_Street` varchar(50) NOT NULL,
	`ADR_PostalCode` varchar(50) NULL,
	`ADR_City` varchar(50) NOT NULL,
	`ADR_IsMain` tinyint(1) NOT NULL,
	`COU_Id` int(11) NOT NULL,
	`CUS_Id` int(11) NOT NULL,
    PRIMARY KEY (`ADR_Id`),
    CONSTRAINT `FK_Addresses_Countries` FOREIGN KEY (`COU_Id`) REFERENCES `sys`.`Countries` (`COU_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_Addresses_Customers` FOREIGN KEY (`CUS_Id`) REFERENCES `sys`.`Customers` (`CUS_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
