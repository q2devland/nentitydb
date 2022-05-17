DROP TABLE IF EXISTS "main"."Employees";
DROP TABLE IF EXISTS "main"."Departments";
DROP TABLE IF EXISTS "main"."Companies";

DROP TABLE IF EXISTS "main"."Addresses";
DROP TABLE IF EXISTS "main"."Countries";
DROP TABLE IF EXISTS "main"."InvoiceLines";
DROP TABLE IF EXISTS "main"."Invoices";
DROP TABLE IF EXISTS "main"."Customers";
DROP TABLE IF EXISTS "main"."Suppliers";
DROP TABLE IF EXISTS "main"."Users";

DROP TABLE IF EXISTS "main"."EllipsesKit";
DROP TABLE IF EXISTS "main"."Polygons";
DROP TABLE IF EXISTS "main"."Ellipses";
DROP TABLE IF EXISTS "main"."Circles";
DROP TABLE IF EXISTS "main"."Curved";
DROP TABLE IF EXISTS "main"."Shapes";
DROP TABLE IF EXISTS "main"."ShapesTPH";
DROP TABLE IF EXISTS "main"."ShapeOptions";

DROP TABLE IF EXISTS "main"."BlackList";

CREATE TABLE "main"."Customers"(
	"CUS_Id" INTEGER NOT NULL,
	"CUS_FirstName" VARCHAR(50) NOT NULL,
	"CUS_LastName" VARCHAR(50) NOT NULL,
	"CUS_Email" VARCHAR(50) NOT NULL,
	"CUS_TaxCode" VARCHAR(50) NOT NULL,
	"CUS_IsActive" BOOLEAN NOT NULL,
	"CUS_BirthDate" DATE NOT NULL,
	"CUS_DeathDate" DATE NULL,
	"CUS_Points" INT NOT NULL,
	"CUS_CreationDate" DATETIME NOT NULL,
CONSTRAINT "PK_Customers" PRIMARY KEY ("CUS_Id"));


CREATE TABLE "main"."Countries"(
	"COU_Id" INTEGER NOT NULL,
	"COU_Name" VARCHAR(50) NOT NULL,
CONSTRAINT "PK_Countries" PRIMARY KEY ("COU_Id"));
CREATE UNIQUE INDEX "idx_Countries_Name" ON "Countries"("COU_Name");


CREATE TABLE "main"."Addresses"(
	"ADR_Id" INTEGER NOT NULL,
	"ADR_Street" VARCHAR(50) NOT NULL,
	"ADR_PostalCode" VARCHAR(50) NULL,
	"ADR_City" VARCHAR(50) NOT NULL,
	"ADR_IsMain" BOOLEAN NOT NULL,
	"COU_Id" INT NOT NULL,
	"CUS_Id" INT NOT NULL,
CONSTRAINT "PK_Addresses" PRIMARY KEY ("ADR_Id"),
CONSTRAINT "FK_Addresses_Countries" FOREIGN KEY("COU_Id") REFERENCES "Countries" ("COU_Id"),
CONSTRAINT "FK_Addresses_Countries" FOREIGN KEY("CUS_Id") REFERENCES "Customers" ("CUS_Id"));


CREATE TABLE "main"."Invoices"(
	"INV_Id" INTEGER NOT NULL,
	"INV_Number" VARCHAR(50) NOT NULL,
	"INV_Date" DATE NOT NULL,
	"INV_IsPaid" BOOLEAN NOT NULL,
	"CUS_Id" INT NOT NULL,
CONSTRAINT "PK_Invoices" PRIMARY KEY ("INV_Id"),
CONSTRAINT "FK_Invoices_Customers" FOREIGN KEY("CUS_Id") REFERENCES "Customers" ("CUS_Id"));


CREATE TABLE "main"."InvoiceLines"(
	"ILI_Id" INTEGER NOT NULL,
	"ILI_Concept" VARCHAR(50) NOT NULL,
	"ILI_Amount" DECIMAL NOT NULL,
	"INV_Id" INT NOT NULL,
CONSTRAINT "PK_InvoiceLines" PRIMARY KEY ("ILI_Id"),
CONSTRAINT "FK_InvoiceLines_Invoices" FOREIGN KEY("INV_Id") REFERENCES "Invoices" ("INV_Id"));


CREATE TABLE "main"."Users"(
	"USR_Id" INTEGER NOT NULL,
	"USR_FullName" VARCHAR(50) NOT NULL,
	"USR_Username" VARCHAR(50) NOT NULL,
	"USR_Settings" TEXT NULL,
	"USR_IsActive" CHAR(1) NOT NULL,
CONSTRAINT "PK_Users" PRIMARY KEY ("USR_Id"));


CREATE TABLE "main"."Suppliers"(
	"SUP_Id" INTEGER NOT NULL,
	"SUP_Name" VARCHAR(50) NOT NULL,
	"SUP_Email" VARCHAR(50) NOT NULL,
	"SUP_TaxCode" VARCHAR(50) NOT NULL,
CONSTRAINT "PK_Suppliers" PRIMARY KEY ("SUP_Id"));


CREATE TABLE "main"."ShapeOptions"(
	"SHO_Id" INTEGER NOT NULL,
	"SHO_BackgroundColor" VARCHAR(50) NOT NULL,
	"SHO_OutlineColor" VARCHAR(50) NOT NULL,
CONSTRAINT "PK_ShapeOptions" PRIMARY KEY ("SHO_Id"));


CREATE TABLE "main"."Shapes"(
	"SHA_Id" INTEGER NOT NULL,
	"SHA_Name" VARCHAR(50) NOT NULL,
	"SHO_Id" INT NOT NULL,
CONSTRAINT "PK_Shapes" PRIMARY KEY ("SHA_Id"),
CONSTRAINT "FK_Shapes_ShapesOptions" FOREIGN KEY("SHO_Id") REFERENCES "ShapeOptions" ("SHO_Id"));


CREATE TABLE "main"."Polygons"(
	"POL_Id" INT NOT NULL,
	"POL_Angle" DECIMAL NOT NULL,
	"POL_Length" DECIMAL NOT NULL,
CONSTRAINT "PK_Polygons" PRIMARY KEY ("POL_Id"),
CONSTRAINT "FK_Polygons_Shapes" FOREIGN KEY("POL_Id") REFERENCES "Shapes" ("SHA_Id")) WITHOUT ROWID;


CREATE TABLE "main"."Curved"(
	"CUR_Id" INT NOT NULL,
	"CUR_Radius" DECIMAL NOT NULL,
CONSTRAINT "PK_Curved" PRIMARY KEY ("CUR_Id"),
CONSTRAINT "FK_Curved_Shapes" FOREIGN KEY("CUR_Id") REFERENCES "Shapes" ("SHA_Id")) WITHOUT ROWID;

CREATE TABLE "main"."Circles"(
	"CIR_Id" INT NOT NULL,
CONSTRAINT "PK_Circles" PRIMARY KEY ("CIR_Id"),
CONSTRAINT "FK_Circles_Curved" FOREIGN KEY("CIR_Id") REFERENCES "Curved" ("CUR_Id")) WITHOUT ROWID;;

CREATE TABLE "main"."Ellipses"(
	"ELL_Id" INT NOT NULL,
	"ELL_Radius2" DECIMAL NOT NULL,
CONSTRAINT "PK_Ellipses" PRIMARY KEY ("ELL_Id"),
CONSTRAINT "FK_Ellipses_Curved" FOREIGN KEY("ELL_Id") REFERENCES "Curved" ("CUR_Id")) WITHOUT ROWID;

CREATE TABLE "main"."EllipsesKit"(
	"ELK_Id" INTEGER NOT NULL,
	"ELK_Name" VARCHAR(50) NOT NULL,
	"ELL_Id1" INT NOT NULL,
	"ELL_Id2" INT NOT NULL,
	"ELL_Id3" INT NOT NULL,
CONSTRAINT "PK_EllipsesKit" PRIMARY KEY ("ELK_Id"),
CONSTRAINT "FK_EllipsesKit_Ellipses1" FOREIGN KEY("ELL_Id1") REFERENCES "Ellipses" ("ELL_Id"),
CONSTRAINT "FK_EllipsesKit_Ellipses2" FOREIGN KEY("ELL_Id2") REFERENCES "Ellipses" ("ELL_Id"),
CONSTRAINT "FK_EllipsesKit_Ellipses3" FOREIGN KEY("ELL_Id3") REFERENCES "Ellipses" ("ELL_Id"));

CREATE TABLE "main"."ShapesTPH"(
	"SHA_Id" INTEGER NOT NULL,
	"SHA_Name" VARCHAR(50) NOT NULL,
	"SHA_Type" VARCHAR(50) NOT NULL,
	"SHA_Angle" DECIMAL NULL,
	"SHA_Length" DECIMAL NULL,
	"SHA_Radius" DECIMAL NULL,
	"SHA_Radius2" DECIMAL NULL,
	"SHO_Id" INT NOT NULL,
CONSTRAINT "PK_ShapesTPH" PRIMARY KEY ("SHA_Id"),
CONSTRAINT "FK_ShapesTPH_ShapesOptions" FOREIGN KEY("SHO_Id") REFERENCES "ShapeOptions" ("SHO_Id"));


CREATE TABLE "main"."Companies"(
	"COM_Id" VARCHAR(36) NOT NULL,
	"COM_Name" VARCHAR(50) NOT NULL,
	"COM_Logo" BLOB NULL,
CONSTRAINT "PK_Companies" PRIMARY KEY ("COM_Id"));
CREATE UNIQUE INDEX "idx_Companies_Name" ON "Companies"("COM_Name");

CREATE TABLE "main"."Departments"(
	"DEP_Id" INTEGER NOT NULL,
	"DEP_Name" VARCHAR(50) NOT NULL,
	"COM_Id" VARCHAR(36) NOT NULL,
CONSTRAINT "PK_Departments" PRIMARY KEY ("DEP_Id"),
CONSTRAINT "FK_Departments_Companies" FOREIGN KEY("COM_Id") REFERENCES "Companies" ("COM_Id"));
CREATE UNIQUE INDEX "idx_Deparments_Name" ON "Departments"("DEP_Name");

CREATE TABLE "main"."Employees"(
	"EMP_Id" INTEGER NOT NULL,
	"EMP_FullName" VARCHAR(50) NOT NULL,
	"EMP_Email" VARCHAR(50) NOT NULL,
	"EMP_PhoneNumber" VARCHAR(50) NOT NULL,
	"DEP_Id" INT NOT NULL,
CONSTRAINT "PK_Employees" PRIMARY KEY ("EMP_Id"),
CONSTRAINT "FK_Employees_Departments" FOREIGN KEY("DEP_Id") REFERENCES "Departments" ("DEP_Id"));

CREATE TABLE "main"."BlackList"(
	"BLL_Year" INT NOT NULL,
	"BLL_Email" VARCHAR(50) NOT NULL,
	"BLL_Amount" DECIMAL NOT NULL,
CONSTRAINT "PK_BlackList" PRIMARY KEY ("BLL_Year", "BLL_Email"));