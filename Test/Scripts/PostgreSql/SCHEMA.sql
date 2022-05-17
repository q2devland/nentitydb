SET SCHEMA 'public';

DROP TABLE IF EXISTS "public"."Employees";
DROP TABLE IF EXISTS "public"."Departments";
DROP TABLE IF EXISTS "public"."Companies";

DROP TABLE IF EXISTS "public"."Addresses";
DROP TABLE IF EXISTS "public"."Countries";
DROP TABLE IF EXISTS "public"."InvoiceLines";
DROP TABLE IF EXISTS "public"."Invoices";
DROP TABLE IF EXISTS "public"."Customers";
DROP TABLE IF EXISTS "public"."Suppliers";
DROP TABLE IF EXISTS "public"."Users";

DROP TABLE IF EXISTS "public"."EllipsesKit";
DROP TABLE IF EXISTS "public"."Polygons";
DROP TABLE IF EXISTS "public"."Ellipses";
DROP TABLE IF EXISTS "public"."Circles";
DROP TABLE IF EXISTS "public"."Curved";
DROP TABLE IF EXISTS "public"."Shapes";
DROP TABLE IF EXISTS "public"."ShapesTPH";
DROP TABLE IF EXISTS "public"."ShapeOptions";

DROP TABLE IF EXISTS "public"."BlackList";

DROP FUNCTION IF EXISTS "public"."df_GetAge";
DROP PROCEDURE IF EXISTS "public"."sp_AddSupplier";
DROP PROCEDURE IF EXISTS "public"."sp_GetInvoices";
DROP PROCEDURE IF EXISTS "public"."sp_GetCountAddresses";
DROP PROCEDURE IF EXISTS "public"."sp_GetInvoice";
DROP PROCEDURE IF EXISTS "public"."sp_GetCountAddress";
DROP PROCEDURE IF EXISTS "public"."sp_GetInvoicesAmount";

CREATE TABLE "public"."Customers"(
	"CUS_Id" SERIAL NOT NULL, 
	"CUS_FirstName" character varying(50) NOT NULL,
	"CUS_LastName" character varying(50) NOT NULL,
	"CUS_Email" character varying(50) NOT NULL,
	"CUS_TaxCode" character varying(50) NOT NULL,
	"CUS_IsActive" boolean NOT NULL,
	"CUS_BirthDate" date NOT NULL,
	"CUS_DeathDate" date NULL,
	"CUS_Points" int NOT NULL,
	"CUS_CreationDate" timestamp NOT NULL,
	CONSTRAINT "PK_Customers" PRIMARY KEY("CUS_Id")
);

CREATE TABLE "public"."Countries"(
	"COU_Id" SERIAL NOT NULL, 
	"COU_Name" character varying(50) NOT NULL,
	CONSTRAINT "PK_Countries" PRIMARY KEY("COU_Id")
);
ALTER TABLE "public"."Countries" ADD CONSTRAINT "UQ_Countries_Name" UNIQUE ("COU_Name");


CREATE TABLE "public"."Addresses"(
	"ADR_Id" SERIAL NOT NULL, 
	"ADR_Street" character varying(50) NOT NULL,
	"ADR_PostalCode" character varying(50) NULL,
	"ADR_City" character varying(50) NOT NULL,
	"ADR_IsMain" boolean NOT NULL,
	"COU_Id" int NOT NULL,
	"CUS_Id" int NOT NULL,
CONSTRAINT "PK_Addresses" PRIMARY KEY("ADR_Id")
);

ALTER TABLE "public"."Addresses" ADD CONSTRAINT "FK_Addresses_Countries" FOREIGN KEY ("COU_Id") REFERENCES "public"."Countries" ("COU_Id");
ALTER TABLE "public"."Addresses" ADD CONSTRAINT "FK_Addresses_Customers" FOREIGN KEY ("CUS_Id") REFERENCES "public"."Customers" ("CUS_Id");

CREATE TABLE "public"."Invoices"(
	"INV_Id" SERIAL NOT NULL,
	"INV_Number" character varying(50) NOT NULL,
	"INV_Date" date NOT NULL,
	"INV_IsPaid" boolean NOT NULL,
	"CUS_Id" int NOT NULL,
CONSTRAINT "PK_Invoices" PRIMARY KEY ("INV_Id")
);
ALTER TABLE "public"."Invoices" ADD CONSTRAINT "FK_Invoices_Customers" FOREIGN KEY("CUS_Id") REFERENCES "public"."Customers" ("CUS_Id");

CREATE TABLE "public"."InvoiceLines"(
	"ILI_Id" SERIAL NOT NULL,
	"ILI_Concept" character varying(50) NOT NULL,
	"ILI_Amount" numeric(19,4) NOT NULL,
	"INV_Id" int NOT NULL,
CONSTRAINT "PK_InvoiceLines" PRIMARY KEY ("ILI_Id")
);
ALTER TABLE "public"."InvoiceLines" ADD CONSTRAINT "FK_InvoiceLines_Invoices" FOREIGN KEY("INV_Id") REFERENCES "public"."Invoices" ("INV_Id");


CREATE TABLE "public"."Users"(
	"USR_Id" SERIAL NOT NULL,
	"USR_FullName" character varying(50) NOT NULL,
	"USR_Username" character varying(50) NOT NULL,
	"USR_Settings" text NULL,
	"USR_IsActive" char(1) NOT NULL,
CONSTRAINT "PK_Users" PRIMARY KEY ("USR_Id")
);


CREATE TABLE "public"."Suppliers"(
	"SUP_Id" SERIAL NOT NULL,
	"SUP_Name" character varying(50) NOT NULL,
	"SUP_Email" character varying(50) NOT NULL,
	"SUP_TaxCode" character varying(50) NOT NULL,
CONSTRAINT "PK_Suppliers" PRIMARY KEY ("SUP_Id")
);


CREATE TABLE "public"."ShapeOptions"(
	"SHO_Id" SERIAL NOT NULL,
	"SHO_BackgroundColor" character varying(50) NOT NULL,
	"SHO_OutlineColor" character varying(50) NOT NULL,
CONSTRAINT "PK_ShapeOptions" PRIMARY KEY ("SHO_Id")
);


CREATE TABLE "public"."Shapes"(
	"SHA_Id" SERIAL NOT NULL,
	"SHA_Name" character varying(50) NOT NULL,
	"SHO_Id" int NOT NULL,
CONSTRAINT "PK_Shapes" PRIMARY KEY ("SHA_Id")
);
ALTER TABLE "public"."Shapes" ADD CONSTRAINT "FK_Shapes_ShapesOptions" FOREIGN KEY("SHO_Id") REFERENCES "public"."ShapeOptions" ("SHO_Id");


CREATE TABLE "public"."Polygons"(
	"POL_Id" int NOT NULL,
	"POL_Angle" numeric(18,2) NOT NULL,
	"POL_Length" numeric(18,2) NOT NULL,
CONSTRAINT "PK_Polygons" PRIMARY KEY ("POL_Id")
);
ALTER TABLE "public"."Polygons" ADD CONSTRAINT "FK_Polygons_Shapes" FOREIGN KEY("POL_Id") REFERENCES "public"."Shapes" ("SHA_Id");


CREATE TABLE "public"."Curved"(
	"CUR_Id" int NOT NULL,
	"CUR_Radius" numeric(18,2) NOT NULL,
CONSTRAINT "PK_Curved" PRIMARY KEY ("CUR_Id")
);
ALTER TABLE "public"."Curved" ADD CONSTRAINT "FK_Curved_Shapes" FOREIGN KEY("CUR_Id") REFERENCES "public"."Shapes" ("SHA_Id");



CREATE TABLE "public"."Circles"(
	"CIR_Id" int NOT NULL,
CONSTRAINT "PK_Circles" PRIMARY KEY ("CIR_Id")
);
ALTER TABLE "public"."Circles" ADD CONSTRAINT "FK__Circles_Curved" FOREIGN KEY("CIR_Id") REFERENCES "public"."Curved" ("CUR_Id");


CREATE TABLE "public"."Ellipses"(
	"ELL_Id" int NOT NULL,
	"ELL_Radius2" numeric(18,2) NOT NULL,
CONSTRAINT "PK_Ellipses" PRIMARY KEY ("ELL_Id")
);
ALTER TABLE "public"."Ellipses" ADD CONSTRAINT "FK__Ellipses_Curved" FOREIGN KEY("ELL_Id") REFERENCES "public"."Curved" ("CUR_Id");


CREATE TABLE "public"."EllipsesKit"(
	"ELK_Id" SERIAL NOT NULL,
	"ELK_Name" character varying(50) NOT NULL,
	"ELL_Id1" int NOT NULL,
	"ELL_Id2" int NOT NULL,
	"ELL_Id3" int NOT NULL,
CONSTRAINT "PK_EllipsesKit" PRIMARY KEY ("ELK_Id")
);
ALTER TABLE "public"."EllipsesKit" ADD CONSTRAINT "FK__EllipsesKit_Ellipses1" FOREIGN KEY("ELL_Id1") REFERENCES "public"."Ellipses" ("ELL_Id");
ALTER TABLE "public"."EllipsesKit" ADD CONSTRAINT "FK__EllipsesKit_Ellipses2" FOREIGN KEY("ELL_Id2") REFERENCES "public"."Ellipses" ("ELL_Id");
ALTER TABLE "public"."EllipsesKit" ADD CONSTRAINT "FK__EllipsesKit_Ellipses3" FOREIGN KEY("ELL_Id3") REFERENCES "public"."Ellipses" ("ELL_Id");

CREATE TABLE "public"."ShapesTPH"(
	"SHA_Id" SERIAL NOT NULL,
	"SHA_Name" character varying(50) NOT NULL,
	"SHA_Type" character varying(50) NOT NULL,
	"SHA_Angle" numeric(18,2) NULL,
	"SHA_Length" numeric(18,2) NULL,
	"SHA_Radius" numeric(18,2) NULL,
	"SHA_Radius2" numeric(18,2) NULL,
	"SHO_Id" int NOT NULL,
CONSTRAINT "PK_ShapesTPH" PRIMARY KEY ("SHA_Id")
);
ALTER TABLE "public"."ShapesTPH" ADD CONSTRAINT "FK_ShapesTPH_ShapesOptions" FOREIGN KEY("SHO_Id") REFERENCES "public"."ShapeOptions" ("SHO_Id");


CREATE TABLE "public"."Companies"(
	"COM_Id" uuid NOT NULL,
	"COM_Name" character varying(50) NOT NULL,
	"COM_Logo" bytea NULL,
CONSTRAINT "PK_Companies" PRIMARY KEY ("COM_Id")
);

ALTER TABLE "public"."Companies" ADD CONSTRAINT "UQ_Companies_Name" UNIQUE ("COM_Name");


CREATE TABLE "public"."Departments"(
	"DEP_Id" SERIAL NOT NULL,
	"DEP_Name" character varying(50) NOT NULL,
	"COM_Id" uuid NOT NULL,
CONSTRAINT "PK_Departments" PRIMARY KEY ("DEP_Id")
);

ALTER TABLE "public"."Departments" ADD CONSTRAINT "UQ_Departments_Name" UNIQUE ("DEP_Name");
ALTER TABLE "public"."Departments" ADD CONSTRAINT "FK_Departments_Companies" FOREIGN KEY("COM_Id") REFERENCES "public"."Companies" ("COM_Id");


CREATE TABLE "public"."Employees"(
	"EMP_Id" SERIAL NOT NULL,
	"EMP_FullName" character varying(50) NOT NULL,
	"EMP_Email" character varying(50) NOT NULL,
	"EMP_PhoneNumber" character varying(50) NOT NULL,
	"DEP_Id" int NOT NULL,
CONSTRAINT "PK_Employees" PRIMARY KEY ("EMP_Id")
);
ALTER TABLE "public"."Employees" ADD CONSTRAINT "FK_Employees_Departments" FOREIGN KEY("DEP_Id") REFERENCES "public"."Departments" ("DEP_Id");

CREATE TABLE "public"."BlackList"(
	"BLL_Year" int NOT NULL,
	"BLL_Email" character varying(50) NOT NULL,
	"BLL_Amount" numeric(19,4) NOT NULL,
CONSTRAINT "PK_BlackList" PRIMARY KEY ("BLL_Year", "BLL_Email")
);


CREATE OR REPLACE FUNCTION "public"."df_GetAge"(
	"birthDate" date,
	"deathDate" date)
    RETURNS integer
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

DECLARE "age" INTEGER;
BEGIN
	IF ("birthDate" IS NULL) THEN
		RETURN NULL;
	END IF;
	
	"age":= (SELECT date_part('year', age(COALESCE("deathDate", CURRENT_TIMESTAMP), "birthDate")));     
	RETURN "age";
END;

$BODY$;

CREATE OR REPLACE FUNCTION public."df_AddSupplier"(
	name character varying,
	"taxCode" character varying,
	email character varying)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
	INSERT INTO "public"."Suppliers"("SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES("name", "taxCode", "email");
END;

$BODY$;

CREATE OR REPLACE FUNCTION "public"."df_GetInvoices"(
	"pageNumber" integer,
	"pageSize" integer)
    RETURNS TABLE("Id" integer, "Number" character varying, "Date" date, 
				"TaxCode" character varying, "Email" character varying) 
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
    ROWS 1000
AS $BODY$

BEGIN
   RETURN QUERY
  	SELECT "INV_Id" AS "Id", "INV_Number" AS "Number", "INV_Date" as "Date", 
		"CUS_TaxCode" AS "TaxCode", "CUS_Email" AS "Email"
	FROM "public"."Invoices" "i"
		INNER JOIN "public"."Customers" "c" ON "c"."CUS_Id" = "i"."CUS_Id"
	ORDER BY "i"."CUS_Id"
	LIMIT "pageSize" OFFSET (("pageNumber" - 1) * "pageSize");
END;

$BODY$;

CREATE OR REPLACE FUNCTION "public"."df_GetInvoice"(
	"id" integer)
    RETURNS TABLE("Id" integer, "Number" character varying, "Date" date, 
				"TaxCode" character varying, "Email" character varying) 
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
    ROWS 1000
AS $BODY$

BEGIN
   RETURN QUERY
  	SELECT "INV_Id" AS "Id", "INV_Number" AS "Number", "INV_Date" as "Date", 
		"CUS_TaxCode" AS "TaxCode", "CUS_Email" AS "Email"
	FROM "public"."Invoices" "i"
		INNER JOIN "public"."Customers" "c" ON "c"."CUS_Id" = "i"."CUS_Id"
	WHERE "INV_Id" = "id";
END;

$BODY$;

CREATE OR REPLACE FUNCTION "public"."df_GetInvoicesAmount"()
    RETURNS numeric(19,4)
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$

BEGIN
	RETURN (SELECT SUM("ILI_Amount")
	FROM "public"."InvoiceLines");
END;

$BODY$;


CREATE OR REPLACE PROCEDURE "public"."sp_AddSupplier"(
	"name" character varying,
	"taxCode" character varying,
	email character varying)
LANGUAGE 'plpgsql'

AS $BODY$	
BEGIN
	INSERT INTO "public"."Suppliers"("SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES("name", "taxCode", "email");
END
$BODY$;

CREATE OR REPLACE PROCEDURE "public"."sp_GetInvoices"(
	"pageNumber" integer,
	"pageSize" integer,
	"CUR" refcursor)   
    LANGUAGE 'plpgsql'

AS $BODY$	
BEGIN
	OPEN "CUR" FOR
  	SELECT "INV_Id" AS "Id", "INV_Number" AS "Number", "INV_Date" as "Date", 
		"CUS_TaxCode" AS "TaxCode", "CUS_Email" AS "Email"
	FROM "public"."Invoices" "i"
		INNER JOIN "public"."Customers" "c" ON "c"."CUS_Id" = "i"."CUS_Id"
	ORDER BY "i"."CUS_Id"
	LIMIT "pageSize" OFFSET (("pageNumber" - 1) * "pageSize");
END
$BODY$;

CREATE OR REPLACE PROCEDURE "public"."sp_GetCountAddresses"(
	"pageNumber" integer,
	"pageSize" integer,
	"CUR" refcursor)   
    LANGUAGE 'plpgsql'

AS $BODY$	
BEGIN
	OPEN "CUR" FOR
	SELECT "a"."CUS_Id" AS "CustomerId", "c"."CUS_Email" AS "CustomerEmail", COUNT(*) AS "AddressesCount"
	FROM "public"."Addresses" "a"
		INNER JOIN "public"."Customers" "c" ON "c"."CUS_Id" = "a"."CUS_Id"
	GROUP BY "a"."CUS_Id", "c"."CUS_Email"
	ORDER BY "a"."CUS_Id"
	LIMIT "pageSize" OFFSET (("pageNumber" - 1) * "pageSize");
END
$BODY$;

CREATE OR REPLACE PROCEDURE "public"."sp_GetInvoice"(
	"id" integer,
	"CUR" refcursor)   
    LANGUAGE 'plpgsql'

AS $BODY$	
BEGIN
	OPEN "CUR" FOR
  	SELECT "INV_Id" AS "Id", "INV_Number" AS "Number", "INV_Date" as "Date", 
		"CUS_TaxCode" AS "TaxCode", "CUS_Email" AS "Email"
	FROM "public"."Invoices" "i"
		INNER JOIN "public"."Customers" "c" ON "c"."CUS_Id" = "i"."CUS_Id"
	WHERE "INV_Id" = "id";
END
$BODY$;

CREATE OR REPLACE PROCEDURE "public"."sp_GetCountAddress"(
	"id" integer,
	"CUR" refcursor)   
    LANGUAGE 'plpgsql'

AS $BODY$	
BEGIN
	OPEN "CUR" FOR
	SELECT "a"."CUS_Id" AS "CustomerId", "c"."CUS_Email" AS "CustomerEmail", COUNT(*) AS "AddressesCount"
	FROM "public"."Addresses" "a"
		INNER JOIN "public"."Customers" "c" ON "c"."CUS_Id" = "a"."CUS_Id"
	WHERE "a"."CUS_Id" = "id"
	GROUP BY "a"."CUS_Id", "c"."CUS_Email";
END
$BODY$;

CREATE OR REPLACE PROCEDURE "public"."sp_GetInvoicesAmount"(
	"CUR" refcursor)
LANGUAGE 'plpgsql'

AS $BODY$	
BEGIN
	OPEN "CUR" FOR
  	SELECT SUM("ILI_Amount")
	FROM "public"."InvoiceLines";
END
$BODY$;

