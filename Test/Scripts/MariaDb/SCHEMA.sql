DROP TABLE IF EXISTS `testdb`.`Employees`;
DROP TABLE IF EXISTS `testdb`.`Departments`;
DROP TABLE IF EXISTS `testdb`.`Companies`;

DROP TABLE IF EXISTS `testdb`.`Addresses`;
DROP TABLE IF EXISTS `testdb`.`Countries`;
DROP TABLE IF EXISTS `testdb`.`InvoiceLines`;
DROP TABLE IF EXISTS `testdb`.`Invoices`;
DROP TABLE IF EXISTS `testdb`.`Customers`;
DROP TABLE IF EXISTS `testdb`.`Suppliers`;
DROP TABLE IF EXISTS `testdb`.`Users`;

DROP TABLE IF EXISTS `testdb`.`EllipsesKit`;
DROP TABLE IF EXISTS `testdb`.`Polygons`;
DROP TABLE IF EXISTS `testdb`.`Ellipses`;
DROP TABLE IF EXISTS `testdb`.`Circles`;
DROP TABLE IF EXISTS `testdb`.`Curved`;
DROP TABLE IF EXISTS `testdb`.`Shapes`;
DROP TABLE IF EXISTS `testdb`.`ShapesTPH`;
DROP TABLE IF EXISTS `testdb`.`ShapeOptions`;

DROP TABLE IF EXISTS `testdb`.`BlackList`;

DROP FUNCTION IF EXISTS `testdb`.`df_GetAge`;
DROP PROCEDURE IF EXISTS `testdb`.`sp_AddSupplier`;
DROP PROCEDURE IF EXISTS `testdb`.`sp_GetInvoices`;
DROP PROCEDURE IF EXISTS `testdb`.`sp_GetCountAddresses`;
DROP PROCEDURE IF EXISTS `testdb`.`sp_GetInvoice`;
DROP PROCEDURE IF EXISTS `testdb`.`sp_GetCountAddress`;
DROP PROCEDURE IF EXISTS `testdb`.`sp_GetInvoicesAmount`;


CREATE TABLE `testdb`.`Customers` (
	`CUS_Id` int(11) NOT NULL AUTO_INCREMENT,
	`CUS_FirstName` varchar(50) NOT NULL,
	`CUS_LastName` varchar(50) NOT NULL,
	`CUS_Email` varchar(50) NOT NULL,
	`CUS_TaxCode` varchar(50) NOT NULL,
	`CUS_IsActive` tinyint(1) NOT NULL,
	`CUS_BirthDate` date NOT NULL,
	`CUS_DeathDate` date NULL,
	`CUS_Points` int(11) NOT NULL,
	`CUS_CreationDate` datetime NOT NULL,
	PRIMARY KEY (`CUS_Id`)
);

CREATE TABLE `testdb`.`Countries` (
	`COU_Id` int(11) NOT NULL AUTO_INCREMENT,
	`COU_Name` varchar(50) NOT NULL,
	PRIMARY KEY (`COU_Id`),
    UNIQUE KEY `idx_Countries_Name` (`COU_Name`)
);

CREATE TABLE `testdb`.`Addresses` ( 
	`ADR_Id` int(11) NOT NULL AUTO_INCREMENT,
	`ADR_Street` varchar(50) NOT NULL,
	`ADR_PostalCode` varchar(50) NULL,
	`ADR_City` varchar(50) NOT NULL,
	`ADR_IsMain` tinyint(1) NOT NULL,
	`COU_Id` int(11) NOT NULL,
	`CUS_Id` int(11) NOT NULL,
    PRIMARY KEY (`ADR_Id`),
    CONSTRAINT `FK_Addresses_Countries` FOREIGN KEY (`COU_Id`) REFERENCES `testdb`.`Countries` (`COU_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_Addresses_Customers` FOREIGN KEY (`CUS_Id`) REFERENCES `testdb`.`Customers` (`CUS_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`Invoices` (
	`INV_Id` int(11) NOT NULL AUTO_INCREMENT,
	`INV_Number` varchar(50) NOT NULL,
	`INV_Date` date NOT NULL,
	`INV_IsPaid` tinyint(1) NOT NULL,
	`CUS_Id` int(11) NOT NULL,
    PRIMARY KEY (`INV_Id`),
	CONSTRAINT `FK_Invoices_Customers` FOREIGN KEY (`CUS_Id`) REFERENCES `testdb`.`Customers` (`CUS_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`InvoiceLines`(
	`ILI_Id` int NOT NULL AUTO_INCREMENT,
	`ILI_Concept` varchar(50) NOT NULL,
	`ILI_Amount` decimal(15,2) NOT NULL,
	`INV_Id` int(11) NOT NULL,
	PRIMARY KEY (`ILI_Id`),
	CONSTRAINT `FK_InvoiceLines_Invoices` FOREIGN KEY (`INV_Id`) REFERENCES `testdb`.`Invoices` (`INV_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`Users`(
	`USR_Id` int(11) NOT NULL AUTO_INCREMENT,
	`USR_FullName` varchar(50) NOT NULL,
	`USR_Username` varchar(50) NOT NULL,
	`USR_Settings` text NULL,
	`USR_IsActive` char(1) NOT NULL,
    PRIMARY KEY (`USR_Id`)
);

CREATE TABLE `testdb`.`Suppliers`(
	`SUP_Id` int(11) NOT NULL AUTO_INCREMENT,
	`SUP_Name` varchar(50) NOT NULL,
	`SUP_Email` varchar(50) NOT NULL,
	`SUP_TaxCode` varchar(50) NOT NULL,
	PRIMARY KEY (`SUP_Id`)
);

CREATE TABLE `testdb`.`ShapeOptions`(
	`SHO_Id` int(11) NOT NULL AUTO_INCREMENT,
	`SHO_BackgroundColor` varchar(50) NOT NULL,
	`SHO_OutlineColor` varchar(50) NOT NULL,
	PRIMARY KEY (`SHO_Id`)
);

CREATE TABLE `testdb`.`Shapes`(
	`SHA_Id` int(11) NOT NULL AUTO_INCREMENT,
	`SHA_Name` varchar(50) NOT NULL,
	`SHO_Id` int(11) NOT NULL,
	PRIMARY KEY (`SHA_Id`),
	CONSTRAINT `FK_Shapes_ShapesOptions` FOREIGN KEY (`SHO_Id`) REFERENCES `testdb`.`ShapeOptions` (`SHO_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`Polygons`(
	`POL_Id` int(11) NOT NULL,
	`POL_Angle` decimal NOT NULL,
	`POL_Length` decimal NOT NULL,
    PRIMARY KEY (`POL_Id`),
	CONSTRAINT `FK_Polygons_Shapes` FOREIGN KEY (`POL_Id`) REFERENCES `testdb`.`Shapes` (`SHA_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`Curved`(
	`CUR_Id` int(11) NOT NULL,
	`CUR_Radius` decimal NOT NULL,
    PRIMARY KEY (`CUR_Id`),
	CONSTRAINT `FK_Curved_Shapes` FOREIGN KEY (`CUR_Id`) REFERENCES `testdb`.`Shapes` (`SHA_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE `testdb`.`Circles`(
	`CIR_Id` int(11) NOT NULL,
    PRIMARY KEY (`CIR_Id`),
	CONSTRAINT `FK_Circles_Curved` FOREIGN KEY (`CIR_Id`) REFERENCES `testdb`.`Curved` (`CUR_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`Ellipses`(
	`ELL_Id` int(11) NOT NULL,
	`ELL_Radius2` decimal NOT NULL,
	PRIMARY KEY (`ELL_Id`),
	CONSTRAINT `FK_Ellipses_Curved` FOREIGN KEY (`ELL_Id`) REFERENCES `testdb`.`Curved` (`CUR_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`EllipsesKit`(
	`ELK_Id` int(11) NOT NULL AUTO_INCREMENT,
	`ELK_Name` varchar(50) NOT NULL,
	`ELL_Id1` int(11) NOT NULL,
	`ELL_Id2` int(11) NOT NULL,
	`ELL_Id3` int(11) NOT NULL,
    PRIMARY KEY (`ELK_Id`),
	CONSTRAINT `FK_EllipsesKit_Ellipses1` FOREIGN KEY (`ELL_Id1`) REFERENCES `testdb`.`Ellipses` (`ELL_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_EllipsesKit_Ellipses2` FOREIGN KEY (`ELL_Id2`) REFERENCES `testdb`.`Ellipses` (`ELL_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_EllipsesKit_Ellipses3` FOREIGN KEY (`ELL_Id3`) REFERENCES `testdb`.`Ellipses` (`ELL_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`ShapesTPH`(
	`SHA_Id` int(11) NOT NULL AUTO_INCREMENT,
	`SHA_Name` varchar(50) NOT NULL,
	`SHA_Type` varchar(50) NOT NULL,
	`SHA_Angle` decimal NULL,
	`SHA_Length` decimal NULL,
	`SHA_Radius` decimal NULL,
	`SHA_Radius2` decimal NULL,
	`SHO_Id` int(11) NOT NULL,
	PRIMARY KEY (`SHA_Id`),
	CONSTRAINT `FK_ShapesTHP_ShapesOptions` FOREIGN KEY (`SHO_Id`) REFERENCES `testdb`.`ShapeOptions` (`SHO_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`Companies`(
	`COM_Id` varchar(36) NOT NULL,
	`COM_Name` varchar(50) NOT NULL,
	`COM_Logo` blob NULL,
	PRIMARY KEY (`COM_Id`),
	UNIQUE KEY `idx_Companies_Name` (`COM_Name`)
);

CREATE TABLE `testdb`.`Departments`(
	`DEP_Id` int(11) NOT NULL AUTO_INCREMENT,
	`DEP_Name` varchar(50) NOT NULL,
	`COM_Id` varchar(36) NOT NULL,
	PRIMARY KEY (`DEP_Id`),
	UNIQUE KEY `idx_Departments_Name` (`DEP_Name`),
	CONSTRAINT `FK_Departments_Companies` FOREIGN KEY (`COM_Id`) REFERENCES `testdb`.`Companies` (`COM_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`Employees`(
	`EMP_Id` int(11) NOT NULL AUTO_INCREMENT,
	`EMP_FullName` varchar(50) NOT NULL,
	`EMP_Email` varchar(50) NOT NULL,
	`EMP_PhoneNumber` varchar(50) NOT NULL,
	`DEP_Id` int(11) NOT NULL,
	PRIMARY KEY (`EMP_Id`),
	CONSTRAINT `FK_Employees_Departments` FOREIGN KEY (`DEP_Id`) REFERENCES `testdb`.`Departments` (`DEP_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `testdb`.`BlackList`(
	`BLL_Year` int(11),
	`BLL_Email` varchar(50) NOT NULL,
	`BLL_Amount` decimal(15,2) NOT NULL,
	PRIMARY KEY (`BLL_Year`, `BLL_Email`)
);


CREATE FUNCTION `testdb`.`df_GetAge`(`birthDate` date, `deathDate` date) RETURNS int(11)
    DETERMINISTIC
BEGIN
	DECLARE age int(11);
		
	IF (birthDate IS NULL) THEN
		RETURN NULL;
	END IF;
	
    SET age = (SELECT TIMESTAMPDIFF(YEAR, birthdate, COALESCE(deathDate, CURDATE())));
			
	RETURN age;
END;

CREATE PROCEDURE `testdb`.`sp_AddSupplier`(`name` varchar(50), taxCode varchar(50), email varchar(50))
BEGIN
    INSERT INTO `Suppliers`(`SUP_Name`, `SUP_Email`, `SUP_TaxCode`) VALUES(`name`, taxCode, email);
END;

CREATE PROCEDURE `testdb`.`sp_GetInvoices`(pageNumber int, pageSize int)
BEGIN
	DECLARE skip int;
	SET skip = (pageNumber - 1) * pageSize;
	SELECT `INV_Id` `Id`, `INV_Number` `Number`, `INV_Date` `Date`, `CUS_TaxCode` `TaxCode`, `CUS_Email` `Email`
	FROM `Invoices` `i`
		INNER JOIN `Customers` `c` ON `c`.`CUS_Id`= `i`.`CUS_Id`
	ORDER BY `i`.`CUS_Id`
	LIMIT skip, pageSize;
END;

CREATE PROCEDURE `testdb`.`sp_GetCountAddresses`(pageNumber int, pageSize int)
BEGIN
	DECLARE skip int;
	SET skip = (pageNumber - 1) * pageSize;
	SELECT `a`.`CUS_Id` AS `CustomerId`, `c`.`CUS_Email` AS `CustomerEmail`, COUNT(*) AS `AddressesCount`
	FROM `Addresses` `a`
		INNER JOIN `Customers` `c` ON `c`.`CUS_Id` = `a`.`CUS_Id`
	GROUP BY `a`.`CUS_Id`, `c`.`CUS_Email`
	ORDER BY `a`.`CUS_Id`
	LIMIT skip, pageSize;
END;

CREATE PROCEDURE `testdb`.`sp_GetInvoice`(id int)
BEGIN
	SELECT `INV_Id` `Id`, `INV_Number` `Number`, `INV_Date` `Date`, `CUS_TaxCode` `TaxCode`, `CUS_Email` `Email`
	FROM `Invoices` `i`
		INNER JOIN `Customers` `c` ON `c`.`CUS_Id`= `i`.`CUS_Id`
	WHERE `INV_Id` = id;
END;

CREATE PROCEDURE `testdb`.`sp_GetCountAddress`(id int)
BEGIN
	SELECT `a`.`CUS_Id` AS `CustomerId`, `c`.`CUS_Email` AS `CustomerEmail`, COUNT(*) AS `AddressesCount`
	FROM `Addresses` `a`
		INNER JOIN `Customers` `c` ON `c`.`CUS_Id` = `a`.`CUS_Id`
	WHERE `a`.`CUS_Id` = id
	GROUP BY `a`.`CUS_Id`, `c`.`CUS_Email`;
END;

CREATE PROCEDURE `testdb`.`sp_GetInvoicesAmount`()
BEGIN
	SELECT SUM(`ILI_Amount`)
	FROM `InvoiceLines`;
END;