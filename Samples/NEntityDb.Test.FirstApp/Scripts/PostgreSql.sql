CREATE TABLE "public"."Customers"(
	"CUS_Id" SERIAL NOT NULL, 
	"CUS_FirstName" character varying(50) NOT NULL,
	"CUS_LastName" character varying(50) NOT NULL,
	"CUS_Email" character varying(50) NOT NULL,
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
