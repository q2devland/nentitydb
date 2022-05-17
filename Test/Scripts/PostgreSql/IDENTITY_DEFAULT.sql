SET SCHEMA 'public';

ALTER TABLE "public"."Customers" ALTER COLUMN "CUS_Id" DROP DEFAULT;
ALTER TABLE "public"."Users" ALTER COLUMN "USR_Id" DROP DEFAULT;
ALTER TABLE "public"."Shapes" ALTER COLUMN "SHA_Id" DROP DEFAULT;

DROP SEQUENCE IF EXISTS "public"."Customers_CUS_Id_seq";
DROP SEQUENCE IF EXISTS "public"."Users_USR_Id_seq";
DROP SEQUENCE IF EXISTS "public"."Shapes_SHA_Id_seq";

ALTER TABLE "public"."Customers" ALTER COLUMN "CUS_Id" ADD GENERATED BY DEFAULT AS IDENTITY;
ALTER TABLE "public"."Users" ALTER COLUMN "USR_Id" ADD GENERATED BY DEFAULT AS IDENTITY;
ALTER TABLE "public"."Shapes" ALTER COLUMN "SHA_Id" ADD GENERATED BY DEFAULT AS IDENTITY;

ALTER TABLE "public"."Customers" ALTER COLUMN "CUS_Id" RESTART WITH 20000;
ALTER TABLE "public"."Users" ALTER COLUMN "USR_Id" RESTART WITH 20000;
ALTER TABLE "public"."Shapes" ALTER COLUMN "SHA_Id" RESTART WITH 20000;



