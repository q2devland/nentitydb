SET SCHEMA 'public';

ALTER TABLE "public"."Customers" ALTER COLUMN "CUS_Id" SET GENERATED ALWAYS;
ALTER TABLE "public"."Users" ALTER COLUMN "USR_Id" SET GENERATED ALWAYS;
ALTER TABLE "public"."Shapes" ALTER COLUMN "SHA_Id" SET GENERATED ALWAYS;
