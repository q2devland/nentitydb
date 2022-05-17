--ALTER SESSION SET CURRENT_SCHEMA = "ANONYMOUS";
--ALTER USER "ANONYMOUS" quota unlimited ON SYSAUX;
--SET DEFINE OFF;

BEGIN

DELETE FROM "ANONYMOUS"."Users";
DELETE FROM "ANONYMOUS"."Suppliers";
DELETE FROM "ANONYMOUS"."InvoiceLines";
DELETE FROM "ANONYMOUS"."Invoices";
DELETE FROM "ANONYMOUS"."Addresses";
DELETE FROM "ANONYMOUS"."Countries";
DELETE FROM "ANONYMOUS"."Customers";

DELETE FROM "ANONYMOUS"."Employees";
DELETE FROM "ANONYMOUS"."Departments";
DELETE FROM "ANONYMOUS"."Companies";

DELETE FROM "ANONYMOUS"."EllipsesKit";
DELETE FROM "ANONYMOUS"."Circles";
DELETE FROM "ANONYMOUS"."Ellipses";
DELETE FROM "ANONYMOUS"."Curved";
DELETE FROM "ANONYMOUS"."Polygons";
DELETE FROM "ANONYMOUS"."Shapes";
DELETE FROM "ANONYMOUS"."ShapesTPH";
DELETE FROM "ANONYMOUS"."ShapeOptions";

DELETE FROM "ANONYMOUS"."BlackList";

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (1, 'Clair', 'Guiet', 'cguiet0@gov.uk', '3720045188', 1, TO_DATE('1958-10-08', 'yyyy-mm-dd'), NULL, 90, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (2, 'Vincenz', 'Upex', 'vupex1@is.gd', '5953567960', 1, TO_DATE('1964-08-07', 'yyyy-mm-dd'), NULL, 58, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (3, 'Judy', 'Durman', 'jdurman2@xrea.com', '8169433592', 0, TO_DATE('1991-03-27', 'yyyy-mm-dd'), NULL, 64, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (4, 'Lanie', 'Ponton', 'lponton3@jimdo.com', '9382241752', 0, TO_DATE('1995-12-04', 'yyyy-mm-dd'), NULL, 33, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (5, 'Levon', 'Jzak', 'ljzak4@hhs.gov', '7133818027', 1, TO_DATE('1979-10-11', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (6, 'Lilah', 'Gawthrop', 'lgawthrop5@skype.com', '6474021020', 1, TO_DATE('1960-09-21', 'yyyy-mm-dd'), NULL, 66, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (7, 'Billie', 'Valentin', 'bvalentin6@vk.com', '3819982108', 0, TO_DATE('1984-05-22', 'yyyy-mm-dd'), TO_DATE('2011-08-15', 'yyyy-mm-dd'), 41, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (8, 'Eachelle', 'Woodroffe', 'ewoodroffe7@netvibes.com', '1363641352', 1, TO_DATE('1992-07-11', 'yyyy-mm-dd'), TO_DATE('2006-11-23', 'yyyy-mm-dd'), 69, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (9, 'Christy', 'Bagg', 'cbagg8@apache.org', '5870417600', 1, TO_DATE('2000-04-18', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (10, 'Amalie', 'Benditt', 'abenditt9@sciencedirect.com', '4775915703', 0, TO_DATE('1963-06-23', 'yyyy-mm-dd'), NULL, 99, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (11, 'Ted', 'Kaser', 'tkasera@e-recht24.de', '2436508828', 1, TO_DATE('1963-07-09', 'yyyy-mm-dd'), NULL, 92, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (12, 'Agnese', 'Belverstone', 'abelverstoneb@bloglovin.com', '6063910581', 0, TO_DATE('2000-10-08', 'yyyy-mm-dd'), TO_DATE('2010-05-22', 'yyyy-mm-dd'), 3, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (13, 'Hilario', 'Lowless', 'hlowlessc@furl.net', '5435112788', 1, TO_DATE('1978-01-06', 'yyyy-mm-dd'), NULL, 14, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (14, 'Alessandro', 'Brentnall', 'abrentnalld@addtoany.com', '1960148761', 0, TO_DATE('1959-11-08', 'yyyy-mm-dd'), NULL, 100, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (15, 'Rodd', 'MacGiffin', 'rmacgiffine@i2i.jp', '6697834102', 0, TO_DATE('1981-01-15', 'yyyy-mm-dd'), NULL, 82, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (16, 'Bevvy', 'Bown', 'bbownf@furl.net', '7219379250', 1, TO_DATE('1952-04-29', 'yyyy-mm-dd'), NULL, 98, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (17, 'Juli', 'McMarquis', 'jmcmarquisg@bloomberg.com', '2593396660', 0, TO_DATE('1981-01-27', 'yyyy-mm-dd'), NULL, 31, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (18, 'Giles', 'Giles', 'gbackshillh@icio.us', '3128116695', 1, TO_DATE('1970-03-30', 'yyyy-mm-dd'), NULL, 49, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (19, 'Chauncey', 'Chretien', 'cchretieni@altervista.org', '9168277784', 1, TO_DATE('1994-08-14', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (20, 'Lucilia', 'Bowlesworth', 'lbowlesworthj@cmu.edu', '5623699650', 1, TO_DATE('2001-12-17', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (21, 'Kaylyn', 'Hamman', 'khammank@dion.ne.jp', '1990341411', 1, TO_DATE('1971-01-19', 'yyyy-mm-dd'), NULL, 28, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (22, 'Gabey', 'Deason', 'gdeasonl@imgur.com', '0740673793', 1, TO_DATE('1993-12-22', 'yyyy-mm-dd'), TO_DATE('2009-04-20', 'yyyy-mm-dd'), 64, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (23, 'Fritz', 'Masterman', 'fmastermanm@bandcamp.com', '0439350433', 1, TO_DATE('1951-02-21', 'yyyy-mm-dd'), NULL, 23, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (24, 'Bettine', 'Oven', 'bovenn@archive.org', '7052514109', 1, TO_DATE('1981-05-24', 'yyyy-mm-dd'), TO_DATE('2002-09-21', 'yyyy-mm-dd'), 17, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (25, 'Ida', 'Verduin', 'iverduino@netvibes.com', '4832616978', 1, TO_DATE('1973-04-10', 'yyyy-mm-dd'), NULL, 22, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (26, 'Cathryn', 'Presman', 'cpresmanp@cdc.gov', '3760103561', 1, TO_DATE('1959-05-16', 'yyyy-mm-dd'), NULL, 33, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (27, 'Jonie', 'Allenby', 'jallenbyq@npr.org', '2931996262', 1, TO_DATE('1960-07-04', 'yyyy-mm-dd'), NULL, 56, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (28, 'Peria', 'Shillam', 'pshillamr@bbb.org', '2781687154', 1, TO_DATE('1966-11-08', 'yyyy-mm-dd'), NULL, 5, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (29, 'Cello', 'Leppington', 'cleppingtons@vkontakte.ru', '5818884759', 1, TO_DATE('1977-07-07', 'yyyy-mm-dd'), NULL, 95, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (30, 'Ferris', 'Ferris', 'fcosgryt@nbcnews.com', '0718755898', 1, TO_DATE('1957-05-29', 'yyyy-mm-dd'), NULL, 67, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (31, 'Duncan', 'Stickler', 'dstickleru@eventbrite.com', '1252461445', 1, TO_DATE('1954-09-17', 'yyyy-mm-dd'), NULL, 98, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (32, 'Catarina', 'Clatworthy', 'cclatworthyv@wsj.com', '2040265104', 1, TO_DATE('1959-09-28', 'yyyy-mm-dd'), NULL, 36, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (33, 'Beatriz', 'Knutsen', 'bknutsenw@army.mil', '6794333791', 1, TO_DATE('1989-05-08', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (34, 'Latrena', 'Deniseau', 'ldeniseaux@nsw.gov.au', '7325631529', 1, TO_DATE('1973-08-31', 'yyyy-mm-dd'), NULL, 68, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (35, 'Gladi', 'Lannin', 'glanniny@blog.com', '5773334909', 1, TO_DATE('1976-09-04', 'yyyy-mm-dd'), NULL, 28, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (36, 'Felic', 'Christofle', 'fchristoflez@apache.org', '7432856966', 1, TO_DATE('1993-06-04', 'yyyy-mm-dd'), TO_DATE('2003-01-29', 'yyyy-mm-dd'), 58, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (37, 'Philippe', 'Leddy', 'pleddy10@360.cn', '8269683388', 1, TO_DATE('1954-05-23', 'yyyy-mm-dd'), NULL, 55, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (38, 'Quintana', 'Quintana', 'qsiemon11@tiny.cc', '3045746721', 1, TO_DATE('1973-12-09', 'yyyy-mm-dd'), NULL, 49, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (39, 'Brent', 'Scrimshire', 'bscrimshire12@marketwatch.com', '2121435689', 1, TO_DATE('1982-10-05', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (40, 'Kristofor', 'Philippon', 'kphilippon13@unblog.fr', '0629189439', 1, TO_DATE('1966-06-19', 'yyyy-mm-dd'), NULL, 98, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (41, 'Marijo', 'Rickertsen', 'mrickertsen14@mozilla.com', '4210509744', 1, TO_DATE('1951-04-18', 'yyyy-mm-dd'), NULL, 46, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (42, 'Arvy', 'Fleis', 'afleis15@github.com', '1512136182', 1, TO_DATE('1972-03-24', 'yyyy-mm-dd'), NULL, 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (43, 'Natty', 'Keyhoe', 'nkeyhoe16@zdnet.com', '3013227206', 1, TO_DATE('1983-10-03', 'yyyy-mm-dd'), TO_DATE('2009-03-16', 'yyyy-mm-dd'), 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (44, 'Darbie', 'Mossbee', 'dmossbee17@amazon.com', '6378940215', 1, TO_DATE('1991-01-07', 'yyyy-mm-dd'), NULL, 79, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (45, 'Agustin', 'Cicero', 'acicero18@craigslist.org', '4357458307', 1, TO_DATE('1999-06-13', 'yyyy-mm-dd'), NULL, 30, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (46, 'Lucretia', 'Lavall', 'llavall19@wikispaces.com', '4127256974', 1, TO_DATE('1962-03-08', 'yyyy-mm-dd'), NULL, 54, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (47, 'Mac', 'Dobbins', 'mdobbins1a@census.gov', '4422701746', 1, TO_DATE('1998-11-02', 'yyyy-mm-dd'), NULL, 58, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (48, 'Neils', 'Prudence', 'nprudence1b@cyberchimps.com', '4679767723', 1, TO_DATE('1952-07-12', 'yyyy-mm-dd'), NULL, 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (49, 'Twyla', 'Vedenyakin', 'tvedenyakin1c@toplist.cz', '0461828855', 1, TO_DATE('1968-05-15', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (50, 'Lucinda', 'Fattorini', 'lfattorini1d@jimdo.com', '9715349072', 1, TO_DATE('1998-10-26', 'yyyy-mm-dd'), NULL, 88, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (51, 'Terrie', 'Coxwell', 'tcoxwell1e@whitehouse.gov', '7367290789', 1, TO_DATE('1982-04-30', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (52, 'Kiri', 'Doram', 'kdoram1f@msn.com', '6092352478', 1, TO_DATE('1969-09-30', 'yyyy-mm-dd'), NULL, 29, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (53, 'Abner', 'Fort', 'afort1g@ucla.edu', '7063869523', 1, TO_DATE('1951-04-01', 'yyyy-mm-dd'), NULL, 88, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (54, 'Tresa', 'Danielot', 'tdanielot1h@icq.com', '7168822098', 1, TO_DATE('1964-01-20', 'yyyy-mm-dd'), NULL, 48, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (55, 'Susette', 'Steven', 'ssteven1i@google.com.hk', '4616212473', 1, TO_DATE('1968-02-18', 'yyyy-mm-dd'), NULL, 54, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (56, 'Adelice', 'Batsford', 'abatsford1j@marketwatch.com', '5154528530', 1, TO_DATE('1992-10-27', 'yyyy-mm-dd'), NULL, 64, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (57, 'Merilyn', 'Cardinal', 'mcardinal1k@digg.com', '3324812607', 1, TO_DATE('1959-01-18', 'yyyy-mm-dd'), NULL, 50, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (58, 'Elsa', 'Elsa', 'ecutchee1l@nih.gov', '7594124936', 1, TO_DATE('1974-07-19', 'yyyy-mm-dd'), NULL, 94, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (59, 'Lilllie', 'Palley', 'lpalley1m@foxnews.com', '4832282263', 1, TO_DATE('1999-02-11', 'yyyy-mm-dd'), NULL, 77, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (60, 'Frayda', 'Cantor', 'fcantor1n@columbia.edu', '8077754767', 1, TO_DATE('1959-07-10', 'yyyy-mm-dd'), NULL, 57, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (61, 'Christine', 'Mendonca', 'cmendonca1o@pagesperso-orange.fr', '6086276781', 1, TO_DATE('1952-03-08', 'yyyy-mm-dd'), NULL, 65, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (62, 'Torey', 'Rowat', 'trowat1p@networkadvertising.org', '0117776521', 1, TO_DATE('1974-09-15', 'yyyy-mm-dd'), NULL, 6, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (63, 'Yvon', 'Espin', 'yespin1q@google.com.au', '3084075840', 1, TO_DATE('1977-08-16', 'yyyy-mm-dd'), NULL, 75, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (64, 'Augustine', 'Lutwidge', 'alutwidge1r@tripadvisor.com', '1962636038', 1, TO_DATE('1964-03-28', 'yyyy-mm-dd'), NULL, 74, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (65, 'Niki', 'Preskett', 'npreskett1s@instagram.com', '7845842540', 1, TO_DATE('1989-09-17', 'yyyy-mm-dd'), NULL, 99, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (66, 'Gerick', 'Matt', 'gmatt1t@123-reg.co.uk', '1182674364', 1, TO_DATE('1978-10-19', 'yyyy-mm-dd'), NULL, 39, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (67, 'Roi', 'Chapling', 'rchapling1u@slideshare.net', '5301455656', 1, TO_DATE('1960-02-29', 'yyyy-mm-dd'), NULL, 26, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (68, 'Shannen', 'Klossmann', 'sklossmann1v@behance.net', '8215652727', 1, TO_DATE('1976-06-06', 'yyyy-mm-dd'), NULL, 37, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (69, 'Noel', 'Hallede', 'nhallede1w@bigcartel.com', '0702014656', 1, TO_DATE('1952-12-07', 'yyyy-mm-dd'), NULL, 28, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (70, 'Mariquilla', 'Colville', 'mcolville1x@hibu.com', '3615718186', 1, TO_DATE('1993-03-05', 'yyyy-mm-dd'), NULL, 66, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (71, 'Kerianne', 'Loughney', 'kloughney1y@bing.com', '6202038268', 1, TO_DATE('1972-02-13', 'yyyy-mm-dd'), NULL, 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (72, 'Elayne', 'Gebb', 'egebb1z@toplist.cz', '7230878446', 1, TO_DATE('2000-05-21', 'yyyy-mm-dd'), NULL, 16, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (73, 'Chickie', 'Van Eeden', 'cvaneeden20@comcast.net', '8660714326', 1, TO_DATE('1997-08-06', 'yyyy-mm-dd'), NULL, 3, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (74, 'Elvis', 'Hillhouse', 'ehillhouse21@vkontakte.ru', '1450739989', 1, TO_DATE('1962-05-17', 'yyyy-mm-dd'), NULL, 69, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (75, 'Tamar', 'Phythien', 'tphythien22@google.com', '9773581578', 1, TO_DATE('1990-06-04', 'yyyy-mm-dd'), NULL, 51, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (76, 'Gwenore', 'Smithers', 'gsmithers23@webmd.com', '6720389513', 1, TO_DATE('1960-12-21', 'yyyy-mm-dd'), NULL, 23, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (77, 'Haily', 'Dallaghan', 'hdallaghan24@w3.org', '7519604136', 1, TO_DATE('1973-03-29', 'yyyy-mm-dd'), NULL, 70, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (78, 'Timothy', 'Yellop', 'tyellop25@surveymonkey.com', '3549049447', 1, TO_DATE('1954-10-25', 'yyyy-mm-dd'), NULL, 40, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (79, 'Natalina', 'Blackborow', 'nblackborow26@smh.com.au', '4277087949', 1, TO_DATE('1972-04-02', 'yyyy-mm-dd'), NULL, 22, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (80, 'Halette', 'McHan', 'hmchan27@etsy.com', '4999334003', 1, TO_DATE('1972-06-19', 'yyyy-mm-dd'), NULL, 31, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (81, 'Dasya', 'Staynes', 'dstaynes28@soup.io', '4641183155', 1, TO_DATE('1950-11-11', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (82, 'Analiese', 'Preshaw', 'apreshaw29@wired.com', '5663045953', 1, TO_DATE('1952-07-28', 'yyyy-mm-dd'), NULL, 10, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (83, 'Torrey', 'Ions', 'tions2a@indiatimes.com', '1233265245', 1, TO_DATE('1961-12-30', 'yyyy-mm-dd'), NULL, 16, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (84, 'Waylon', 'Rawlison', 'wrawlison2b@un.org', '6045805984', 1, TO_DATE('1985-08-01', 'yyyy-mm-dd'), NULL, 77, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (85, 'Yolanthe', 'Tremollet', 'ytremollet2c@taobao.com', '3356214748', 1, TO_DATE('1951-05-01', 'yyyy-mm-dd'), NULL, 76, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (86, 'Ikey', 'Bolus', 'ibolus2d@diigo.com', '9196350237', 1, TO_DATE('1990-03-02', 'yyyy-mm-dd'), NULL, 87, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (87, 'Hollie', 'Gossop', 'hgossop2e@soup.io', '9664465313', 1, TO_DATE('1953-11-03', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (88, 'Norah', 'Seiler', 'nseiler2f@bbb.org', '3118680016', 1, TO_DATE('1992-01-22', 'yyyy-mm-dd'), NULL, 20, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (89, 'Myrah', 'Coggan', 'mcoggan2g@google.es', '4029253091', 1, TO_DATE('1999-04-16', 'yyyy-mm-dd'), TO_DATE('2012-06-07', 'yyyy-mm-dd'), 26, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (90, 'Izaak', 'Poynzer', 'ipoynzer2h@cpanel.net', '1802562583', 1, TO_DATE('1968-01-01', 'yyyy-mm-dd'), NULL, 48, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (91, 'Kimberlee', 'Mauser', 'kmauser2i@dmoz.org', '1599430037', 1, TO_DATE('1997-05-31', 'yyyy-mm-dd'), TO_DATE('2002-07-23', 'yyyy-mm-dd'), 94, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (92, 'Val', 'Saffran', 'vsaffran2j@cloudflare.com', '8643092304', 1, TO_DATE('1982-01-19', 'yyyy-mm-dd'), NULL, 18, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (93, 'Eward', 'Fenna', 'efenna2k@slideshare.net', '9871910428', 1, TO_DATE('1951-12-28', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (94, 'Hildagarde', 'Knagges', 'hknagges2l@mtv.com', '4323711824', 1, TO_DATE('1996-08-20', 'yyyy-mm-dd'), NULL, 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (95, 'Blake', 'Ingree', 'bingree2m@nasa.gov', '4526147869', 1, TO_DATE('1997-05-29', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (96, 'Ashla', 'Kairns', 'akairns2n@macromedia.com', '4757193599', 1, TO_DATE('1963-02-27', 'yyyy-mm-dd'), TO_DATE('2010-03-17', 'yyyy-mm-dd'), 43, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (97, 'Cletus', 'Reany', 'creany2o@freewebs.com', '4847200993', 1, TO_DATE('1954-08-11', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (98, 'Berget', 'Shutt', 'bshutt2p@go.com', '4227397359', 1, TO_DATE('1970-10-16', 'yyyy-mm-dd'), NULL, 9, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (99, 'Neddie', 'Brion', 'nbrion2q@blog.com', '9846129254', 1, TO_DATE('1996-01-02', 'yyyy-mm-dd'), NULL, 10, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (100, 'Sonny', 'Biesty', 'sbiesty2r@mtv.com', '1475601840', 1, TO_DATE('1984-05-11', 'yyyy-mm-dd'), NULL, 96, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (101, 'Adiana', 'Vasilchenko', 'avasilchenko2s@imgur.com', '3981029488', 1, TO_DATE('1975-05-11', 'yyyy-mm-dd'), NULL, 89, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (102, 'Aline', 'Hallbord', 'ahallbord2t@google.ru', '6488106546', 1, TO_DATE('1959-08-18', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (103, 'Tyson', 'Vesque', 'tvesque2u@sogou.com', '1953430740', 1, TO_DATE('2001-06-12', 'yyyy-mm-dd'), NULL, 70, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (104, 'Bernardo', 'Aupol', 'baupol2v@sphinn.com', '6651880098', 1, TO_DATE('1963-06-25', 'yyyy-mm-dd'), NULL, 72, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (105, 'Lynnea', 'Cuningham', 'lcuningham2w@mozilla.org', '8121939755', 1, TO_DATE('1973-04-14', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (106, 'Dulcine', 'Seczyk', 'dseczyk2x@accuweather.com', '6330460744', 1, TO_DATE('1953-12-12', 'yyyy-mm-dd'), NULL, 35, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (107, 'Marabel', 'Sparrowe', 'msparrowe2y@twitter.com', '5496206154', 1, TO_DATE('1956-07-22', 'yyyy-mm-dd'), NULL, 10, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (108, 'Norma', 'Stonestreet', 'nstonestreet2z@jiathis.com', '5635155596', 1, TO_DATE('1985-12-04', 'yyyy-mm-dd'), NULL, 1, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (109, 'Grover', 'Hellwing', 'ghellwing30@indiatimes.com', '0538403748', 1, TO_DATE('1967-02-26', 'yyyy-mm-dd'), NULL, 43, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (110, 'Nicolette', 'Cantor', 'ncantor31@technorati.com', '1100203583', 1, TO_DATE('1993-09-04', 'yyyy-mm-dd'), NULL, 56, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (111, 'Connor', 'Blasl', 'cblasl32@state.gov', '6465504812', 1, TO_DATE('1986-10-21', 'yyyy-mm-dd'), TO_DATE('2005-08-26', 'yyyy-mm-dd'), 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (112, 'Celene', 'Hairesnape', 'chairesnape33@berkeley.edu', '4918445977', 1, TO_DATE('1992-03-12', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (113, 'Lind', 'Kamienski', 'lkamienski34@clickbank.net', '9159194294', 1, TO_DATE('1983-04-13', 'yyyy-mm-dd'), NULL, 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (114, 'Carlin', 'Andrat', 'candrat35@ameblo.jp', '3717191713', 1, TO_DATE('1999-12-25', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (115, 'Nichole', 'Hewes', 'nhewes36@ifeng.com', '3423050888', 1, TO_DATE('2000-10-02', 'yyyy-mm-dd'), NULL, 48, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (116, 'Pip', 'Axten', 'paxten37@wix.com', '6690825388', 1, TO_DATE('1963-09-06', 'yyyy-mm-dd'), NULL, 76, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (117, 'Trudey', 'Sandon', 'tsandon38@biblegateway.com', '9356874204', 1, TO_DATE('1955-08-06', 'yyyy-mm-dd'), TO_DATE('2007-08-04', 'yyyy-mm-dd'), 40, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (118, 'Eugenio', 'Earnshaw', 'eearnshaw39@phoca.cz', '3721722981', 1, TO_DATE('1962-07-19', 'yyyy-mm-dd'), NULL, 46, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (119, 'Hashim', 'McCart', 'hmccart3a@360.cn', '7582996887', 1, TO_DATE('1988-10-28', 'yyyy-mm-dd'), NULL, 71, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (120, 'Jamesy', 'Trewhela', 'jtrewhela3b@google.co.uk', '1009410202', 1, TO_DATE('1982-10-03', 'yyyy-mm-dd'), NULL, 1, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (121, 'Coop', 'Bissett', 'cbissett3c@angelfire.com', '4131668203', 1, TO_DATE('1981-10-24', 'yyyy-mm-dd'), NULL, 84, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (122, 'Wainwright', 'Reddie', 'wreddie3d@archive.org', '0651137160', 1, TO_DATE('1971-12-24', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (123, 'Steward', 'Houtbie', 'shoutbie3e@hatena.ne.jp', '7142314532', 1, TO_DATE('1951-03-06', 'yyyy-mm-dd'), NULL, 51, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (124, 'Anabella', 'Blaschke', 'ablaschke3f@pinterest.com', '9556504478', 1, TO_DATE('1981-06-24', 'yyyy-mm-dd'), NULL, 61, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (125, 'Alane', 'Throssell', 'athrossell3g@imgur.com', '6647443169', 1, TO_DATE('1973-02-21', 'yyyy-mm-dd'), NULL, 32, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (126, 'Omar', 'Boniface', 'oboniface3h@alexa.com', '9095985814', 1, TO_DATE('1999-09-26', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (127, 'Smith', 'Farey', 'sfarey3i@kickstarter.com', '9150690299', 1, TO_DATE('1977-12-12', 'yyyy-mm-dd'), NULL, 95, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (128, 'Erroll', 'Skip', 'eskip3j@si.edu', '8009091634', 1, TO_DATE('1976-03-18', 'yyyy-mm-dd'), NULL, 98, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (129, 'Goraud', 'Sauniere', 'gsauniere3k@comsenz.com', '8822752716', 1, TO_DATE('1994-07-26', 'yyyy-mm-dd'), NULL, 79, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (130, 'Clayborn', 'Gjerde', 'cgjerde3l@bloomberg.com', '7648517663', 1, TO_DATE('1987-12-11', 'yyyy-mm-dd'), TO_DATE('2017-05-29', 'yyyy-mm-dd'), 27, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (131, 'Lorelei', 'Mcall', 'lmcall3m@blogger.com', '4225700704', 1, TO_DATE('1963-09-06', 'yyyy-mm-dd'), NULL, 51, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (132, 'Mari', 'Kemet', 'mkemet3n@marketwatch.com', '0353162280', 1, TO_DATE('1972-08-29', 'yyyy-mm-dd'), NULL, 60, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (133, 'Marcus', 'Hedin', 'mhedin3o@jugem.jp', '6322386107', 1, TO_DATE('1988-08-30', 'yyyy-mm-dd'), NULL, 33, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (134, 'Lynnell', 'Cottel', 'lcottel3p@ted.com', '9422180856', 1, TO_DATE('1987-01-12', 'yyyy-mm-dd'), NULL, 85, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (135, 'Tansy', 'Begent', 'tbegent3q@themeforest.net', '3882558342', 1, TO_DATE('1988-12-02', 'yyyy-mm-dd'), NULL, 68, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (136, 'Pansie', 'Clemmensen', 'pclemmensen3r@usa.gov', '9303430700', 1, TO_DATE('1989-04-19', 'yyyy-mm-dd'), NULL, 44, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (137, 'Phillida', 'Cobain', 'pcobain3s@dailymotion.com', '1220056235', 1, TO_DATE('1986-08-14', 'yyyy-mm-dd'), NULL, 74, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (138, 'Gustave', 'Kops', 'gkops3t@epa.gov', '5628816558', 1, TO_DATE('1967-06-25', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (139, 'Livvie', 'Setterington', 'lsetterington3u@usa.gov', '1514189488', 1, TO_DATE('1966-11-25', 'yyyy-mm-dd'), TO_DATE('2016-01-23', 'yyyy-mm-dd'), 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (140, 'Willetta', 'Kneath', 'wkneath3v@bigcartel.com', '7917762971', 1, TO_DATE('1956-03-12', 'yyyy-mm-dd'), NULL, 17, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (141, 'Den', 'Fideler', 'dfideler3w@a8.net', '4562609036', 1, TO_DATE('1987-01-07', 'yyyy-mm-dd'), NULL, 71, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (142, 'Kial', 'Stenet', 'kstenet3x@businessweek.com', '3595225414', 1, TO_DATE('1969-03-10', 'yyyy-mm-dd'), TO_DATE('2016-08-15', 'yyyy-mm-dd'), 85, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (143, 'Tersina', 'Lalley', 'tlalley3y@fotki.com', '1158436556', 1, TO_DATE('1987-12-31', 'yyyy-mm-dd'), NULL, 82, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (144, 'Stephan', 'Filtness', 'sfiltness3z@unicef.org', '1452212864', 1, TO_DATE('1951-01-22', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (145, 'Clarisse', 'Bourner', 'cbourner40@hud.gov', '7411568848', 1, TO_DATE('1969-11-20', 'yyyy-mm-dd'), NULL, 3, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (146, 'Leonard', 'Tran', 'ltran41@symantec.com', '7845086614', 1, TO_DATE('1962-03-11', 'yyyy-mm-dd'), NULL, 85, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (147, 'Gare', 'Kunkler', 'gkunkler42@tinyurl.com', '7392900781', 1, TO_DATE('2000-03-31', 'yyyy-mm-dd'), NULL, 18, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (148, 'Aguie', 'Simla', 'asimla43@barnesandnoble.com', '6193718044', 1, TO_DATE('2001-08-18', 'yyyy-mm-dd'), NULL, 52, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (149, 'Rubina', 'Trenfield', 'rtrenfield44@addthis.com', '5389309405', 1, TO_DATE('1982-01-08', 'yyyy-mm-dd'), NULL, 41, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (150, 'Brandon', 'Keizman', 'bkeizman45@indiatimes.com', '1338399969', 1, TO_DATE('1988-07-05', 'yyyy-mm-dd'), NULL, 23, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (151, 'Gran', 'Fawcitt', 'gfawcitt46@freewebs.com', '9165934830', 1, TO_DATE('1990-05-10', 'yyyy-mm-dd'), NULL, 62, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (152, 'Issy', 'Tichner', 'itichner47@businessinsider.com', '2579960228', 1, TO_DATE('2000-11-21', 'yyyy-mm-dd'), NULL, 48, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (153, 'Biddy', 'Klemensiewicz', 'bklemensiewicz48@yahoo.com', '1332136974', 1, TO_DATE('1996-09-21', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (154, 'Davin', 'Tailby', 'dtailby49@indiatimes.com', '4421134058', 1, TO_DATE('1972-08-26', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (155, 'Lulu', 'Upstone', 'lupstone4a@ucsd.edu', '3238527525', 1, TO_DATE('1968-08-20', 'yyyy-mm-dd'), TO_DATE('2006-05-10', 'yyyy-mm-dd'), 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (156, 'Zsa zsa', 'Volker', 'zvolker4b@europa.eu', '6632337511', 1, TO_DATE('1956-06-08', 'yyyy-mm-dd'), NULL, 81, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (157, 'Devonne', 'Scoles', 'dscoles4c@ucoz.ru', '5575586340', 1, TO_DATE('1972-11-27', 'yyyy-mm-dd'), TO_DATE('2018-12-18', 'yyyy-mm-dd'), 96, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (158, 'Meredith', 'Buttner', 'mbuttner4d@prlog.org', '4408787701', 1, TO_DATE('1971-04-10', 'yyyy-mm-dd'), NULL, 31, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (159, 'Michael', 'Norcock', 'mnorcock4e@wp.com', '8621541122', 1, TO_DATE('1981-04-26', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (160, 'Polly', 'Kocher', 'pkocher4f@oaic.gov.au', '6707693506', 1, TO_DATE('1991-12-12', 'yyyy-mm-dd'), NULL, 38, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (161, 'Tuesday', 'Dibben', 'tdibben4g@businessinsider.com', '7994295622', 1, TO_DATE('1959-11-06', 'yyyy-mm-dd'), NULL, 33, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (162, 'Arabella', 'Espino', 'aespino4h@woothemes.com', '2631012739', 1, TO_DATE('1956-03-10', 'yyyy-mm-dd'), NULL, 34, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (163, 'Aurea', 'Beggin', 'abeggin4i@vk.com', '2744437867', 1, TO_DATE('1967-09-15', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (164, 'Hugh', 'Reddlesden', 'hreddlesden4j@apple.com', '9529172265', 1, TO_DATE('1971-03-18', 'yyyy-mm-dd'), NULL, 54, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (165, 'Sasha', 'Thorrington', 'sthorrington4k@istockphoto.com', '5624314396', 1, TO_DATE('1962-05-15', 'yyyy-mm-dd'), NULL, 86, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (166, 'Artemas', 'Pock', 'apock4l@spiegel.de', '3948154511', 1, TO_DATE('1960-09-20', 'yyyy-mm-dd'), NULL, 49, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (167, 'Keefe', 'Hammatt', 'khammatt4m@nydailynews.com', '8213488334', 1, TO_DATE('2001-06-14', 'yyyy-mm-dd'), NULL, 62, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (168, 'Winnie', 'Niblett', 'wniblett4n@canalblog.com', '8682963590', 1, TO_DATE('1997-01-06', 'yyyy-mm-dd'), NULL, 64, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (169, 'Jeralee', 'Fomichkin', 'jfomichkin4o@illinois.edu', '3302457960', 1, TO_DATE('1950-11-15', 'yyyy-mm-dd'), NULL, 99, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (170, 'Web', 'Glawsop', 'wglawsop4p@skyrock.com', '1378653939', 1, TO_DATE('1974-11-20', 'yyyy-mm-dd'), NULL, 83, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (171, 'Olly', 'Fawdrey', 'ofawdrey4q@rakuten.co.jp', '5146868484', 1, TO_DATE('1979-09-02', 'yyyy-mm-dd'), NULL, 36, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (172, 'Justinn', 'Dorgan', 'jdorgan4r@nydailynews.com', '8804206101', 1, TO_DATE('1957-04-18', 'yyyy-mm-dd'), NULL, 84, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (173, 'Rosabelle', 'Adamiak', 'radamiak4s@fema.gov', '4466462364', 1, TO_DATE('1964-01-07', 'yyyy-mm-dd'), TO_DATE('2015-08-04', 'yyyy-mm-dd'), 50, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (174, 'Carolina', 'Pickford', 'cpickford4t@hp.com', '5420295563', 1, TO_DATE('1972-10-25', 'yyyy-mm-dd'), NULL, 54, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (175, 'Franz', 'Paradis', 'fparadis4u@bing.com', '4970140340', 1, TO_DATE('1955-10-26', 'yyyy-mm-dd'), TO_DATE('2018-02-15', 'yyyy-mm-dd'), 41, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (176, 'Gherardo', 'MacCarter', 'gmaccarter4v@de.vu', '8538787306', 1, TO_DATE('1988-08-19', 'yyyy-mm-dd'), NULL, 30, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (177, 'Ray', 'Reuss', 'rreuss4w@imageshack.us', '9827071750', 1, TO_DATE('1982-08-15', 'yyyy-mm-dd'), NULL, 67, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (178, 'Arlyn', 'Winckle', 'awinckle4x@xrea.com', '0937968498', 1, TO_DATE('1956-04-08', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (179, 'Kaspar', 'Ertel', 'kertel4y@timesonline.co.uk', '4324030146', 1, TO_DATE('1967-11-11', 'yyyy-mm-dd'), NULL, 65, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (180, 'Sheelagh', 'Gherardi', 'sgherardi4z@delicious.com', '3300833418', 1, TO_DATE('1997-10-10', 'yyyy-mm-dd'), NULL, 51, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (181, 'Hammad', 'Gergely', 'hgergely50@icq.com', '8698211739', 1, TO_DATE('1987-09-17', 'yyyy-mm-dd'), NULL, 83, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (182, 'Homer', 'Ghidelli', 'hghidelli51@mayoclinic.com', '0297946234', 1, TO_DATE('1956-10-16', 'yyyy-mm-dd'), NULL, 86, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (183, 'Roxane', 'Fink', 'rfink52@unesco.org', '4369999847', 1, TO_DATE('1995-10-01', 'yyyy-mm-dd'), NULL, 67, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (184, 'Martainn', 'Robel', 'mrobel53@usnews.com', '9238738823', 1, TO_DATE('1957-11-24', 'yyyy-mm-dd'), NULL, 52, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (185, 'Maynard', 'Carloni', 'mcarloni54@hostgator.com', '8953471656', 1, TO_DATE('1996-07-13', 'yyyy-mm-dd'), TO_DATE('2009-12-12', 'yyyy-mm-dd'), 94, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (186, 'Salem', 'Brettor', 'sbrettor55@fastcompany.com', '2114884961', 1, TO_DATE('1968-01-13', 'yyyy-mm-dd'), NULL, 65, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (187, 'Janka', 'Macari', 'jmacari56@vinaora.com', '5081095273', 1, TO_DATE('1971-01-26', 'yyyy-mm-dd'), NULL, 67, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (188, 'Dasha', 'Trubshaw', 'dtrubshaw57@symantec.com', '9120922531', 1, TO_DATE('1984-11-07', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (189, 'Margarethe', 'Bilney', 'mbilney58@vinaora.com', '9466851691', 1, TO_DATE('1992-02-07', 'yyyy-mm-dd'), NULL, 90, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (190, 'Timmy', 'Castanares', 'tcastanares59@ocn.ne.jp', '0995847142', 1, TO_DATE('1991-07-27', 'yyyy-mm-dd'), NULL, 12, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (191, 'Libbi', 'Abbatt', 'labbatt5a@ameblo.jp', '6026873554', 1, TO_DATE('1952-05-19', 'yyyy-mm-dd'), NULL, 25, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (192, 'Boycey', 'Walster', 'bwalster5b@marriott.com', '4060688754', 1, TO_DATE('1975-09-27', 'yyyy-mm-dd'), NULL, 81, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (193, 'Merle', 'Coull', 'mcoull5c@columbia.edu', '4243834334', 1, TO_DATE('1974-12-30', 'yyyy-mm-dd'), NULL, 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (194, 'Link', 'Petley', 'lpetley5d@technorati.com', '2234188695', 1, TO_DATE('1970-03-13', 'yyyy-mm-dd'), NULL, 73, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (195, 'Farrah', 'Weldrick', 'fweldrick5e@senate.gov', '9817781429', 1, TO_DATE('1963-12-21', 'yyyy-mm-dd'), TO_DATE('2009-09-08', 'yyyy-mm-dd'), 5, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (196, 'Fallon', 'Kelshaw', 'fkelshaw5f@taobao.com', '4109620732', 1, TO_DATE('1984-08-03', 'yyyy-mm-dd'), NULL, 86, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (197, 'L;urette', 'Hought', 'lhought5g@google.de', '9804973014', 1, TO_DATE('1961-09-28', 'yyyy-mm-dd'), NULL, 82, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (198, 'Garfield', 'Swettenham', 'gswettenham5h@livejournal.com', '1313794635', 1, TO_DATE('1970-07-27', 'yyyy-mm-dd'), NULL, 85, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (199, 'Nathanael', 'Aspy', 'naspy5i@mozilla.com', '9615670804', 1, TO_DATE('1972-03-20', 'yyyy-mm-dd'), NULL, 72, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (200, 'Corella', 'Cholonin', 'ccholonin5j@people.com.cn', '7519357333', 1, TO_DATE('1980-08-27', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (201, 'Goldarina', 'Empringham', 'gempringham5k@cbsnews.com', '8036729350', 1, TO_DATE('1976-10-21', 'yyyy-mm-dd'), NULL, 45, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (202, 'Suzette', 'Haacker', 'shaacker5l@com.com', '0252646401', 1, TO_DATE('1994-07-10', 'yyyy-mm-dd'), NULL, 46, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (203, 'Ronnie', 'de Zamora', 'rdezamora5m@topsy.com', '5596502480', 1, TO_DATE('1992-05-19', 'yyyy-mm-dd'), TO_DATE('2008-04-15', 'yyyy-mm-dd'), 64, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (204, 'Herbert', 'Bonus', 'hbonus5n@dagondesign.com', '6842711606', 1, TO_DATE('1967-11-19', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (205, 'Tera', 'Tollerfield', 'ttollerfield5o@soundcloud.com', '5818615995', 1, TO_DATE('1975-08-02', 'yyyy-mm-dd'), NULL, 94, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (206, 'Hazel', 'Brummell', 'hbrummell5p@goo.gl', '6812076511', 1, TO_DATE('1986-12-14', 'yyyy-mm-dd'), TO_DATE('2002-04-24', 'yyyy-mm-dd'), 32, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (207, 'Fianna', 'Sowersby', 'fsowersby5q@list-manage.com', '2293417964', 1, TO_DATE('1977-07-29', 'yyyy-mm-dd'), NULL, 50, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (208, 'Mercy', 'Doll', 'mdoll5r@wufoo.com', '4852908672', 1, TO_DATE('1972-07-31', 'yyyy-mm-dd'), NULL, 81, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (209, 'Casey', 'Mosedale', 'cmosedale5s@berkeley.edu', '3864200733', 1, TO_DATE('1965-06-01', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (210, 'Darell', 'Garie', 'dgarie5t@businesswire.com', '9723885913', 1, TO_DATE('1993-03-15', 'yyyy-mm-dd'), NULL, 75, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (211, 'Bernard', 'Castille', 'bcastille5u@google.it', '2350101932', 1, TO_DATE('1964-09-25', 'yyyy-mm-dd'), NULL, 73, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (212, 'Hasty', 'Burmaster', 'hburmaster5v@networksolutions.com', '3049304146', 1, TO_DATE('1965-02-24', 'yyyy-mm-dd'), NULL, 17, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (213, 'Laurette', 'Ferrand', 'lferrand5w@ebay.co.uk', '2661372261', 1, TO_DATE('1978-11-16', 'yyyy-mm-dd'), NULL, 59, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (214, 'Tammi', 'Macenzy', 'tmacenzy5x@comsenz.com', '4289171877', 1, TO_DATE('1960-12-22', 'yyyy-mm-dd'), NULL, 89, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (215, 'Ingar', 'Botwood', 'ibotwood5y@tinyurl.com', '0049364715', 1, TO_DATE('1990-07-29', 'yyyy-mm-dd'), NULL, 9, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (216, 'Garth', 'Ribchester', 'gribchester5z@nba.com', '2555314105', 1, TO_DATE('1957-10-08', 'yyyy-mm-dd'), NULL, 60, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (217, 'Harwell', 'Bartozzi', 'hbartozzi60@youku.com', '0214536920', 1, TO_DATE('1970-10-25', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (218, 'Thaddus', 'Reddel', 'treddel61@berkeley.edu', '2933617625', 1, TO_DATE('1970-06-09', 'yyyy-mm-dd'), NULL, 39, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (219, 'Sophi', 'Pinnigar', 'spinnigar62@examiner.com', '1993512519', 1, TO_DATE('1958-06-24', 'yyyy-mm-dd'), NULL, 87, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (220, 'Hilary', 'Kerrich', 'hkerrich63@ameblo.jp', '1543428436', 1, TO_DATE('1972-08-18', 'yyyy-mm-dd'), NULL, 48, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (221, 'Nanon', 'Guitton', 'nguitton64@google.co.jp', '9585566338', 1, TO_DATE('1981-10-16', 'yyyy-mm-dd'), NULL, 5, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (222, 'Salvidor', 'Littlefield', 'slittlefield65@infoseek.co.jp', '4639097778', 1, TO_DATE('1996-05-24', 'yyyy-mm-dd'), NULL, 60, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (223, 'Olly', 'Tomala', 'otomala66@uiuc.edu', '1338109197', 1, TO_DATE('1976-03-17', 'yyyy-mm-dd'), NULL, 41, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (224, 'Cybil', 'Aucott', 'caucott67@dagondesign.com', '7576071060', 1, TO_DATE('1977-01-06', 'yyyy-mm-dd'), NULL, 23, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (225, 'Jonathon', 'Magnay', 'jmagnay68@parallels.com', '1155578724', 1, TO_DATE('1992-07-21', 'yyyy-mm-dd'), NULL, 48, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (226, 'Bevon', 'Kemmett', 'bkemmett69@auda.org.au', '3464558096', 1, TO_DATE('1970-11-18', 'yyyy-mm-dd'), NULL, 44, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (227, 'Pollyanna', 'Phripp', 'pphripp6a@unblog.fr', '1555787258', 1, TO_DATE('1965-09-28', 'yyyy-mm-dd'), NULL, 40, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (228, 'Osgood', 'Goligher', 'ogoligher6b@marriott.com', '9407325784', 1, TO_DATE('1964-11-03', 'yyyy-mm-dd'), TO_DATE('2017-05-16', 'yyyy-mm-dd'), 90, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (229, 'Marrissa', 'Bending', 'mbending6c@shareasale.com', '8921806512', 1, TO_DATE('1971-11-20', 'yyyy-mm-dd'), NULL, 78, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (230, 'Gardiner', 'Munnings', 'gmunnings6d@ftc.gov', '2117607772', 1, TO_DATE('1966-04-01', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (231, 'Novelia', 'Handover', 'nhandover6e@netscape.com', '9315599977', 1, TO_DATE('1977-10-04', 'yyyy-mm-dd'), NULL, 60, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (232, 'Virgie', 'O''Hannigan', 'vohannigan6f@paginegialle.it', '4033175237', 1, TO_DATE('1964-09-12', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (233, 'Cletus', 'Treadgall', 'ctreadgall6g@trellian.com', '0190036311', 1, TO_DATE('2000-08-18', 'yyyy-mm-dd'), NULL, 39, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (234, 'Jenica', 'Gwyllt', 'jgwyllt6h@zimbio.com', '9532493549', 1, TO_DATE('1959-08-12', 'yyyy-mm-dd'), NULL, 95, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (235, 'Neddy', 'Maddyson', 'nmaddyson6i@github.io', '3024506322', 1, TO_DATE('1987-05-02', 'yyyy-mm-dd'), TO_DATE('2012-05-04', 'yyyy-mm-dd'), 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (236, 'Thacher', 'Bellingham', 'tbellingham6j@sourceforge.net', '2387111745', 1, TO_DATE('1974-05-04', 'yyyy-mm-dd'), NULL, 40, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (237, 'Ned', 'Probert', 'nprobert6k@g.co', '0429621663', 1, TO_DATE('1951-07-23', 'yyyy-mm-dd'), NULL, 64, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (238, 'Irma', 'Upcott', 'iupcott6l@about.me', '8286335910', 1, TO_DATE('1951-04-13', 'yyyy-mm-dd'), NULL, 17, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (239, 'Cecilius', 'Lamke', 'clamke6m@ustream.tv', '9094849992', 1, TO_DATE('1951-03-31', 'yyyy-mm-dd'), NULL, 67, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (240, 'Fax', 'Smelley', 'fsmelley6n@goodreads.com', '3783937671', 1, TO_DATE('1986-06-01', 'yyyy-mm-dd'), NULL, 96, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (241, 'Kaia', 'Iggulden', 'kiggulden6o@washington.edu', '5090771707', 1, TO_DATE('1973-10-27', 'yyyy-mm-dd'), NULL, 73, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (242, 'Raymund', 'Gedling', 'rgedling6p@chicagotribune.com', '3956245059', 1, TO_DATE('1980-03-06', 'yyyy-mm-dd'), TO_DATE('2010-12-15', 'yyyy-mm-dd'), 85, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (243, 'Chlo', 'Buckston', 'cbuckston6q@princeton.edu', '8763722216', 1, TO_DATE('1991-10-05', 'yyyy-mm-dd'), NULL, 77, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (244, 'Ginnie', 'Febry', 'gfebry6r@un.org', '9667628639', 1, TO_DATE('1970-12-25', 'yyyy-mm-dd'), NULL, 63, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (245, 'Layla', 'Cotton', 'lcotton6s@tumblr.com', '7458184957', 1, TO_DATE('1979-08-18', 'yyyy-mm-dd'), NULL, 21, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (246, 'Kimmy', 'Glandfield', 'kglandfield6t@state.tx.us', '0043440029', 1, TO_DATE('1990-03-16', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (247, 'Elsbeth', 'Cullotey', 'ecullotey6u@telegraph.co.uk', '2782790129', 1, TO_DATE('1961-12-14', 'yyyy-mm-dd'), NULL, 39, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (248, 'Alexandr', 'Wordsworth', 'awordsworth6v@msu.edu', '7896027844', 1, TO_DATE('1961-08-20', 'yyyy-mm-dd'), NULL, 43, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (249, 'Trumaine', 'Lambswood', 'tlambswood6w@nhs.uk', '0851744486', 1, TO_DATE('1976-10-07', 'yyyy-mm-dd'), NULL, 50, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (250, 'Raquel', 'Cosson', 'rcosson6x@ow.ly', '8790698657', 1, TO_DATE('1992-06-23', 'yyyy-mm-dd'), NULL, 80, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (251, 'Leena', 'Seivwright', 'lseivwright6y@bbc.co.uk', '5069489232', 1, TO_DATE('1983-09-04', 'yyyy-mm-dd'), NULL, 31, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (252, 'Hi', 'Aldins', 'haldins6z@angelfire.com', '9754433070', 1, TO_DATE('1963-03-15', 'yyyy-mm-dd'), NULL, 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (253, 'Natty', 'Toffoloni', 'ntoffoloni70@printfriendly.com', '7677896375', 1, TO_DATE('1990-04-17', 'yyyy-mm-dd'), NULL, 7, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (254, 'Joceline', 'McLarty', 'jmclarty71@vinaora.com', '9761698181', 1, TO_DATE('2001-09-16', 'yyyy-mm-dd'), NULL, 34, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (255, 'Trey', 'Spawell', 'tspawell72@trellian.com', '5142962842', 1, TO_DATE('1971-10-20', 'yyyy-mm-dd'), NULL, 42, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (256, 'Orrin', 'Elie', 'oelie73@paypal.com', '0608144657', 1, TO_DATE('1956-12-26', 'yyyy-mm-dd'), NULL, 30, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (257, 'Johnath', 'Cradoc', 'jcradoc74@irs.gov', '2083994884', 1, TO_DATE('1966-05-31', 'yyyy-mm-dd'), NULL, 38, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (258, 'Valentijn', 'Rable', 'vrable75@vimeo.com', '3508091643', 1, TO_DATE('1986-01-18', 'yyyy-mm-dd'), NULL, 100, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (259, 'Tiertza', 'Gitting', 'tgitting76@theatlantic.com', '9940164289', 1, TO_DATE('1977-12-29', 'yyyy-mm-dd'), NULL, 69, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (260, 'Travus', 'Peaker', 'tpeaker77@theatlantic.com', '1183822901', 1, TO_DATE('1956-10-07', 'yyyy-mm-dd'), NULL, 87, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (261, 'Lock', 'Perrigo', 'lperrigo78@ox.ac.uk', '9824986618', 1, TO_DATE('1965-12-18', 'yyyy-mm-dd'), NULL, 74, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (262, 'Keen', 'Scotchmoor', 'kscotchmoor79@sitemeter.com', '0390562785', 1, TO_DATE('1957-11-26', 'yyyy-mm-dd'), NULL, 18, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (263, 'Blair', 'Blenkensop', 'bblenkensop7a@webeden.co.uk', '4236470276', 1, TO_DATE('1966-10-31', 'yyyy-mm-dd'), TO_DATE('2012-09-27', 'yyyy-mm-dd'), 20, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (264, 'Clarice', 'Plewright', 'cplewright7b@taobao.com', '9549362388', 1, TO_DATE('1992-07-16', 'yyyy-mm-dd'), NULL, 57, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (265, 'Cissiee', 'Patron', 'cpatron7c@biglobe.ne.jp', '5551399885', 1, TO_DATE('1970-03-24', 'yyyy-mm-dd'), NULL, 29, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (266, 'Daryle', 'Liebermann', 'dliebermann7d@aboutads.info', '6711149009', 1, TO_DATE('1997-02-24', 'yyyy-mm-dd'), NULL, 67, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (267, 'Brandy', 'Stovold', 'bstovold7e@moonfruit.com', '1382837100', 1, TO_DATE('1971-01-23', 'yyyy-mm-dd'), NULL, 67, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (268, 'Marinna', 'Kenen', 'mkenen7f@senate.gov', '7073007974', 1, TO_DATE('1956-02-03', 'yyyy-mm-dd'), NULL, 81, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (269, 'Ailee', 'Bence', 'abence7g@guardian.co.uk', '8422569663', 1, TO_DATE('1977-11-11', 'yyyy-mm-dd'), NULL, 22, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (270, 'Lorne', 'Greenalf', 'lgreenalf7h@buzzfeed.com', '5858203396', 1, TO_DATE('1970-07-05', 'yyyy-mm-dd'), NULL, 98, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (271, 'Jenifer', 'Petru', 'jpetru7i@disqus.com', '4317796767', 1, TO_DATE('1966-01-05', 'yyyy-mm-dd'), NULL, 49, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (272, 'Elicia', 'Foat', 'efoat7j@phpbb.com', '4821348179', 1, TO_DATE('1958-06-21', 'yyyy-mm-dd'), NULL, 14, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (273, 'Konstantine', 'Philliphs', 'kphilliphs7k@t.co', '5991058822', 1, TO_DATE('1969-07-10', 'yyyy-mm-dd'), NULL, 71, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (274, 'Pyotr', 'Stilliard', 'pstilliard7l@wikipedia.org', '3243699126', 1, TO_DATE('1994-09-14', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (275, 'Susann', 'Arstingall', 'sarstingall7m@issuu.com', '4533238785', 1, TO_DATE('1962-10-03', 'yyyy-mm-dd'), TO_DATE('2010-08-27', 'yyyy-mm-dd'), 68, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (276, 'Arlene', 'Burgot', 'aburgot7n@arizona.edu', '6521447068', 1, TO_DATE('1959-07-04', 'yyyy-mm-dd'), NULL, 88, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (277, 'Micki', 'Allix', 'mallix7o@nps.gov', '3679462565', 1, TO_DATE('1991-05-21', 'yyyy-mm-dd'), NULL, 64, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (278, 'Fina', 'Evemy', 'fevemy7p@toplist.cz', '4102664696', 1, TO_DATE('1957-05-15', 'yyyy-mm-dd'), NULL, 26, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (279, 'Cecelia', 'Sturridge', 'csturridge7q@tinyurl.com', '3307470833', 1, TO_DATE('1968-12-19', 'yyyy-mm-dd'), NULL, 87, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (280, 'Gan', 'Searston', 'gsearston7r@odnoklassniki.ru', '2976031509', 1, TO_DATE('1990-11-12', 'yyyy-mm-dd'), NULL, 40, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (281, 'Vanny', 'Monier', 'vmonier7s@sina.com.cn', '3731721414', 1, TO_DATE('1957-12-22', 'yyyy-mm-dd'), NULL, 57, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (282, 'Denver', 'Samber', 'dsamber7t@psu.edu', '9989480974', 1, TO_DATE('1964-04-16', 'yyyy-mm-dd'), NULL, 70, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (283, 'Sheena', 'Swales', 'sswales7u@statcounter.com', '7110377725', 1, TO_DATE('1975-09-14', 'yyyy-mm-dd'), NULL, 29, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (284, 'Gerry', 'Crockford', 'gcrockford7v@disqus.com', '2844464742', 1, TO_DATE('1981-08-09', 'yyyy-mm-dd'), NULL, 97, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (285, 'Mirabelle', 'Stollmeier', 'mstollmeier7w@cnbc.com', '8708857318', 1, TO_DATE('1984-10-01', 'yyyy-mm-dd'), NULL, 33, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (286, 'Carly', 'Brown', 'cbrown7x@icio.us', '8433923420', 1, TO_DATE('1963-01-09', 'yyyy-mm-dd'), TO_DATE('2017-08-13', 'yyyy-mm-dd'), 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (287, 'Chandler', 'Ord', 'cord7y@noaa.gov', '4879183784', 1, TO_DATE('1958-05-09', 'yyyy-mm-dd'), NULL, 77, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (288, 'Arly', 'Ducham', 'aducham7z@fastcompany.com', '4525703717', 1, TO_DATE('1965-09-07', 'yyyy-mm-dd'), NULL, 5, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (289, 'Rossie', 'Napleton', 'rnapleton80@tuttocitta.it', '6823204214', 1, TO_DATE('1988-08-03', 'yyyy-mm-dd'), NULL, 5, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (290, 'Elysia', 'Strank', 'estrank81@ucoz.ru', '9037430015', 1, TO_DATE('1973-02-07', 'yyyy-mm-dd'), NULL, 30, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (291, 'Avivah', 'D'' Angelo', 'adangelo82@eepurl.com', '9888889869', 1, TO_DATE('1992-07-11', 'yyyy-mm-dd'), NULL, 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (292, 'Kathrine', 'Van T''Hoog', 'kvanthoog83@bloglovin.com', '9165365054', 1, TO_DATE('1993-08-23', 'yyyy-mm-dd'), NULL, 44, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (293, 'Ethelin', 'Cake', 'ecake84@businessinsider.com', '1195106793', 1, TO_DATE('1967-02-08', 'yyyy-mm-dd'), NULL, 87, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (294, 'Nealon', 'Gloves', 'ngloves85@toplist.cz', '8311056684', 1, TO_DATE('1994-11-23', 'yyyy-mm-dd'), NULL, 20, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (295, 'Celie', 'Mowbray', 'cmowbray86@blinklist.com', '6728755594', 1, TO_DATE('1951-07-20', 'yyyy-mm-dd'), NULL, 12, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (296, 'Arleen', 'Leveret', 'aleveret87@vimeo.com', '7295354530', 1, TO_DATE('1964-07-20', 'yyyy-mm-dd'), NULL, 38, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (297, 'Barth', 'Lotte', 'blotte88@latimes.com', '0142012572', 1, TO_DATE('1975-03-01', 'yyyy-mm-dd'), NULL, 88, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (298, 'Rancell', 'Yarranton', 'ryarranton89@nydailynews.com', '0509770274', 1, TO_DATE('1957-03-06', 'yyyy-mm-dd'), NULL, 55, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (299, 'Maridel', 'Tebald', 'mtebald8a@tamu.edu', '6886876775', 1, TO_DATE('1953-02-23', 'yyyy-mm-dd'), NULL, 17, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (300, 'Sharl', 'Leivesley', 'sleivesley8b@prlog.org', '1912167077', 1, TO_DATE('1976-01-10', 'yyyy-mm-dd'), NULL, 1, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (301, 'Erina', 'Mackneis', 'emackneis8c@time.com', '9737557115', 1, TO_DATE('1980-10-13', 'yyyy-mm-dd'), TO_DATE('2004-01-14', 'yyyy-mm-dd'), 59, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (302, 'Neille', 'Gillean', 'ngillean8d@amazon.de', '3990460854', 1, TO_DATE('1962-08-15', 'yyyy-mm-dd'), NULL, 81, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (303, 'Trudey', 'Skurm', 'tskurm8e@statcounter.com', '6394829137', 1, TO_DATE('1951-09-02', 'yyyy-mm-dd'), NULL, 49, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (304, 'Hyacinthie', 'Foxwell', 'hfoxwell8f@foxnews.com', '5153907325', 1, TO_DATE('1966-10-14', 'yyyy-mm-dd'), NULL, 73, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (305, 'Eilis', 'Semeniuk', 'esemeniuk8g@cpanel.net', '0783650574', 1, TO_DATE('1965-11-07', 'yyyy-mm-dd'), TO_DATE('2015-06-08', 'yyyy-mm-dd'), 79, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (306, 'Dall', 'Ollarenshaw', 'dollarenshaw8h@google.com.hk', '2792995416', 1, TO_DATE('1962-09-20', 'yyyy-mm-dd'), NULL, 79, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (307, 'Gerek', 'Gilbee', 'ggilbee8i@microsoft.com', '7976761323', 1, TO_DATE('1995-02-09', 'yyyy-mm-dd'), NULL, 82, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (308, 'Xena', 'Sheasby', 'xsheasby8j@linkedin.com', '5948295885', 1, TO_DATE('1983-09-22', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (309, 'Prisca', 'Dummer', 'pdummer8k@apache.org', '6800432296', 1, TO_DATE('1955-01-31', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (310, 'Letti', 'Foort', 'lfoort8l@fc2.com', '9803316397', 1, TO_DATE('1950-07-22', 'yyyy-mm-dd'), NULL, 30, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (311, 'Kirby', 'Gabbitis', 'kgabbitis8m@ft.com', '3724143087', 1, TO_DATE('1986-03-29', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (312, 'Barnabas', 'Ekkel', 'bekkel8n@cornell.edu', '5734020079', 1, TO_DATE('1983-06-19', 'yyyy-mm-dd'), TO_DATE('2008-09-01', 'yyyy-mm-dd'), 81, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (313, 'Aguste', 'Dobbison', 'adobbison8o@nyu.edu', '9524954885', 1, TO_DATE('1957-10-13', 'yyyy-mm-dd'), NULL, 69, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (314, 'Quintin', 'Schuricht', 'qschuricht8p@odnoklassniki.ru', '6477616017', 1, TO_DATE('1986-12-23', 'yyyy-mm-dd'), NULL, 14, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (315, 'Aloisia', 'Mechem', 'amechem8q@ow.ly', '7230525314', 1, TO_DATE('1954-05-22', 'yyyy-mm-dd'), NULL, 34, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (316, 'Tammy', 'Mattiacci', 'tmattiacci8r@netvibes.com', '1386334367', 1, TO_DATE('1953-09-25', 'yyyy-mm-dd'), NULL, 45, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (317, 'Clerissa', 'McGloughlin', 'cmcgloughlin8s@seattletimes.com', '7661167344', 1, TO_DATE('1980-12-31', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (318, 'Keri', 'Tappington', 'ktappington8t@hostgator.com', '1833232496', 1, TO_DATE('1955-10-17', 'yyyy-mm-dd'), NULL, 71, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (319, 'Ogdon', 'Nancekivell', 'onancekivell8u@naver.com', '2816178722', 1, TO_DATE('1994-11-21', 'yyyy-mm-dd'), NULL, 61, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (320, 'Dunn', 'Hoopper', 'dhoopper8v@opensource.org', '7705967154', 1, TO_DATE('1959-01-10', 'yyyy-mm-dd'), NULL, 92, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (321, 'Jarib', 'Rilings', 'jrilings8w@hostgator.com', '9885587586', 1, TO_DATE('1981-07-24', 'yyyy-mm-dd'), NULL, 37, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (322, 'Griff', 'Kayes', 'gkayes8x@sohu.com', '3014243299', 1, TO_DATE('1997-08-31', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (323, 'Renata', 'Lynock', 'rlynock8y@creativecommons.org', '5739944740', 1, TO_DATE('1974-11-11', 'yyyy-mm-dd'), NULL, 14, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (324, 'Morton', 'Braidwood', 'mbraidwood8z@businessinsider.com', '4566506304', 1, TO_DATE('1969-12-19', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (325, 'Frankie', 'Lory', 'flory90@house.gov', '6980017381', 1, TO_DATE('1983-10-27', 'yyyy-mm-dd'), NULL, 9, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (326, 'Mozes', 'Pickhaver', 'mpickhaver91@people.com.cn', '1011275937', 1, TO_DATE('1971-02-13', 'yyyy-mm-dd'), NULL, 73, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (327, 'Marnie', 'Vibert', 'mvibert92@ucla.edu', '5876586757', 1, TO_DATE('2001-10-01', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (328, 'Des', 'Ricciardello', 'dricciardello93@theguardian.com', '8026443810', 1, TO_DATE('1970-07-02', 'yyyy-mm-dd'), NULL, 72, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (329, 'Puff', 'Oldacres', 'poldacres94@smh.com.au', '3250052205', 1, TO_DATE('1963-09-03', 'yyyy-mm-dd'), NULL, 45, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (330, 'Jacky', 'Leeming', 'jleeming95@typepad.com', '1404141480', 1, TO_DATE('1958-09-30', 'yyyy-mm-dd'), NULL, 12, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (331, 'Chick', 'Mawford', 'cmawford96@sciencedirect.com', '8594111460', 1, TO_DATE('1998-05-27', 'yyyy-mm-dd'), NULL, 55, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (332, 'Lolly', 'Eyrl', 'leyrl97@privacy.gov.au', '4485440710', 1, TO_DATE('1956-10-04', 'yyyy-mm-dd'), NULL, 72, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (333, 'Enrika', 'Olner', 'eolner98@addtoany.com', '3713478538', 1, TO_DATE('1971-09-16', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (334, 'Davidson', 'Roskams', 'droskams99@wufoo.com', '9529028741', 1, TO_DATE('1997-01-11', 'yyyy-mm-dd'), NULL, 30, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (335, 'Giselbert', 'Phateplace', 'gphateplace9a@amazonaws.com', '4937929445', 1, TO_DATE('1967-11-15', 'yyyy-mm-dd'), NULL, 33, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (336, 'Jenilee', 'Domange', 'jdomange9b@ca.gov', '7943708652', 1, TO_DATE('1975-06-01', 'yyyy-mm-dd'), NULL, 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (337, 'Lianne', 'Balk', 'lbalk9c@usnews.com', '4343478521', 1, TO_DATE('1989-11-21', 'yyyy-mm-dd'), NULL, 50, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (338, 'Sumner', 'Fortnum', 'sfortnum9d@dyndns.org', '0366724460', 1, TO_DATE('1980-11-17', 'yyyy-mm-dd'), NULL, 44, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (339, 'Jon', 'Sheasby', 'jsheasby9e@vimeo.com', '8823038235', 1, TO_DATE('1976-12-01', 'yyyy-mm-dd'), NULL, 45, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (340, 'Hardy', 'Freak', 'hfreak9f@about.me', '1135341621', 1, TO_DATE('1980-02-14', 'yyyy-mm-dd'), NULL, 59, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (341, 'Faustine', 'Earsman', 'fearsman9g@shareasale.com', '2087341028', 1, TO_DATE('1976-03-20', 'yyyy-mm-dd'), NULL, 60, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (342, 'Morena', 'Blindmann', 'mblindmann9h@cocolog-nifty.com', '0909856389', 1, TO_DATE('1992-07-22', 'yyyy-mm-dd'), NULL, 46, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (343, 'Nealon', 'Reeder', 'nreeder9i@jigsy.com', '8289693214', 1, TO_DATE('1982-12-09', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (344, 'Ann-marie', 'Barsham', 'abarsham9j@forbes.com', '3001652519', 1, TO_DATE('1961-02-12', 'yyyy-mm-dd'), NULL, 97, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (345, 'Korry', 'Illingsworth', 'killingsworth9k@baidu.com', '1125684356', 1, TO_DATE('2000-08-29', 'yyyy-mm-dd'), NULL, 68, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (346, 'Corey', 'Eddisford', 'ceddisford9l@i2i.jp', '1733709665', 1, TO_DATE('1958-01-02', 'yyyy-mm-dd'), NULL, 53, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (347, 'Pearce', 'Lattimore', 'plattimore9m@cloudflare.com', '6939095640', 1, TO_DATE('1993-03-31', 'yyyy-mm-dd'), TO_DATE('2014-12-27', 'yyyy-mm-dd'), 50, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (348, 'Gabie', 'Carlone', 'gcarlone9n@geocities.jp', '0644167734', 1, TO_DATE('1997-02-02', 'yyyy-mm-dd'), NULL, 60, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (349, 'Toddy', 'Aymerich', 'taymerich9o@live.com', '2047189373', 1, TO_DATE('1962-10-22', 'yyyy-mm-dd'), NULL, 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (350, 'Kiah', 'Nuschke', 'knuschke9p@loc.gov', '6022320151', 1, TO_DATE('1988-09-25', 'yyyy-mm-dd'), NULL, 68, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (351, 'Antony', 'Jeffcoate', 'ajeffcoate9q@blog.com', '3189514739', 1, TO_DATE('1999-10-07', 'yyyy-mm-dd'), NULL, 56, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (352, 'Carolus', 'Yesichev', 'cyesichev9r@purevolume.com', '0635335042', 1, TO_DATE('1987-05-07', 'yyyy-mm-dd'), NULL, 94, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (353, 'Erich', 'Hudel', 'ehudel9s@ameblo.jp', '4796574654', 1, TO_DATE('1959-10-25', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (354, 'Shelly', 'Felkin', 'sfelkin9t@fema.gov', '5653851426', 1, TO_DATE('1987-04-05', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (355, 'Kaleena', 'Mainstone', 'kmainstone9u@imgur.com', '8125453733', 1, TO_DATE('1964-06-12', 'yyyy-mm-dd'), NULL, 37, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (356, 'Elvis', 'Frear', 'efrear9v@github.io', '8504400735', 1, TO_DATE('1982-04-25', 'yyyy-mm-dd'), TO_DATE('2005-09-28', 'yyyy-mm-dd'), 41, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (357, 'Karlik', 'Broadberry', 'kbroadberry9w@accuweather.com', '8250842510', 1, TO_DATE('1963-12-14', 'yyyy-mm-dd'), TO_DATE('2012-03-07', 'yyyy-mm-dd'), 89, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (358, 'Grace', 'Horsell', 'ghorsell9x@reference.com', '3268935508', 1, TO_DATE('1998-03-20', 'yyyy-mm-dd'), TO_DATE('2016-09-13', 'yyyy-mm-dd'), 74, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (359, 'Nevins', 'Bollon', 'nbollon9y@tinyurl.com', '5265556516', 1, TO_DATE('1964-04-11', 'yyyy-mm-dd'), NULL, 7, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (360, 'Mary', 'Jephcote', 'mjephcote9z@csmonitor.com', '3728663948', 1, TO_DATE('1979-02-03', 'yyyy-mm-dd'), NULL, 89, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (361, 'Dorotea', 'Willock', 'dwillocka0@kickstarter.com', '3513959958', 1, TO_DATE('1960-02-21', 'yyyy-mm-dd'), NULL, 38, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (362, 'Marjory', 'Giamo', 'mgiamoa1@shinystat.com', '0837971802', 1, TO_DATE('2000-08-04', 'yyyy-mm-dd'), NULL, 95, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (363, 'Benjie', 'Gilson', 'bgilsona2@simplemachines.org', '6717319453', 1, TO_DATE('1955-10-29', 'yyyy-mm-dd'), NULL, 9, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (364, 'Rochette', 'Fruen', 'rfruena3@spiegel.de', '8777558308', 1, TO_DATE('1980-07-05', 'yyyy-mm-dd'), NULL, 32, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (365, 'Isa', 'Dove', 'idovea4@networksolutions.com', '6501539609', 1, TO_DATE('1979-07-07', 'yyyy-mm-dd'), NULL, 29, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (366, 'Amity', 'Florez', 'afloreza5@printfriendly.com', '3472390107', 1, TO_DATE('1962-01-19', 'yyyy-mm-dd'), NULL, 25, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (367, 'Natal', 'Hardbattle', 'nhardbattlea6@apple.com', '1153211440', 1, TO_DATE('1956-10-18', 'yyyy-mm-dd'), NULL, 28, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (368, 'Gretchen', 'Castellucci', 'gcastelluccia7@taobao.com', '1036083527', 1, TO_DATE('1986-11-14', 'yyyy-mm-dd'), NULL, 56, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (369, 'Sylvester', 'Lackner', 'slacknera8@ehow.com', '0350518955', 1, TO_DATE('1974-12-15', 'yyyy-mm-dd'), NULL, 88, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (370, 'Grenville', 'Dumbreck', 'gdumbrecka9@geocities.jp', '1093647779', 1, TO_DATE('2000-06-07', 'yyyy-mm-dd'), NULL, 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (371, 'Christiana', 'Buchett', 'cbuchettaa@plala.or.jp', '7028171027', 1, TO_DATE('1987-05-12', 'yyyy-mm-dd'), NULL, 48, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (372, 'Shelley', 'Seilmann', 'sseilmannab@google.com.au', '2357041900', 1, TO_DATE('1980-12-08', 'yyyy-mm-dd'), NULL, 43, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (373, 'Batsheva', 'Pirelli', 'bpirelliac@gravatar.com', '8921845038', 1, TO_DATE('1972-08-25', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (374, 'Pembroke', 'Crumb', 'pcrumbad@tmall.com', '6979606182', 1, TO_DATE('1981-08-05', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (375, 'Isabelita', 'Gebhard', 'igebhardae@amazon.co.uk', '1340984237', 1, TO_DATE('1957-08-29', 'yyyy-mm-dd'), NULL, 2, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (376, 'Cosette', 'Hazley', 'chazleyaf@dailymail.co.uk', '9082998246', 1, TO_DATE('1962-05-24', 'yyyy-mm-dd'), NULL, 92, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (377, 'Sanford', 'Dmitrovic', 'sdmitrovicag@mediafire.com', '6075163131', 1, TO_DATE('1958-12-02', 'yyyy-mm-dd'), NULL, 42, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (378, 'Marcos', 'Pawlick', 'mpawlickah@cbsnews.com', '3216017591', 1, TO_DATE('1969-11-19', 'yyyy-mm-dd'), NULL, 61, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (379, 'Taffy', 'Willgoose', 'twillgooseai@noaa.gov', '8446419394', 1, TO_DATE('1972-10-14', 'yyyy-mm-dd'), NULL, 55, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (380, 'Bryce', 'Cuttell', 'bcuttellaj@yolasite.com', '9319936625', 1, TO_DATE('1980-12-14', 'yyyy-mm-dd'), TO_DATE('2002-11-30', 'yyyy-mm-dd'), 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (381, 'Chelsae', 'Brezlaw', 'cbrezlawak@techcrunch.com', '1788216474', 1, TO_DATE('1980-02-07', 'yyyy-mm-dd'), NULL, 18, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (382, 'Leonora', 'Terram', 'lterramal@psu.edu', '6677993477', 1, TO_DATE('1953-03-26', 'yyyy-mm-dd'), NULL, 81, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (383, 'Bennie', 'Gonin', 'bgoninam@bravesites.com', '9564028612', 1, TO_DATE('1992-03-24', 'yyyy-mm-dd'), NULL, 9, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (384, 'Lucienne', 'De Brett', 'ldebrettan@fotki.com', '2066555371', 1, TO_DATE('1986-08-25', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (385, 'Pieter', 'Gethyn', 'pgethynao@rediff.com', '1693094304', 1, TO_DATE('1965-08-21', 'yyyy-mm-dd'), NULL, 47, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (386, 'Rosemary', 'McPhaden', 'rmcphadenap@washington.edu', '7278775353', 1, TO_DATE('1973-02-02', 'yyyy-mm-dd'), TO_DATE('2005-11-27', 'yyyy-mm-dd'), 27, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (387, 'Gwyneth', 'Sisley', 'gsisleyaq@mac.com', '2969360632', 1, TO_DATE('1964-03-26', 'yyyy-mm-dd'), NULL, 23, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (388, 'Angelica', 'Loughran', 'aloughranar@networksolutions.com', '9478806114', 1, TO_DATE('2001-02-13', 'yyyy-mm-dd'), NULL, 4, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (389, 'Robbi', 'Bentzen', 'rbentzenas@time.com', '4252674271', 1, TO_DATE('1968-12-14', 'yyyy-mm-dd'), NULL, 7, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (390, 'Natassia', 'Attreed', 'nattreedat@washington.edu', '3032236738', 1, TO_DATE('1966-03-20', 'yyyy-mm-dd'), NULL, 46, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (391, 'Hebert', 'Shirtcliffe', 'hshirtcliffeau@ucsd.edu', '5148918608', 1, TO_DATE('1997-11-30', 'yyyy-mm-dd'), NULL, 61, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (392, 'Sidnee', 'Brasener', 'sbrasenerav@examiner.com', '5561802623', 1, TO_DATE('2000-07-31', 'yyyy-mm-dd'), NULL, 34, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (393, 'Charlene', 'Mander', 'cmanderaw@studiopress.com', '4887466676', 1, TO_DATE('1960-09-26', 'yyyy-mm-dd'), NULL, 100, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (394, 'Juline', 'Burd', 'jburdax@ted.com', '5007703451', 1, TO_DATE('1967-02-22', 'yyyy-mm-dd'), NULL, 1, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (395, 'Vida', 'Laise', 'vlaiseay@spiegel.de', '4249836525', 1, TO_DATE('1977-06-15', 'yyyy-mm-dd'), NULL, 90, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (396, 'Caryl', 'Storm', 'cstormaz@hud.gov', '2265340774', 1, TO_DATE('1977-07-18', 'yyyy-mm-dd'), NULL, 99, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (397, 'Cinda', 'Manwaring', 'cmanwaringb0@twitpic.com', '0941014703', 1, TO_DATE('1962-04-16', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (398, 'Orlando', 'Fellini', 'ofellinib1@uol.com.br', '1533473579', 1, TO_DATE('1973-11-26', 'yyyy-mm-dd'), NULL, 93, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (399, 'Bentley', 'Blondelle', 'bblondelleb2@netlog.com', '7858305670', 1, TO_DATE('1980-07-05', 'yyyy-mm-dd'), NULL, 63, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (400, 'Vinni', 'Baroux', 'vbarouxb3@weather.com', '3055046056', 1, TO_DATE('1980-08-28', 'yyyy-mm-dd'), NULL, 18, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (401, 'Allyson', 'Leahey', 'aleaheyb4@statcounter.com', '8963650154', 1, TO_DATE('2001-07-01', 'yyyy-mm-dd'), NULL, 36, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (402, 'Alfons', 'Barhems', 'abarhemsb5@wix.com', '3160070115', 1, TO_DATE('1951-06-09', 'yyyy-mm-dd'), NULL, 66, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (403, 'Emmett', 'Karlolak', 'ekarlolakb6@ted.com', '9630546566', 1, TO_DATE('1951-08-06', 'yyyy-mm-dd'), TO_DATE('2003-07-20', 'yyyy-mm-dd'), 84, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (404, 'Herbert', 'Ventris', 'hventrisb7@slideshare.net', '0469605227', 1, TO_DATE('1965-04-30', 'yyyy-mm-dd'), NULL, 54, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (405, 'Town', 'Amber', 'tamberb8@people.com.cn', '6276601136', 1, TO_DATE('1998-12-28', 'yyyy-mm-dd'), NULL, 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (406, 'Ulrikaumeko', 'Batte', 'ubatteb9@fc2.com', '1188711792', 1, TO_DATE('1992-11-18', 'yyyy-mm-dd'), NULL, 17, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (407, 'Yolane', 'Wrought', 'ywroughtba@imdb.com', '5131804191', 1, TO_DATE('1984-10-24', 'yyyy-mm-dd'), NULL, 37, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (408, 'Wesley', 'Severs', 'wseversbb@youtube.com', '8915999045', 1, TO_DATE('1957-07-25', 'yyyy-mm-dd'), NULL, 24, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (409, 'Edy', 'Durbyn', 'edurbynbc@unblog.fr', '9742560196', 1, TO_DATE('1987-05-05', 'yyyy-mm-dd'), NULL, 63, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (410, 'Maryanne', 'Barcke', 'mbarckebd@gmpg.org', '2028661968', 1, TO_DATE('1994-02-24', 'yyyy-mm-dd'), NULL, 3, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (411, 'Pamela', 'Grindall', 'pgrindallbe@netscape.com', '1289424489', 1, TO_DATE('1964-02-11', 'yyyy-mm-dd'), NULL, 45, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (412, 'Mick', 'Mursell', 'mmursellbf@homestead.com', '1133882293', 1, TO_DATE('2000-04-27', 'yyyy-mm-dd'), NULL, 31, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (413, 'Marc', 'Quick', 'mquickbg@com.com', '7389280921', 1, TO_DATE('1977-04-25', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (414, 'Christa', 'Lawrance', 'clawrancebh@desdev.cn', '0355922738', 1, TO_DATE('1960-09-24', 'yyyy-mm-dd'), NULL, 83, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (415, 'Roze', 'Aspy', 'raspybi@guardian.co.uk', '8629163186', 1, TO_DATE('1956-03-24', 'yyyy-mm-dd'), NULL, 82, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (416, 'Araldo', 'Rushmere', 'arushmerebj@techcrunch.com', '6091757806', 1, TO_DATE('1957-09-10', 'yyyy-mm-dd'), NULL, 3, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (417, 'Nate', 'Erat', 'neratbk@ft.com', '7995264712', 1, TO_DATE('1956-06-20', 'yyyy-mm-dd'), NULL, 42, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (418, 'Lillis', 'Bertrand', 'lbertrandbl@indiatimes.com', '3730106635', 1, TO_DATE('1970-09-16', 'yyyy-mm-dd'), NULL, 20, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (419, 'Lilly', 'Grace', 'lgracebm@google.ca', '5106228026', 1, TO_DATE('1975-05-01', 'yyyy-mm-dd'), NULL, 63, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (420, 'Denny', 'Candish', 'dcandishbn@tripod.com', '9255977288', 1, TO_DATE('1972-09-12', 'yyyy-mm-dd'), NULL, 97, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (421, 'Thornie', 'Mawne', 'tmawnebo@google.com.hk', '8707582870', 1, TO_DATE('1964-10-06', 'yyyy-mm-dd'), NULL, 56, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (422, 'Randy', 'Akrigg', 'rakriggbp@dedecms.com', '7389918950', 1, TO_DATE('1957-10-25', 'yyyy-mm-dd'), NULL, 73, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (423, 'Claudette', 'Kingescot', 'ckingescotbq@japanpost.jp', '2780355352', 1, TO_DATE('1979-02-18', 'yyyy-mm-dd'), NULL, 70, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (424, 'Carny', 'Howood', 'chowoodbr@cnet.com', '0214441385', 1, TO_DATE('1981-01-30', 'yyyy-mm-dd'), NULL, 31, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (425, 'Dulci', 'Stivey', 'dstiveybs@squarespace.com', '5243037214', 1, TO_DATE('1983-10-07', 'yyyy-mm-dd'), NULL, 44, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (426, 'Ambur', 'Herrieven', 'aherrievenbt@washingtonpost.com', '1891508075', 1, TO_DATE('1950-03-19', 'yyyy-mm-dd'), NULL, 68, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (427, 'Minnnie', 'Belbin', 'mbelbinbu@ucla.edu', '5351610779', 1, TO_DATE('2000-09-12', 'yyyy-mm-dd'), NULL, 87, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (428, 'Hynda', 'Littley', 'hlittleybv@amazonaws.com', '7362357613', 1, TO_DATE('1957-03-27', 'yyyy-mm-dd'), NULL, 53, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (429, 'Rolf', 'Lunam', 'rlunambw@amazon.com', '8520775063', 1, TO_DATE('1982-07-03', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (430, 'Anett', 'Whibley', 'awhibleybx@zdnet.com', '1950925242', 1, TO_DATE('1967-10-15', 'yyyy-mm-dd'), NULL, 65, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (431, 'Rodger', 'Hearl', 'rhearlby@blogger.com', '2522688537', 1, TO_DATE('1979-10-27', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (432, 'Reamonn', 'Abisetti', 'rabisettibz@printfriendly.com', '2058233743', 1, TO_DATE('1960-07-08', 'yyyy-mm-dd'), NULL, 26, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (433, 'Christin', 'Jaffray', 'cjaffrayc0@cloudflare.com', '8203032613', 1, TO_DATE('2000-06-06', 'yyyy-mm-dd'), TO_DATE('2008-04-09', 'yyyy-mm-dd'), 35, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (434, 'Daffi', 'Frantzen', 'dfrantzenc1@hatena.ne.jp', '7495310308', 1, TO_DATE('1950-08-18', 'yyyy-mm-dd'), TO_DATE('2010-02-05', 'yyyy-mm-dd'), 100, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (435, 'Brinna', 'Eland', 'belandc2@mail.ru', '1401115748', 1, TO_DATE('1990-08-07', 'yyyy-mm-dd'), NULL, 86, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (436, 'Nikolia', 'Verson', 'nversonc3@aboutads.info', '8474340438', 1, TO_DATE('1995-02-15', 'yyyy-mm-dd'), NULL, 89, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (437, 'Pail', 'Buckthorp', 'pbuckthorpc4@nih.gov', '3099935107', 1, TO_DATE('1978-04-04', 'yyyy-mm-dd'), NULL, 74, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (438, 'Janelle', 'Diggin', 'jdigginc5@shinystat.com', '1096383624', 1, TO_DATE('1978-12-31', 'yyyy-mm-dd'), NULL, 99, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (439, 'Liza', 'Spickett', 'lspickettc6@ehow.com', '9436264429', 1, TO_DATE('1953-07-31', 'yyyy-mm-dd'), NULL, 66, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (440, 'Antoni', 'Zavittieri', 'azavittieric7@elegantthemes.com', '9336662740', 1, TO_DATE('1967-04-02', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (441, 'Efren', 'Sleet', 'esleetc8@sciencedirect.com', '7283559671', 1, TO_DATE('1982-08-15', 'yyyy-mm-dd'), NULL, 100, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (442, 'Merrie', 'Hand', 'mhandc9@arstechnica.com', '0873282132', 1, TO_DATE('1951-08-04', 'yyyy-mm-dd'), NULL, 98, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (443, 'Filberto', 'Rosoni', 'frosonica@businessinsider.com', '3537216114', 1, TO_DATE('2000-09-27', 'yyyy-mm-dd'), NULL, 80, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (444, 'Adolphe', 'Hoggins', 'ahogginscb@nyu.edu', '1540235033', 1, TO_DATE('1981-03-07', 'yyyy-mm-dd'), NULL, 33, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (445, 'Tove', 'Thompson', 'tthompsoncc@webmd.com', '9543338035', 1, TO_DATE('2001-01-01', 'yyyy-mm-dd'), NULL, 75, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (446, 'Clovis', 'Lowes', 'clowescd@sourceforge.net', '6744396579', 1, TO_DATE('1998-02-02', 'yyyy-mm-dd'), NULL, 75, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (447, 'Austin', 'Takle', 'ataklece@geocities.com', '5222031411', 1, TO_DATE('1965-10-06', 'yyyy-mm-dd'), NULL, 80, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (448, 'Chlo', 'Barbey', 'cbarbeycf@mtv.com', '5680353644', 1, TO_DATE('1963-08-23', 'yyyy-mm-dd'), NULL, 23, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (449, 'Verina', 'Lindsay', 'vlindsaycg@dailymotion.com', '5508846999', 1, TO_DATE('1990-06-02', 'yyyy-mm-dd'), NULL, 16, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (450, 'Alfons', 'Breyt', 'abreytch@psu.edu', '4000648632', 1, TO_DATE('1958-07-22', 'yyyy-mm-dd'), NULL, 41, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (451, 'Janos', 'Tordiffe', 'jtordiffeci@altervista.org', '9071102238', 1, TO_DATE('1979-08-02', 'yyyy-mm-dd'), NULL, 35, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (452, 'Janella', 'Duchart', 'jduchartcj@fda.gov', '7671782653', 1, TO_DATE('1966-05-05', 'yyyy-mm-dd'), NULL, 20, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (453, 'D''arcy', 'Roylance', 'droylanceck@about.com', '3241633616', 1, TO_DATE('1966-03-31', 'yyyy-mm-dd'), NULL, 84, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (454, 'Danya', 'Rallinshaw', 'drallinshawcl@geocities.jp', '4040257014', 1, TO_DATE('1987-12-03', 'yyyy-mm-dd'), NULL, 30, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (455, 'Chico', 'Ratchford', 'cratchfordcm@sogou.com', '9544407227', 1, TO_DATE('1961-03-23', 'yyyy-mm-dd'), NULL, 8, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (456, 'Nerissa', 'Asken', 'naskencn@over-blog.com', '5237140785', 1, TO_DATE('1993-11-29', 'yyyy-mm-dd'), NULL, 78, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (457, 'Leticia', 'Rapson', 'lrapsonco@imdb.com', '4324175837', 1, TO_DATE('1990-11-14', 'yyyy-mm-dd'), NULL, 29, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (458, 'Trude', 'Vokins', 'tvokinscp@tamu.edu', '5300295175', 1, TO_DATE('1993-07-09', 'yyyy-mm-dd'), NULL, 46, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (459, 'Katherina', 'Wiggett', 'kwiggettcq@businesswire.com', '3243153433', 1, TO_DATE('1963-05-10', 'yyyy-mm-dd'), NULL, 54, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (460, 'Alice', 'Spacey', 'aspaceycr@usda.gov', '7292794165', 1, TO_DATE('1964-01-21', 'yyyy-mm-dd'), NULL, 16, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (461, 'Guthrey', 'Cotter', 'gcottercs@umich.edu', '0130943290', 1, TO_DATE('1956-08-16', 'yyyy-mm-dd'), NULL, 40, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (462, 'Sashenka', 'Matyushonok', 'smatyushonokct@marketwatch.com', '0202436659', 1, TO_DATE('1978-10-15', 'yyyy-mm-dd'), NULL, 75, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (463, 'Kerrin', 'McEttigen', 'kmcettigencu@eventbrite.com', '3878444303', 1, TO_DATE('1993-02-17', 'yyyy-mm-dd'), NULL, 11, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (464, 'Ardyth', 'Casarili', 'acasarilicv@stanford.edu', '8890328916', 1, TO_DATE('1995-12-15', 'yyyy-mm-dd'), NULL, 12, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (465, 'Rob', 'Mothersdale', 'rmothersdalecw@mozilla.com', '0907409288', 1, TO_DATE('1994-09-03', 'yyyy-mm-dd'), NULL, 44, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (466, 'Renard', 'Chorlton', 'rchorltoncx@storify.com', '9151385465', 1, TO_DATE('1964-01-31', 'yyyy-mm-dd'), NULL, 90, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (467, 'Wilburt', 'Holson', 'wholsoncy@netscape.com', '6204412361', 1, TO_DATE('1997-02-13', 'yyyy-mm-dd'), NULL, 85, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (468, 'Elvira', 'Alltimes', 'ealltimescz@bigcartel.com', '1627904115', 1, TO_DATE('1951-09-08', 'yyyy-mm-dd'), NULL, 35, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (469, 'Merwin', 'Abbado', 'mabbadod0@illinois.edu', '4155313073', 1, TO_DATE('1961-09-25', 'yyyy-mm-dd'), NULL, 89, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (470, 'Anthea', 'Goldsworthy', 'agoldsworthyd1@rambler.ru', '2301212319', 1, TO_DATE('1964-11-01', 'yyyy-mm-dd'), NULL, 52, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (471, 'Cristie', 'Flann', 'cflannd2@istockphoto.com', '8085114046', 1, TO_DATE('1951-01-11', 'yyyy-mm-dd'), NULL, 27, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (472, 'Augustine', 'Fishe', 'afished3@cnn.com', '8017885946', 1, TO_DATE('1980-01-03', 'yyyy-mm-dd'), NULL, 78, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (473, 'Meryl', 'Cona', 'mconad4@yandex.ru', '2863378902', 1, TO_DATE('2001-10-31', 'yyyy-mm-dd'), NULL, 20, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (474, 'Bernardine', 'Noell', 'bnoelld5@desdev.cn', '9663034351', 1, TO_DATE('1999-12-28', 'yyyy-mm-dd'), NULL, 19, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (475, 'Maurita', 'Hurrion', 'mhurriond6@deliciousdays.com', '4405255202', 1, TO_DATE('1986-11-10', 'yyyy-mm-dd'), NULL, 60, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (476, 'Nicolle', 'Picot', 'npicotd7@issuu.com', '4937154214', 1, TO_DATE('1967-07-21', 'yyyy-mm-dd'), NULL, 68, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (477, 'Benedicta', 'Bohlmann', 'bbohlmannd8@wordpress.com', '3474392271', 1, TO_DATE('1996-04-07', 'yyyy-mm-dd'), NULL, 50, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (478, 'Corly', 'Veitch', 'cveitchd9@wunderground.com', '5867157326', 1, TO_DATE('1986-10-31', 'yyyy-mm-dd'), NULL, 24, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (479, 'Gussi', 'Davall', 'gdavallda@friendfeed.com', '2044833441', 1, TO_DATE('1953-06-29', 'yyyy-mm-dd'), NULL, 28, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (480, 'Eba', 'Hartlebury', 'ehartleburydb@tiny.cc', '7032779697', 1, TO_DATE('1967-05-08', 'yyyy-mm-dd'), NULL, 97, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (481, 'Yvon', 'Tsar', 'ytsardc@ezinearticles.com', '6565316821', 1, TO_DATE('1980-08-18', 'yyyy-mm-dd'), NULL, 45, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (482, 'Valaria', 'Danshin', 'vdanshindd@cmu.edu', '7405832806', 1, TO_DATE('1953-01-26', 'yyyy-mm-dd'), NULL, 65, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (483, 'Bradley', 'Thurlbourne', 'bthurlbournede@skyrock.com', '8670381001', 1, TO_DATE('1983-03-05', 'yyyy-mm-dd'), NULL, 39, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (484, 'Corny', 'Stango', 'cstangodf@hugedomains.com', '1109796668', 1, TO_DATE('1997-09-02', 'yyyy-mm-dd'), NULL, 69, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (485, 'Norton', 'Whistlecraft', 'nwhistlecraftdg@howstuffworks.com', '5553768926', 1, TO_DATE('1998-10-02', 'yyyy-mm-dd'), NULL, 27, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (486, 'Alys', 'Brito', 'abritodh@usa.gov', '7702469412', 1, TO_DATE('1992-03-18', 'yyyy-mm-dd'), NULL, 91, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (487, 'William', 'Bethune', 'wbethunedi@lycos.com', '9276404260', 1, TO_DATE('1981-04-11', 'yyyy-mm-dd'), NULL, 5, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (488, 'Shell', 'Woollends', 'swoollendsdj@unblog.fr', '5895644821', 1, TO_DATE('1975-02-11', 'yyyy-mm-dd'), NULL, 28, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (489, 'Bel', 'Rutledge', 'brutledgedk@bravesites.com', '5865562738', 1, TO_DATE('1958-04-10', 'yyyy-mm-dd'), NULL, 20, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (490, 'Cheslie', 'Piddlehinton', 'cpiddlehintondl@hud.gov', '5811352107', 1, TO_DATE('1968-01-31', 'yyyy-mm-dd'), NULL, 76, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (491, 'Maurizio', 'Rookwell', 'mrookwelldm@ox.ac.uk', '0653901283', 1, TO_DATE('1998-12-03', 'yyyy-mm-dd'), NULL, 94, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (492, 'Roth', 'Slobom', 'rslobomdn@samsung.com', '7534292557', 1, TO_DATE('1985-10-09', 'yyyy-mm-dd'), NULL, 1, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (493, 'Francesco', 'Chantillon', 'fchantillondo@hexun.com', '3354882891', 1, TO_DATE('1959-09-14', 'yyyy-mm-dd'), NULL, 92, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (494, 'Renado', 'Schruur', 'rschruurdp@51.la', '2762860539', 1, TO_DATE('1961-01-06', 'yyyy-mm-dd'), NULL, 10, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (495, 'Johannes', 'Comins', 'jcominsdq@discovery.com', '1521642095', 1, TO_DATE('1962-07-13', 'yyyy-mm-dd'), NULL, 62, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (496, 'Kaleb', 'Wither', 'kwitherdr@reference.com', '2061540503', 1, TO_DATE('2000-05-18', 'yyyy-mm-dd'), NULL, 100, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (497, 'Adolpho', 'Biggs', 'abiggsds@biglobe.ne.jp', '7780552667', 1, TO_DATE('1993-02-19', 'yyyy-mm-dd'), NULL, 53, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (498, 'Adlai', 'Lush', 'alushdt@deviantart.com', '3149232872', 1, TO_DATE('1972-11-29', 'yyyy-mm-dd'), NULL, 15, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (499, 'Mollee', 'Lunny', 'mlunnydu@elpais.com', '8065307051', 1, TO_DATE('1960-11-03', 'yyyy-mm-dd'), NULL, 14, TIMESTAMP '1958-10-08 15:38:54.720000');

INSERT INTO "ANONYMOUS"."Customers" ("CUS_Id", "CUS_FirstName", "CUS_LastName", "CUS_Email", "CUS_TaxCode", "CUS_IsActive", "CUS_BirthDate", "CUS_DeathDate", "CUS_Points", "CUS_CreationDate") VALUES (500, 'Kaitlin', 'Hearnaman', 'khearnamandv@sogou.com', '3072001650', 1, TO_DATE('1978-06-05', 'yyyy-mm-dd'), NULL, 16, TIMESTAMP '1958-10-08 15:38:54.720000');


INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (33, 'Afghanistan');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (31, 'Argentina');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (17, 'Australia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (20, 'Azerbaijan');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (23, 'Belarus');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (9, 'Benin');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (8, 'Bolivia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (7, 'Brazil');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (37, 'Cameroon');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (38, 'Canada');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (26, 'Chile');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (4, 'China');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (29, 'Colombia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (18, 'Czech Republic');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (6, 'France');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (34, 'Greece');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (28, 'Honduras');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (2, 'Indonesia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (16, 'Iran');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (35, 'Ireland');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (27, 'Japan');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (36, 'Kyrgyzstan');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (30, 'Lithuania');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (32, 'Malaysia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (3, 'Mexico');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (40, 'Mongolia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (39, 'Morocco');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (19, 'Netherlands');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (21, 'New Zealand');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (5, 'Nicaragua');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (1, 'Peru');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (15, 'Philippines');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (24, 'Poland');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (13, 'Portugal');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (42, 'Russia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (11, 'Sweden');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (10, 'Syria');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (12, 'Thailand');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (14, 'Tunisia');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (25, 'Ukraine');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (22, 'Vietnam');

INSERT INTO "ANONYMOUS"."Countries" ("COU_Id", "COU_Name") VALUES (41, 'Zambia');


INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (1, '99 Larry Pass', '1765', 'Morón', 0, 11, 20);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (2, '7 Ridgeway Street', '75096 CEDEX 02', 'Paris 02', 0, 1, 361);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (3, '1140 Riverside Place', '78950-000', 'Ouro Preto do Oeste', 0, 1, 36);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (4, '704 Fallview Trail', NULL, 'Mazongling', 0, 15, 190);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (5, '587 Rieder Point', NULL, 'Idah', 0, 30, 346);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (6, '7 Kings Alley', '95109 CEDEX', 'Argenteuil', 0, 28, 395);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (7, '53 Loomis Pass', NULL, 'Waerana', 0, 27, 232);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (8, '3390 Northwestern Place', NULL, 'Mlandizi', 0, 32, 230);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (9, '74 School Center', NULL, 'Tumxuk', 1, 33, 59);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (10, '3 Jay Way', NULL, 'Biryukove', 0, 17, 333);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (11, '23 Lakewood Alley', '68947 CEDEX 9', 'Mulhouse', 0, 28, 44);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (12, '16938 Troy Road', '464 01', 'Višnova', 0, 35, 184);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (13, '5 Twin Pines Terrace', NULL, 'Beihe', 0, 16, 248);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (14, '54559 Ridge Oak Crossing', '678 01', 'Blansko', 0, 5, 367);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (15, '30 Hallows Road', NULL, 'Bharatpur', 0, 25, 226);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (16, '89693 Lunder Drive', '13835-000', 'Conchal', 0, 7, 108);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (17, '9600 Holy Cross Way', '182514', 'Zhatay', 0, 1, 235);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (18, '3221 Schurz Park', NULL, 'Çobansignaq', 1, 19, 184);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (19, '40 Gale Avenue', NULL, 'Gurra e Vogël', 0, 10, 187);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (20, '59 Monument Center', '330 16', 'Všeruby', 1, 12, 18);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (21, '3812 Karstens Way', '542 01', 'Žaclér', 1, 38, 213);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (22, '79 Melby Park', '89105', 'Las Vegas', 1, 19, 91);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (23, '23417 Leroy Drive', NULL, 'Fougamou', 0, 29, 46);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (24, '35 Kennedy Parkway', '456659', 'Roza', 0, 17, 43);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (25, '3 Independence Park', '2007', 'San Basilio', 0, 27, 149);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (26, '4 Helena Street', '23501', 'Uusikaupunki', 0, 6, 263);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (27, '1 Rutledge Place', '50281', 'Mehmand Chak', 0, 17, 232);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (28, '23550 Nancy Circle', '4806', 'Quipot', 1, 15, 266);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (29, '13 Heath Junction', '33709 CEDEX', 'Mérignac', 1, 33, 25);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (30, '88 Duke Avenue', NULL, 'Jembangan', 1, 36, 385);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (31, '15 Gulseth Drive', NULL, 'Yashiga', 0, 13, 348);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (32, '348 Monument Way', '8010', 'Malalag', 0, 8, 44);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (33, '174 Green Trail', NULL, 'Tangyin', 0, 33, 242);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (34, '95 Jay Parkway', NULL, 'Shangyong', 1, 10, 69);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (35, '16644 Brentwood Avenue', NULL, 'Buenos Aires', 0, 13, 297);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (36, '4359 North Junction', NULL, 'George Hill', 0, 8, 163);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (37, '25595 Old Shore Place', '68415-000', 'Limoeiro do Ajuru', 0, 12, 209);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (38, '58 Judy Parkway', '427275', 'Gubkinskiy', 1, 12, 312);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (39, '396 Forest Dale Place', NULL, 'Karanganyar', 0, 33, 299);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (40, '307 Havey Hill', '999-3222', 'Aioi', 1, 13, 253);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (41, '50 American Alley', '3605', 'Bintawan', 0, 24, 377);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (42, '530 Grim Park', NULL, 'Kisesa', 0, 3, 170);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (43, '06 Ludington Alley', '671454', 'Novokizhinginsk', 0, 22, 40);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (44, '347 Doe Crossing Center', NULL, 'Dagang', 1, 15, 181);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (45, '5952 Hoard Trail', NULL, 'San Simón', 0, 29, 366);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (46, '3 Village Green Plaza', '735037', 'Coyaima', 0, 39, 387);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (47, '0890 Stang Lane', NULL, 'Al Jib', 0, 23, 354);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (48, '3729 Sunbrook Terrace', '1238', 'Dolna Banjica', 1, 39, 339);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (49, '706 Heath Place', '4384', 'Vlissingen', 0, 36, 33);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (50, '820 Tony Junction', NULL, 'Gadingrejo', 0, 1, 299);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (51, '304 Northridge Street', NULL, 'Mlandizi', 0, 17, 142);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (52, '708 Muir Alley', NULL, 'Ash Shaykh ‘Uthman', 1, 36, 188);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (53, '8 5th Park', '18110-000', 'Votorantim', 0, 26, 17);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (54, '2 Comanche Plaza', NULL, 'Shuangyang', 1, 35, 111);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (55, '045 West Place', '1270', 'Dolo', 1, 36, 115);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (56, '1 Grim Parkway', '1104', 'Paraiso', 0, 29, 369);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (57, '8552 Mcbride Circle', '364 61', 'Mesto', 1, 38, 76);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (58, '909 Bashford Parkway', NULL, 'Kintinku', 0, 30, 290);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (59, '7115 Summit Court', NULL, 'Curpahuasi', 0, 32, 195);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (60, '2315 Surrey Center', NULL, 'Huangshi', 0, 1, 340);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (61, '02875 Hoard Way', '1236', '????????', 0, 24, 193);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (62, '33 Wayridge Road', '4815', 'Devin', 1, 21, 191);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (63, '7171 Elka Point', '49518', 'Grand Rapids', 1, 25, 151);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (64, '8 Chive Road', '30807', 'Santa Elena', 0, 9, 290);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (65, '511 Express Pass', NULL, 'Lyubar', 0, 4, 60);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (66, '8712 Northland Pass', NULL, 'Gangkou', 0, 28, 297);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (67, '435 West Circle', '462 36', 'Vänersborg', 0, 20, 305);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (68, '82 Banding Avenue', NULL, 'Prupuh', 0, 30, 247);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (69, '27 Division Terrace', '78405', 'Corpus Christi', 1, 35, 289);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (70, '6 Esch Way', NULL, 'Hoeryong', 0, 27, 180);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (71, '27 Basil Court', NULL, 'Citeureup', 1, 7, 366);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (72, '5403 Truax Avenue', '49900-000', 'Propriá', 0, 25, 11);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (73, '252 Meadow Vale Parkway', '399612', 'Svetlanovskiy', 0, 4, 343);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (74, '539 Vermont Plaza', '83514 CEDEX', 'La Seyne-sur-Mer', 0, 8, 275);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (75, '6 Clemons Street', '7405', 'Pata', 0, 5, 108);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (76, '34 Melody Plaza', NULL, 'Oju', 1, 29, 368);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (77, '658 Rowland Plaza', NULL, 'Puerto Varas', 0, 6, 297);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (78, '50621 Everett Street', NULL, 'Bojongsari', 0, 30, 10);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (79, '64338 Waubesa Court', '453187', 'Sterlibashevo', 1, 2, 248);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (80, '4846 East Avenue', '164 73', 'Kista', 1, 11, 160);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (81, '5 Columbus Trail', NULL, 'Kabala', 1, 28, 74);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (82, '2 Loeprich Hill', '366309', 'Shali', 0, 4, 384);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (83, '43 Carberry Crossing', '1241', 'Preserje pri Radomljah', 0, 13, 119);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (84, '21 Buell Court', '456875', 'Kyshtym', 0, 13, 247);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (85, '44334 Lunder Place', '7240', 'Demir Hisar', 0, 17, 141);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (86, '147 Wayridge Place', NULL, 'Sanlian', 0, 39, 282);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (87, '76421 Jana Junction', '839-1407', 'Miharu', 1, 21, 278);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (88, '8293 Hoffman Circle', NULL, 'Yong’an', 0, 2, 375);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (89, '1414 Acker Center', '31214', 'Laslovo', 0, 13, 139);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (90, '9 Graceland Plaza', NULL, 'Gaopu', 1, 33, 301);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (91, '0 Fordem Lane', 'H9J', 'Stonewall', 1, 14, 75);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (92, '12451 Mccormick Junction', NULL, 'Río Blanquito', 0, 19, 279);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (93, '3544 Thackeray Drive', NULL, 'Potou', 0, 32, 27);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (94, '7122 Hallows Pass', '952-1505', 'Goshogawara', 0, 24, 94);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (95, '94436 Mccormick Court', NULL, 'Blora', 0, 31, 163);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (96, '47317 Nevada Point', NULL, 'Kebonagung', 0, 2, 217);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (97, '02 Prairieview Terrace', '1552', 'Lanas', 0, 9, 98);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (98, '3501 Fair Oaks Pass', '2741', 'Salto', 0, 8, 60);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (99, '8189 Amoth Hill', NULL, 'Lianyuan', 0, 21, 42);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (100, '063 Ohio Plaza', NULL, 'Erhaodi', 1, 23, 314);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (101, '7 Eastlawn Place', NULL, 'Yandev', 1, 35, 88);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (102, '30424 Jay Alley', '11207', 'Bayaguana', 0, 25, 113);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (103, '2 Scofield Place', '607069', 'Vyksa', 0, 14, 41);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (104, '183 Delaware Street', NULL, 'Semampirbarat', 0, 10, 239);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (105, '68135 Oxford Circle', '10270', 'New York City', 0, 24, 138);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (106, '1369 Lillian Place', NULL, 'Citeguh', 0, 38, 355);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (107, '31 Talmadge Pass', NULL, 'Klumpit', 0, 28, 92);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (108, '4496 Arizona Way', '51000', 'Polonnaruwa', 0, 26, 257);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (109, '273 Bay Way', NULL, 'Naikoten Dua', 0, 24, 171);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (110, '0301 Scoville Plaza', NULL, 'Dagui', 0, 33, 8);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (111, '22705 Mccormick Point', '8427', 'San Jose', 0, 13, 326);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (112, '922 Becker Park', NULL, 'Youzai', 0, 28, 140);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (113, '969 Novick Way', NULL, 'Janja', 0, 20, 391);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (114, '55402 Sachtjen Lane', NULL, 'Anjia', 1, 4, 35);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (115, '62 Bunting Junction', NULL, 'Zuénoula', 1, 20, 307);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (116, '2464 South Terrace', NULL, 'Qiaotou', 0, 30, 294);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (117, '52 Maywood Center', NULL, 'Harhorin', 0, 31, 239);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (118, '64 Mendota Court', NULL, 'Andahuaylillas', 0, 40, 190);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (119, '4 Carioca Circle', NULL, 'Biyang', 0, 22, 193);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (120, '7 Esch Crossing', '660126', 'Sheregesh', 0, 7, 228);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (121, '8874 Messerschmidt Parkway', NULL, 'Qa’en', 1, 19, 113);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (122, '62851 Lake View Place', '2729', 'Blagoevgrad', 0, 8, 104);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (123, '8439 Ludington Avenue', NULL, 'Pandean', 0, 13, 185);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (124, '794 Leroy Parkway', '433913', 'Selizharovo', 0, 2, 73);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (125, '8 Ruskin Junction', '64187', 'Kansas City', 0, 3, 383);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (126, '95 Ridgeview Pass', '57000', 'Pattani', 1, 4, 85);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (127, '626 Onsgard Hill', NULL, 'Zhongben', 0, 6, 190);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (128, '4 Monument Trail', '462800', 'Novoorsk', 0, 38, 349);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (129, '65374 Merry Terrace', '696 65', 'Petrov', 1, 17, 300);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (130, '54452 Reindahl Court', '60609', 'Chicago', 0, 27, 103);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (131, '972 Tony Point', NULL, 'Galtek', 0, 24, 261);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (132, '74517 David Terrace', '460536', 'Nezhinka', 0, 37, 93);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (133, '3 Rigney Avenue', NULL, 'Tagiura', 0, 34, 361);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (134, '24 Lien Circle', '757 54', 'Uppsala', 1, 3, 360);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (135, '8 Oak Valley Circle', NULL, 'Dalam', 1, 40, 305);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (136, '13 Dakota Center', '456404', 'Timiryazevskiy', 1, 20, 55);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (137, '0 Dwight Center', NULL, 'Kastsyukovichy', 0, 33, 354);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (138, '09933 Summer Ridge Center', '238346', '????????????', 1, 22, 327);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (139, '51145 Chive Street', '10801', 'Juncalito Abajo', 0, 36, 210);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (140, '8 Muir Drive', NULL, 'Aourir', 0, 29, 90);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (141, '7309 Ludington Court', NULL, 'Karonga', 1, 11, 31);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (142, '882 Autumn Leaf Crossing', '3565', 'Tartagal', 0, 8, 250);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (143, '75123 Butternut Crossing', '57005', 'Kedainiai', 1, 34, 265);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (144, '91 School Alley', '999-7542', 'Mizusawa', 1, 4, 140);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (145, '858 Becker Alley', NULL, 'Chengui', 1, 18, 203);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (146, '40269 Melrose Street', NULL, 'Al Kharijah', 0, 23, 218);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (147, '3375 Manitowish Court', '80615', 'Talpe', 0, 30, 274);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (148, '917 Dahle Lane', '793 50', 'Leksand', 0, 35, 379);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (149, '03 Vidon Circle', NULL, 'Longtian', 1, 22, 246);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (150, '1 Lakeland Point', NULL, 'Ghurayd Gharame', 1, 11, 282);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (151, '68758 Dryden Hill', NULL, 'Niopanda', 1, 1, 122);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (152, '9 Sachs Crossing', '3205', 'Hennenman', 1, 25, 84);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (153, '15717 Schlimgen Park', '2380', 'Slovenj Gradec', 0, 33, 163);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (154, '64033 Comanche Parkway', '06-126', 'Gzy', 1, 27, 377);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (155, '8994 Armistice Lane', NULL, 'Mas‘adah', 0, 10, 149);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (156, '164 Rockefeller Circle', NULL, 'Hetou', 0, 6, 361);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (157, '5288 Center Alley', NULL, 'Xiasha', 0, 6, 45);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (158, '8 Sunbrook Road', '362049', 'Vladikavkaz', 0, 1, 371);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (159, '7589 Dwight Terrace', '396931', 'Semiluki', 1, 14, 371);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (160, '116 Old Shore Center', '60070', 'Independencia', 1, 26, 397);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (161, '3445 Delaware Street', NULL, 'Masakin', 1, 23, 247);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (162, '81 Hermina Park', '6529', 'Camp Flora', 0, 31, 275);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (163, '33491 Fulton Street', NULL, 'Ndom', 1, 4, 78);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (164, '413 Packers Court', NULL, 'Sukarama', 1, 13, 365);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (165, '906 Pleasure Pass', '14016', 'Sacapulas', 0, 18, 172);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (166, '8446 Oneill Parkway', NULL, 'Kfar NaOranim', 1, 4, 362);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (167, '576 1st Lane', '81806', 'Buenavista', 0, 4, 237);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (168, '3970 Barnett Park', '71703', 'La Guadalupe', 0, 6, 344);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (169, '16575 Towne Avenue', '9404', 'Sopron', 0, 30, 62);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (170, '66255 Farragut Lane', NULL, 'Nanbao', 0, 26, 358);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (171, '49 Fairview Center', NULL, 'Jin’an', 0, 26, 46);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (172, '8514 Waxwing Circle', '3309', 'Cerro Corá', 0, 11, 46);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (173, '96711 Kennedy Plaza', NULL, 'Wangcheng', 0, 29, 222);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (174, '32 Gina Alley', '301792', 'Severo-Zadonsk', 0, 19, 390);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (175, '4053 Golf Pass', '34400-000', 'Raposos', 0, 1, 6);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (176, '985 Northwestern Street', NULL, 'Pedro Juan Caballero', 1, 6, 33);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (177, '4 Mendota Pass', NULL, 'Zhongling', 1, 39, 44);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (178, '53323 Portage Center', NULL, 'Shuangpengxi', 0, 27, 273);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (179, '419 6th Street', '606231', 'Staronizhestebliyevskaya', 0, 19, 262);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (180, '2308 Barby Parkway', '4004', 'Debrecen', 0, 22, 65);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (181, '7608 Dixon Hill', '523068', 'Iles', 1, 9, 158);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (182, '25029 Thompson Plaza', '37-121', 'Husów', 0, 20, 237);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (183, '546 Vahlen Pass', NULL, 'Sioguí Arriba', 0, 39, 38);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (184, '46989 Veith Way', '2835-305', 'Lavradio', 0, 29, 54);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (185, '6 Melody Trail', NULL, 'Heishui', 1, 22, 119);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (186, '6095 Loeprich Trail', '2420-257', 'Brejieira', 1, 11, 30);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (187, '18843 Pond Lane', '417048', 'Pitalito', 0, 2, 318);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (188, '32 Graceland Street', NULL, 'Pengandonan', 0, 23, 20);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (189, '7495 Magdeline Street', '13900-000', 'Amparo', 1, 4, 193);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (190, '35 Reindahl Junction', NULL, 'Hanyuan', 0, 9, 393);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (191, '8 Buhler Crossing', NULL, 'Melrose', 0, 31, 288);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (192, '33 Florence Junction', NULL, 'Asmara', 1, 9, 251);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (193, '91 Manitowish Plaza', NULL, 'Weizheng', 1, 2, 263);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (194, '30040 Monument Place', NULL, 'Ngurenrejo', 1, 24, 127);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (195, '0 Packers Pass', NULL, 'Seoam', 1, 33, 177);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (196, '3 Luster Park', '30270', 'Sop Pong', 1, 5, 92);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (197, '1 Stoughton Pass', NULL, 'Magugu', 0, 18, 306);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (198, '5 Menomonie Junction', NULL, 'Buôn Tr?p', 1, 21, 356);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (199, '0 Maryland Way', '87001', 'Telsiai', 1, 16, 221);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (200, '4 Bobwhite Road', NULL, 'Suwaru', 0, 21, 162);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (201, '639 Cascade Plaza', NULL, 'Miaoli', 0, 9, 267);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (202, '84682 Dakota Circle', '60110', 'Nong Bua', 1, 16, 185);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (203, '05 Grayhawk Point', NULL, 'Gongbuxue', 1, 29, 388);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (204, '43188 Garrison Way', '64500-000', 'Oeiras', 1, 5, 43);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (205, '25 Elka Center', NULL, 'Banan', 1, 5, 83);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (206, '7019 Dawn Alley', '1853', 'Frederiksberg', 0, 6, 167);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (207, '877 Norway Maple Trail', '547018', 'San Calixto', 0, 5, 156);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (208, '032 Dovetail Drive', NULL, 'Kuwumkumambal', 0, 31, 384);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (209, '631 Bowman Court', 'T1P', 'Strathmore', 1, 35, 340);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (210, '159 Kropf Pass', '98-432', 'Lubnice', 1, 32, 329);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (211, '06340 Haas Circle', '63-510', 'Mikstat', 1, 16, 196);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (212, '8 Barnett Pass', NULL, 'Gyangqai', 0, 4, 172);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (213, '204 Westend Parkway', NULL, 'Vitebsk', 1, 38, 215);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (214, '1 Golf View Circle', NULL, 'Kangshan', 0, 29, 381);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (215, '84 Pennsylvania Junction', '3784', 'Novo Selo', 1, 15, 273);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (216, '0084 Clove Park', 'LE15', 'Normanton', 0, 7, 17);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (217, '699 New Castle Court', '20459', 'Hamburg Sankt Pauli', 1, 9, 338);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (218, '29810 East Road', '591 34', 'Motala', 0, 36, 178);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (219, '24698 American Ash Lane', 'J5M', 'Saint-Lin-Laurentides', 0, 29, 192);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (220, '4 Cambridge Crossing', '55000', 'Kanganpur', 0, 36, 73);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (221, '5 Myrtle Place', NULL, 'Rosario del Ingre', 1, 11, 283);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (222, '9 Monument Point', '4012', 'Calauan', 1, 40, 334);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (223, '80112 Mallory Trail', '65140', 'Bang Rakam', 1, 38, 195);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (224, '724 Kim Parkway', '79601', 'Joroinen', 0, 37, 361);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (225, '57 Doe Crossing Trail', '0712', 'Oslo', 1, 19, 89);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (226, '2937 Dottie Street', 'L3R', 'Martensville', 0, 7, 321);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (227, '27 Hermina Parkway', '81010', 'Pueblo', 1, 19, 348);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (228, '93662 Stoughton Terrace', '59290-000', 'São Gonçalo do Amarante', 0, 6, 38);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (229, '638 Cardinal Crossing', NULL, 'Zhongzhai', 1, 34, 138);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (230, '745 Oxford Park', '453524', 'Verkhniy Avzyan', 1, 4, 11);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (231, '6 Independence Junction', '50700', 'Toba Tek Singh', 1, 18, 309);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (232, '79670 Waywood Street', NULL, 'San Salvador', 0, 21, 230);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (233, '64338 Sloan Place', '20470', 'Washington', 1, 26, 387);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (234, '9811 Longview Point', '368380', 'Tpig', 0, 14, 197);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (235, '68 Dexter Trail', NULL, 'Licun', 0, 8, 15);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (236, '21670 Bobwhite Center', NULL, 'Bolondrón', 0, 8, 139);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (237, '9589 Badeau Plaza', NULL, 'Krajanbaturno', 0, 18, 37);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (238, '01145 Service Plaza', NULL, 'Ninghai', 1, 15, 114);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (239, '71 8th Trail', NULL, 'Trashigang', 1, 5, 321);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (240, '616 Thackeray Park', '79977', 'El Paso', 1, 11, 227);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (241, '4 Brown Crossing', NULL, 'Gombangan', 1, 24, 163);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (242, '46465 Forest Place', '397743', 'Sloboda', 1, 4, 129);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (243, '6 Del Mar Crossing', NULL, 'Dayr Sharaf', 1, 37, 87);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (244, '561 Graceland Trail', NULL, 'Somanda', 1, 31, 316);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (245, '777 Kinsman Parkway', NULL, 'Shunling', 1, 34, 15);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (246, '79 Emmet Lane', NULL, 'Xikou', 0, 24, 202);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (247, '98 Carpenter Street', '49905 CEDEX 9', 'Angers', 0, 32, 36);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (248, '3571 Novick Hill', '42130', 'Nong Bun Nak', 1, 40, 306);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (249, '73506 Blue Bill Park Circle', '6807', 'Salcedo', 0, 32, 183);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (250, '8 Haas Park', '624144', 'Kirovgrad', 1, 16, 333);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (251, '9 Onsgard Hill', NULL, 'Guantou', 1, 28, 24);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (252, '33395 Esch Avenue', '972 42', 'Luleå', 1, 15, 145);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (253, '9521 Graceland Parkway', '11-414', 'Ketrzyn', 0, 34, 166);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (254, '26443 Maryland Circle', '55385-000', 'Lajedo', 1, 17, 139);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (255, '9 Lawn Trail', '45807-000', 'Santa Cruz Cabrália', 1, 13, 161);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (256, '78991 Hoard Place', NULL, 'Xiangang', 0, 37, 173);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (257, '32467 Utah Trail', NULL, 'Zea', 0, 20, 189);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (258, '85 Weeping Birch Place', '1876', 'Frederiksberg', 1, 24, 7);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (259, '958 Heffernan Circle', NULL, 'Gunungangka', 1, 28, 98);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (260, '43229 Express Pass', NULL, 'Karanganyar', 1, 6, 79);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (261, '3517 Lien Parkway', '75037', 'Irving', 1, 7, 217);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (262, '7 Stang Street', '699-1105', 'Uji', 1, 22, 390);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (263, '0 Spenser Alley', '257 08', 'Naceradec', 0, 37, 262);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (264, '0982 Dahle Center', '3723', 'Raipur', 1, 33, 130);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (265, '13 Bartelt Crossing', NULL, 'Dschang', 1, 33, 379);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (266, '93 Bartelt Terrace', NULL, 'Ðà B?c', 0, 13, 292);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (267, '64 Sachtjen Terrace', '22179', 'Hamburg Bramfeld', 1, 6, 190);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (268, '04043 Sullivan Lane', 'V1A', 'Kimberley', 0, 22, 175);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (269, '7933 Gulseth Junction', '97435', 'Saint-Paul', 1, 5, 222);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (270, '23 Delaware Street', NULL, 'Krajan Kinanti', 0, 28, 73);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (271, '84274 Waywood Terrace', NULL, 'Kuanchuan', 0, 13, 147);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (272, '7663 Thierer Crossing', NULL, 'Pamarayan', 1, 12, 202);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (273, '4826 Mcguire Crossing', '34800-000', 'Caeté', 1, 21, 271);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (274, '26 Village Green Pass', NULL, 'Karakol', 1, 9, 235);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (275, '2 Oak Valley Place', '31150', 'Satuek', 0, 3, 166);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (276, '5 Express Terrace', NULL, 'Natarleba', 1, 5, 72);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (277, '479 Anthes Point', '2820', 'Gualeguaychú', 1, 25, 288);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (278, '695 Crest Line Court', '48000-000', 'Alagoinhas', 1, 25, 308);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (279, '2185 Golf Alley', '664-0846', 'Itami', 1, 39, 104);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (280, '241 Lunder Court', NULL, 'Lyuboml’', 1, 8, 40);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (281, '769 Service Road', NULL, 'Huating', 1, 33, 154);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (282, '989 Crest Line Parkway', '75910', 'Melaka', 1, 34, 218);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (283, '1621 Victoria Lane', '433396', 'Krasnyy Gulyay', 0, 8, 209);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (284, '78 Stephen Plaza', '112 45', 'Stockholm', 1, 33, 136);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (285, '43196 Crest Line Hill', NULL, 'Rancabugel', 0, 29, 330);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (286, '83294 Pepper Wood Place', '665321', 'Tulyushka', 0, 1, 8);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (287, '7709 Independence Junction', NULL, 'Tall ?amis', 0, 4, 275);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (288, '9977 Kings Alley', '93311', 'Bakersfield', 1, 38, 60);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (289, '215 Myrtle Court', NULL, 'Kolochava', 1, 1, 256);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (290, '5558 Gale Parkway', '65110', 'Bang Krathum', 1, 36, 239);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (291, '8146 Towne Park', '176048', 'Chinchiná', 1, 14, 162);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (292, '72 Ridge Oak Avenue', NULL, 'Novi Pazar', 1, 39, 156);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (293, '106 Larry Point', NULL, 'Nereta', 1, 30, 270);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (294, '31284 Coolidge Parkway', NULL, 'Aleksandrovac', 1, 36, 274);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (295, '4 Corry Park', '6454', 'Willowmore', 1, 26, 137);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (296, '562 Lotheville Park', '34-205', 'Stryszawa', 0, 18, 373);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (297, '4770 Garrison Street', '6540', 'Merida', 1, 25, 210);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (298, '858 Garrison Drive', '142717', 'Tsaritsyno', 0, 30, 261);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (299, '8374 Clove Avenue', '624082', 'Iset’', 1, 1, 328);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (300, '8 La Follette Road', NULL, 'Jeblog Satu', 0, 40, 313);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (301, '90009 Rowland Center', NULL, 'Jelbuk', 1, 23, 281);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (302, '31 Dwight Parkway', '8711', 'San Fernando', 1, 33, 216);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (303, '6041 Monument Pass', '08104', 'Camden', 0, 30, 331);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (304, '4609 Vera Drive', '161250', 'Lipin Bor', 1, 27, 290);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (305, '6 Vera Hill', NULL, 'Krajan Bejagung', 1, 24, 48);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (306, '5 Waxwing Road', NULL, 'Vyerkhnyadzvinsk', 0, 18, 4);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (307, '89613 Sunnyside Road', '93883 CEDEX', 'Noisy-le-Grand', 0, 38, 252);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (308, '3 Pearson Point', '250 90', 'Jirny', 1, 30, 297);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (309, '3 Sherman Plaza', NULL, 'Utara', 1, 26, 393);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (310, '06 Sage Hill', NULL, 'Nikshahr', 1, 34, 326);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (311, '19331 Messerschmidt Crossing', '431 49', 'Mölndal', 0, 26, 391);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (312, '575 Oriole Center', NULL, 'Chunmuying', 1, 21, 353);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (313, '2 Gateway Trail', NULL, 'Yanda Bayo', 1, 10, 65);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (314, '3087 Maywood Point', '7202', 'Pan-an', 1, 16, 93);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (315, '23476 Raven Court', NULL, 'Kochetok', 1, 33, 90);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (316, '9119 Merrick Alley', NULL, 'Burgaltay', 1, 13, 183);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (317, '446 Holmberg Place', '02070', 'Albacete', 1, 30, 133);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (318, '4908 Katie Park', NULL, 'Soca', 1, 26, 364);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (319, '89686 Dayton Hill', NULL, 'Yangshufang', 0, 29, 80);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (320, '98622 Dawn Crossing', '33436', 'Boynton Beach', 0, 1, 171);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (321, '7150 Walton Pass', NULL, 'Siak Sri Indrapura', 1, 22, 164);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (322, '937 Morningstar Circle', NULL, 'Ailibugai', 1, 7, 36);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (323, '94597 Evergreen Drive', NULL, 'Cikiruh', 1, 34, 291);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (324, '3567 Blackbird Lane', NULL, 'Bulawayo', 0, 11, 167);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (325, '695 Farwell Avenue', '6608', 'Hinunangan', 0, 38, 395);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (326, '52 Briar Crest Park', '34260', 'Nam Khun', 1, 8, 103);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (327, '1 Walton Center', NULL, 'Zhangbagou', 1, 7, 391);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (328, '3 Dawn Plaza', NULL, 'Saqayn', 1, 27, 167);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (329, '194 Sachtjen Street', NULL, 'Keren', 1, 17, 212);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (330, '6 Magdeline Place', '678149', 'Lensk', 1, 16, 41);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (331, '6 4th Street', NULL, 'Gusau', 0, 2, 4);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (332, '890 Bobwhite Plaza', '8508', 'La Paz', 1, 28, 197);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (333, '96308 Bashford Parkway', '73-201', 'Choszczno', 0, 35, 310);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (334, '5865 Caliangt Parkway', '6504', 'Balogo', 1, 15, 399);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (335, '161 Starling Circle', NULL, 'Mityana', 1, 29, 178);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (336, '32 Anderson Road', '9496', 'Balzers', 1, 36, 20);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (337, '0635 Barby Hill', '94263', 'Sacramento', 0, 4, 303);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (338, '1 Dryden Plaza', NULL, 'Mlowo', 1, 14, 262);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (339, '136 Vahlen Plaza', NULL, 'Dongxi', 1, 24, 276);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (340, '99404 Mallory Pass', '683 52', 'Zbýšov', 0, 4, 108);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (341, '05611 Sage Avenue', NULL, 'Jagistay', 0, 27, 17);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (342, '2 Knutson Pass', '99709', 'Fairbanks', 1, 6, 232);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (343, '91208 Becker Road', NULL, 'Plátanos', 0, 7, 142);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (344, '74 Superior Terrace', '51000', 'Rijeka', 1, 19, 392);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (345, '0 Judy Road', '4753', 'Londres', 1, 26, 80);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (346, '90 Kenwood Point', '78364 CEDEX', 'Montesson', 1, 32, 173);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (347, '612 Roxbury Road', NULL, 'Pamotan', 1, 3, 10);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (348, '79063 Shoshone Court', '3805', 'Amersfoort', 1, 19, 209);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (349, '62697 International Place', '50260', 'Ban Mai', 0, 35, 228);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (350, '5239 Welch Parkway', NULL, 'Huoshaoping', 0, 10, 109);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (351, '140 Morningstar Alley', '6804', 'Hernani', 1, 26, 303);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (352, '47 Lerdahl Park', NULL, 'Karanganyar', 1, 34, 299);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (353, '8 Goodland Court', NULL, 'Las Palmas', 0, 15, 372);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (354, '42169 Rutledge Drive', NULL, 'Daxin', 0, 18, 310);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (355, '7 Randy Center', '78685-000', 'Araguaiana', 1, 14, 352);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (356, '14872 Brentwood Point', '5211', 'Sapang Buho', 0, 18, 331);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (357, '11406 Kim Junction', '601293', 'Suzdal’', 0, 11, 342);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (358, '6 Homewood Circle', '2012', 'Davila', 0, 36, 57);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (359, '07 Shopko Court', NULL, 'Krivaja', 0, 9, 170);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (360, '9 Manitowish Junction', '4730-062', 'Mó', 0, 7, 230);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (361, '690 Summit Place', NULL, 'Shiquan', 1, 24, 395);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (362, '79698 Armistice Drive', NULL, 'Metsamor', 1, 11, 6);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (363, '4263 Summerview Lane', NULL, 'Guiping', 1, 31, 172);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (364, '1 Express Parkway', '86042 CEDEX 9', 'Poitiers', 1, 9, 369);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (365, '0695 Village Green Point', NULL, 'Hajoho', 1, 37, 343);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (366, '379 Arrowood Street', NULL, 'Roskoshnyy', 1, 40, 261);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (367, '9 Bashford Parkway', NULL, 'Rekovac', 0, 27, 237);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (368, '70 Dwight Hill', NULL, 'Sengkerang Tiga', 1, 3, 126);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (369, '1141 Cambridge Street', NULL, 'Kuta', 1, 18, 380);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (370, '50871 Maple Road', '39605 CEDEX', 'Arbois', 0, 3, 166);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (371, '015 Shoshone Place', '16-101', 'Sokólka', 1, 22, 27);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (372, '8 Holy Cross Trail', NULL, 'Tobatí', 0, 5, 257);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (373, '35915 Oak Point', NULL, 'Kryvichy', 1, 36, 242);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (374, '1591 Lakewood Road', '45032 CEDEX 1', 'Orléans', 0, 1, 313);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (375, '2 Oxford Street', '38770-000', 'João Pinheiro', 1, 35, 342);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (376, '69436 Bunker Hill Point', NULL, 'Karanggedang', 1, 38, 50);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (377, '16046 Portage Street', '05-540', 'Kabaty', 0, 36, 39);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (378, '43 Sullivan Pass', NULL, 'Bidikotak', 0, 10, 157);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (379, '63059 Farmco Drive', NULL, 'Klapagading', 1, 19, 201);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (380, '3 Sunfield Junction', NULL, 'Lloqan', 0, 2, 331);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (381, '442 Dryden Plaza', NULL, 'Niu', 1, 16, 54);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (382, '3081 Veith Place', '5419', 'General Luna', 0, 32, 372);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (383, '4 Artisan Junction', '14-310', 'Milakowo', 1, 13, 8);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (384, '472 Spenser Park', '142817', 'Zamoskvorech’ye', 0, 37, 389);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (385, '15993 Southridge Point', NULL, 'Sucre', 1, 19, 45);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (386, '311 Prairieview Point', '37160-000', 'Campos Gerais', 1, 39, 230);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (387, '5 Corry Parkway', '22179', 'Hamburg Bramfeld', 0, 1, 346);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (388, '8617 Hoffman Street', NULL, 'Cukanguncal', 1, 10, 207);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (389, '563 School Plaza', '65011', 'Khairpur', 1, 4, 375);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (390, '69163 East Junction', NULL, 'Wanurian', 1, 34, 82);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (391, '9 Lawn Hill', '2256', 'Juršinci', 1, 16, 39);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (392, '81555 Service Crossing', NULL, 'Jocón', 1, 37, 384);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (393, '248 Tennessee Point', NULL, 'Türkmenabat', 0, 22, 211);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (394, '2 Sugar Place', '9410', 'Ushuaia', 0, 24, 174);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (395, '84 Charing Cross Alley', NULL, 'Wentugaole', 1, 35, 237);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (396, '0341 Bartelt Court', NULL, 'Horodok', 0, 8, 110);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (397, '3 Mccormick Place', NULL, 'Mawu', 1, 36, 5);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (398, '24 Longview Place', NULL, 'Wushishi', 0, 32, 170);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (399, '23 Hazelcrest Road', NULL, 'Fushan', 0, 38, 294);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (400, '247 Spohn Plaza', 'AB39', 'Aberdeen', 1, 9, 319);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (401, '434 Michigan Court', NULL, 'Qalyub', 1, 12, 310);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (402, '4 Gina Center', '6542', 'Balogo', 1, 10, 37);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (403, '1 Summerview Lane', '12004', 'Comitancillo', 1, 19, 381);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (404, '40713 Magdeline Park', '34-115', 'Ryczów', 1, 31, 46);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (405, '44 Prairie Rose Court', '98000', 'La Condamine', 1, 4, 189);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (406, '51751 Beilfuss Point', '08-130', 'Kotun', 1, 39, 257);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (407, '33591 Arizona Road', NULL, 'Segoro', 0, 27, 166);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (408, '4 Pond Parkway', '8301', 'San Miguel', 1, 11, 236);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (409, '3775 Jenna Terrace', NULL, 'Karangsari', 1, 8, 110);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (410, '6 Glendale Drive', NULL, 'Sedandang', 1, 10, 330);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (411, '8397 Forest Run Crossing', '26301', 'Kohat', 1, 28, 337);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (412, '6363 Sundown Lane', NULL, 'Dongfanghong', 1, 7, 313);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (413, '6912 Paget Hill', NULL, 'Shuishiying', 0, 16, 259);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (414, '14520 Duke Court', '103 88', 'Stockholm', 1, 2, 62);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (415, '025 Myrtle Lane', NULL, 'Wanfang', 0, 15, 229);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (416, '383 Hanson Park', '7005-719', 'Monte do Outeiro', 1, 27, 335);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (417, '04435 Jenna Pass', '08904', 'Hospitalet De Llobregat, L''', 1, 34, 49);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (418, '452 Walton Way', NULL, 'Gunung Sugih', 1, 27, 245);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (419, '03 Thierer Trail', '53160', 'Fak Tha', 0, 31, 267);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (420, '76 Burning Wood Drive', '681008', 'Solnechnyy', 1, 37, 318);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (421, '327 Park Meadow Parkway', '054028', 'Mitú', 1, 35, 355);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (422, '74 Cambridge Junction', '673377', 'Kholbon', 1, 14, 180);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (423, '5 Main Alley', NULL, 'Dangmu', 1, 36, 277);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (424, '97 Hanson Crossing', NULL, 'Zhaodong', 1, 6, 116);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (425, '030 Lawn Circle', '40400', 'Fovissste', 1, 18, 211);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (426, '67794 Dixon Court', '6306', 'Valencia', 1, 16, 346);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (427, '970 Boyd Park', '15370-000', 'Pereira Barreto', 1, 12, 349);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (428, '669 Golden Leaf Way', '4600', 'Daet', 1, 40, 389);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (429, '01 Birchwood Hill', NULL, 'Sebedo', 1, 9, 42);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (430, '24123 Bartillon Plaza', NULL, 'Lanta Timur', 1, 7, 157);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (431, '73 Holmberg Street', '4710', 'Gubat', 1, 19, 322);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (432, '1 Waxwing Trail', '4207', 'San Nicolas', 0, 23, 73);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (433, '52576 Oakridge Park', NULL, 'Awjilah', 1, 29, 367);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (434, '02472 Anzinger Junction', NULL, 'Puerto Padre', 1, 16, 175);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (435, '334 Union Lane', 'D11', 'Navan', 0, 20, 174);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (436, '25716 Grasskamp Drive', NULL, 'Energodar', 0, 10, 268);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (437, '2 Homewood Street', NULL, 'Gesik', 1, 26, 287);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (438, '478 Victoria Road', NULL, 'Kesheng', 1, 15, 252);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (439, '0348 Mosinee Road', '13650-000', 'Santa Cruz das Palmeiras', 1, 34, 372);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (440, '8 Division Way', '352364', 'Tbilisskaya', 0, 25, 149);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (441, '6 Trailsway Trail', '78014 CEDEX', 'Versailles', 1, 23, 141);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (442, '427 Twin Pines Way', NULL, 'Ayo', 1, 12, 187);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (443, '79 5th Junction', NULL, 'Manga', 1, 34, 4);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (444, '2 Basil Park', NULL, 'Kebonkaret', 1, 33, 97);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (445, '530 Stephen Crossing', '3525-606', 'Lapa do Lobo', 1, 24, 376);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (446, '78 Mosinee Court', NULL, 'Riangwale', 1, 5, 294);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (447, '22165 Walton Hill', 'BD7', 'Bradford', 1, 31, 144);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (448, '46190 Bellgrove Crossing', '2580-466', 'Carregado', 1, 20, 285);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (449, '71777 Lighthouse Bay Alley', NULL, 'Beibei', 1, 14, 186);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (450, '78 Farragut Road', NULL, 'Dopang', 1, 16, 361);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (451, '097 Mcguire Avenue', NULL, 'Margherita', 0, 27, 101);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (452, '751 Mitchell Avenue', NULL, 'Yanzhou', 1, 24, 23);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (453, '1 Sunfield Junction', '2380-407', 'Louriceira', 1, 27, 142);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (454, '33 Division Lane', '43290', 'Grubišno Polje', 1, 33, 228);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (455, '2405 Loftsgordon Center', '57124', 'Livorno', 1, 35, 146);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (456, '093 Westridge Place', NULL, 'Madolenihm Municipality Government', 0, 33, 354);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (457, '7339 Crescent Oaks Place', NULL, 'Ungsang', 1, 25, 128);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (458, '1242 Stoughton Court', NULL, 'Dadoupu', 0, 32, 101);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (459, '83 American Plaza', '50251', 'Jand', 0, 29, 279);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (460, '7 International Place', '17140', 'Chaiyaphum', 1, 40, 268);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (461, '037 Waubesa Road', NULL, 'Mersa Matruh', 1, 16, 171);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (462, '5301 Welch Junction', '9510', 'Dumaguil', 1, 9, 94);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (463, '079 Vahlen Avenue', '403 17', 'Chabarovice', 1, 10, 170);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (464, '7128 Norway Maple Trail', NULL, 'Sexiong', 1, 16, 344);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (465, '534 Cottonwood Parkway', NULL, 'Cizhu', 1, 38, 73);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (466, '40343 Cottonwood Park', '6711', 'Pulangbato', 1, 33, 38);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (467, '70297 Sherman Lane', NULL, 'Bani Zayd', 1, 36, 101);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (468, '62 Heffernan Crossing', NULL, 'Huaihua', 1, 35, 275);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (469, '2094 Bayside Parkway', NULL, 'Bailang', 1, 15, 241);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (470, '04 Buena Vista Circle', NULL, 'Qal‘ah-ye Farsi', 1, 9, 358);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (471, '2 Laurel Way', NULL, 'Liucun', 1, 26, 259);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (472, '79660 Rutledge Park', NULL, 'Baruunsuu', 1, 12, 192);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (473, '0 Dahle Junction', NULL, 'Cimanglid', 1, 40, 16);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (474, '051 Clyde Gallagher Circle', '5929', 'Hernando', 1, 25, 373);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (475, '008 Kim Crossing', NULL, 'Heshi', 1, 1, 354);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (476, '147 Huxley Alley', '2156', 'Fray Luis A. Beltrán', 1, 9, 267);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (477, '454 Merrick Park', NULL, 'Omaruru', 1, 6, 292);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (478, '680 Schiller Junction', '3776', 'Vidin', 1, 38, 229);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (479, '4648 Arapahoe Point', NULL, 'Obertyn', 1, 9, 109);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (480, '2 Ridge Oak Lane', NULL, 'Boudinar', 0, 35, 166);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (481, '5 Sachtjen Road', NULL, 'Kadumelati', 1, 9, 331);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (482, '6994 Dorton Alley', '27710', 'Durham', 1, 3, 159);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (483, '41 Brentwood Way', NULL, 'Careva Cuprija', 1, 40, 57);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (484, '7830 Bashford Road', '36-100', 'Kolbuszowa', 1, 40, 223);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (485, '7048 Lakeland Plaza', NULL, 'Changcun', 1, 18, 341);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (486, '673 Linden Way', NULL, 'Lizhuang', 1, 25, 383);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (487, '7588 Division Parkway', '664 84', 'Príbram', 1, 4, 226);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (488, '2 Namekagon Circle', 'A84', 'Ballyjamesduff', 1, 34, 279);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (489, '25603 Oriole Point', NULL, 'Tanshi', 1, 21, 176);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (490, '3466 Vahlen Park', NULL, 'Puan Selatan', 1, 35, 250);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (491, '9011 Walton Plaza', NULL, 'Kiambu', 1, 33, 17);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (492, '916 Graceland Avenue', NULL, 'Esik', 1, 29, 63);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (493, '413 Main Center', NULL, 'Kurayyimah', 1, 6, 325);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (494, '2 Evergreen Drive', 'L5W', 'Mississauga', 0, 15, 149);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (495, '2521 Gale Road', NULL, 'Sugihmukti', 1, 16, 108);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (496, '55 1st Court', '3903', 'Uyugan', 1, 16, 234);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (497, '06370 Mcbride Crossing', '38542', 'Vista Hermosa', 1, 15, 149);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (498, '835 Bultman Center', NULL, 'Huatan', 1, 31, 174);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (499, '0 Ohio Hill', '10004 CEDEX', 'Troyes', 1, 26, 166);

INSERT INTO "ANONYMOUS"."Addresses" ("ADR_Id", "ADR_Street", "ADR_PostalCode", "ADR_City", "ADR_IsMain", "COU_Id", "CUS_Id") VALUES (500, '2874 Red Cloud Alley', NULL, 'Havirga', 1, 32, 147);


INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (1, '3720979857', TO_DATE('2019-07-05', 'yyyy-mm-dd'), 0, 258);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (2, '3079836995', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 0, 118);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (3, '2105011357', TO_DATE('2019-03-08', 'yyyy-mm-dd'), 0, 247);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (4, '6857016305', TO_DATE('2019-07-01', 'yyyy-mm-dd'), 0, 150);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (5, '5643704188', TO_DATE('2019-01-04', 'yyyy-mm-dd'), 0, 191);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (6, '8999439429', TO_DATE('2019-06-30', 'yyyy-mm-dd'), 0, 272);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (7, '6966079596', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 1, 87);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (8, '5209459373', TO_DATE('2019-02-01', 'yyyy-mm-dd'), 0, 139);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (9, '0245321047', TO_DATE('2019-07-25', 'yyyy-mm-dd'), 0, 12);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (10, '8869129454', TO_DATE('2018-09-25', 'yyyy-mm-dd'), 1, 136);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (11, '2959632125', TO_DATE('2019-05-16', 'yyyy-mm-dd'), 1, 43);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (12, '9461455119', TO_DATE('2019-05-31', 'yyyy-mm-dd'), 1, 244);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (13, '5613595089', TO_DATE('2019-05-12', 'yyyy-mm-dd'), 0, 136);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (14, '0718372638', TO_DATE('2018-11-19', 'yyyy-mm-dd'), 0, 190);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (15, '7820493712', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 1, 276);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (16, '8611515617', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 0, 166);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (17, '8016837026', TO_DATE('2018-09-15', 'yyyy-mm-dd'), 0, 160);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (18, '4198131279', TO_DATE('2018-11-05', 'yyyy-mm-dd'), 1, 76);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (19, '8032794093', TO_DATE('2019-04-10', 'yyyy-mm-dd'), 0, 27);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (20, '9985586786', TO_DATE('2018-08-16', 'yyyy-mm-dd'), 1, 4);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (21, '6126168046', TO_DATE('2019-06-18', 'yyyy-mm-dd'), 0, 242);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (22, '0297181564', TO_DATE('2019-03-17', 'yyyy-mm-dd'), 0, 109);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (23, '2544719974', TO_DATE('2019-06-19', 'yyyy-mm-dd'), 1, 222);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (24, '9888985531', TO_DATE('2018-09-22', 'yyyy-mm-dd'), 0, 209);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (25, '1043885846', TO_DATE('2019-07-15', 'yyyy-mm-dd'), 1, 149);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (26, '8731840655', TO_DATE('2018-12-18', 'yyyy-mm-dd'), 1, 83);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (27, '0483588938', TO_DATE('2018-11-04', 'yyyy-mm-dd'), 0, 280);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (28, '8683776735', TO_DATE('2019-02-14', 'yyyy-mm-dd'), 0, 21);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (29, '8073012693', TO_DATE('2019-06-13', 'yyyy-mm-dd'), 0, 63);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (30, '6379544348', TO_DATE('2018-10-13', 'yyyy-mm-dd'), 1, 285);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (31, '5741762336', TO_DATE('2018-11-18', 'yyyy-mm-dd'), 1, 135);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (32, '1161753664', TO_DATE('2018-11-17', 'yyyy-mm-dd'), 0, 85);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (33, '6247035950', TO_DATE('2018-11-20', 'yyyy-mm-dd'), 0, 232);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (34, '0768147565', TO_DATE('2019-03-23', 'yyyy-mm-dd'), 0, 132);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (35, '0219165254', TO_DATE('2019-03-03', 'yyyy-mm-dd'), 1, 204);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (36, '4472531062', TO_DATE('2018-08-28', 'yyyy-mm-dd'), 1, 281);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (37, '3653392837', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 1, 41);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (38, '5363205262', TO_DATE('2019-03-31', 'yyyy-mm-dd'), 1, 288);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (39, '0134240707', TO_DATE('2019-04-03', 'yyyy-mm-dd'), 0, 293);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (40, '4031721773', TO_DATE('2019-01-05', 'yyyy-mm-dd'), 0, 62);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (41, '7179515035', TO_DATE('2019-01-28', 'yyyy-mm-dd'), 1, 140);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (42, '0865720924', TO_DATE('2019-05-19', 'yyyy-mm-dd'), 0, 191);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (43, '5454408263', TO_DATE('2018-11-21', 'yyyy-mm-dd'), 0, 24);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (44, '6355155163', TO_DATE('2019-02-09', 'yyyy-mm-dd'), 1, 37);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (45, '8710527257', TO_DATE('2019-03-23', 'yyyy-mm-dd'), 0, 111);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (46, '8391087646', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 0, 238);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (47, '0279068050', TO_DATE('2019-03-12', 'yyyy-mm-dd'), 1, 42);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (48, '0816209464', TO_DATE('2018-10-08', 'yyyy-mm-dd'), 0, 8);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (49, '2233187229', TO_DATE('2018-11-27', 'yyyy-mm-dd'), 0, 253);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (50, '0155130803', TO_DATE('2018-12-06', 'yyyy-mm-dd'), 0, 166);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (51, '1270341839', TO_DATE('2019-02-26', 'yyyy-mm-dd'), 0, 148);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (52, '3082276849', TO_DATE('2019-01-24', 'yyyy-mm-dd'), 0, 131);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (53, '8690227768', TO_DATE('2019-08-01', 'yyyy-mm-dd'), 1, 115);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (54, '4662529255', TO_DATE('2018-08-24', 'yyyy-mm-dd'), 0, 73);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (55, '0529942119', TO_DATE('2018-08-27', 'yyyy-mm-dd'), 1, 147);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (56, '8753646355', TO_DATE('2019-04-12', 'yyyy-mm-dd'), 0, 264);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (57, '9793053119', TO_DATE('2019-04-02', 'yyyy-mm-dd'), 1, 218);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (58, '0084350334', TO_DATE('2019-04-29', 'yyyy-mm-dd'), 0, 112);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (59, '7086244848', TO_DATE('2018-11-17', 'yyyy-mm-dd'), 0, 124);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (60, '3120167037', TO_DATE('2018-12-08', 'yyyy-mm-dd'), 1, 288);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (61, '8867940074', TO_DATE('2019-06-06', 'yyyy-mm-dd'), 0, 32);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (62, '4204006736', TO_DATE('2019-03-16', 'yyyy-mm-dd'), 0, 68);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (63, '1170680747', TO_DATE('2018-11-21', 'yyyy-mm-dd'), 1, 289);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (64, '5336590282', TO_DATE('2019-01-13', 'yyyy-mm-dd'), 0, 220);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (65, '6388101747', TO_DATE('2019-02-11', 'yyyy-mm-dd'), 1, 239);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (66, '2861007133', TO_DATE('2018-09-06', 'yyyy-mm-dd'), 0, 149);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (67, '1215619405', TO_DATE('2019-04-27', 'yyyy-mm-dd'), 0, 65);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (68, '1157829155', TO_DATE('2018-09-26', 'yyyy-mm-dd'), 1, 284);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (69, '1913194442', TO_DATE('2018-10-24', 'yyyy-mm-dd'), 0, 242);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (70, '9803816152', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 1, 202);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (71, '9461372647', TO_DATE('2018-09-24', 'yyyy-mm-dd'), 0, 172);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (72, '0920168728', TO_DATE('2019-02-05', 'yyyy-mm-dd'), 1, 25);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (73, '6204032186', TO_DATE('2019-03-01', 'yyyy-mm-dd'), 1, 23);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (74, '1260463109', TO_DATE('2018-11-20', 'yyyy-mm-dd'), 1, 221);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (75, '6354825114', TO_DATE('2018-09-16', 'yyyy-mm-dd'), 0, 83);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (76, '9696145411', TO_DATE('2018-09-02', 'yyyy-mm-dd'), 1, 209);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (77, '7817353301', TO_DATE('2019-04-20', 'yyyy-mm-dd'), 0, 56);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (78, '8577335461', TO_DATE('2018-10-15', 'yyyy-mm-dd'), 1, 108);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (79, '4164142146', TO_DATE('2019-06-21', 'yyyy-mm-dd'), 0, 245);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (80, '5134201366', TO_DATE('2018-08-26', 'yyyy-mm-dd'), 1, 226);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (81, '5037748046', TO_DATE('2019-06-03', 'yyyy-mm-dd'), 1, 199);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (82, '8730168279', TO_DATE('2019-03-02', 'yyyy-mm-dd'), 1, 244);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (83, '8944290733', TO_DATE('2019-04-30', 'yyyy-mm-dd'), 1, 81);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (84, '1695179293', TO_DATE('2018-11-30', 'yyyy-mm-dd'), 0, 230);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (85, '6425666250', TO_DATE('2019-07-13', 'yyyy-mm-dd'), 0, 247);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (86, '2095304160', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 0, 82);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (87, '3167903309', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 0, 300);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (88, '4661954718', TO_DATE('2019-08-26', 'yyyy-mm-dd'), 1, 98);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (89, '8423228509', TO_DATE('2019-07-01', 'yyyy-mm-dd'), 1, 268);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (90, '3775363874', TO_DATE('2018-10-19', 'yyyy-mm-dd'), 0, 54);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (91, '4491184771', TO_DATE('2018-11-14', 'yyyy-mm-dd'), 0, 74);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (92, '0942412338', TO_DATE('2019-04-09', 'yyyy-mm-dd'), 1, 278);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (93, '1201230616', TO_DATE('2019-01-28', 'yyyy-mm-dd'), 0, 94);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (94, '2678189759', TO_DATE('2018-08-31', 'yyyy-mm-dd'), 1, 195);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (95, '2976999163', TO_DATE('2019-06-12', 'yyyy-mm-dd'), 1, 136);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (96, '0986135674', TO_DATE('2018-11-15', 'yyyy-mm-dd'), 1, 41);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (97, '4297930935', TO_DATE('2018-11-20', 'yyyy-mm-dd'), 0, 5);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (98, '0632379146', TO_DATE('2019-02-08', 'yyyy-mm-dd'), 0, 45);

INSERT INTO "ANONYMOUS"."Invoices" ("INV_Id", "INV_Number", "INV_Date", "INV_IsPaid", "CUS_Id") VALUES (99, '5754493878', TO_DATE('2018-11-15', 'yyyy-mm-dd'), 1, 94);


INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (1, 'Remov art anal sphincter', 371.1100, 69);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (2, 'Revis cleft palat repair', 91.2600, 95);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (3, 'Opn abltn renal les/tiss', 459.1500, 64);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (4, 'Abltn liver les/tiss NEC', 341.9900, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (5, 'Iris operation NEC', 261.6000, 97);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (6, 'Ankle arthroscopy', 479.9800, 12);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (7, 'Partial nephrectomy', 214.3600, 26);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (8, 'Heart vessel op NEC', 285.7000, 97);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (9, 'Lap bil dir ing hrn-grft', 405.3900, 21);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (10, 'Forcib correct defor NEC', 107.6300, 70);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (11, 'Prostatic massage', 416.8400, 42);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (12, 'Periurethral excision', 308.4700, 26);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (13, 'Anesth inject-spin canal', 140.6100, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (14, 'Close red-humerus epiphy', 166.9000, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (15, 'Graft conjunc cul-de-sac', 369.6700, 7);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (16, 'Gastrostomy closure', 177.5600, 7);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (17, 'Intravs msmt ves NEC/NOS', 276.4500, 41);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (18, 'Repair of hammer toe', 164.7000, 12);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (19, 'Suture urethral lacerat', 365.5400, 99);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (20, 'Referral psych aftercare', 375.8200, 50);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (21, 'Pressure dressing applic', 221.7800, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (22, 'Clos reduct tm dislocat', 359.8400, 60);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (23, 'Contr mammary ductogram', 51.2900, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (24, 'Peripheral nerve ops NEC', 240.1000, 56);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (25, 'Bile duct anastomos NEC', 65.8200, 47);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (26, 'Dx ultrasound-head/neck', 238.9200, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (27, 'Oth endo proc oth vessel', 315.3600, 24);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (28, 'Op red-radius/uln epiphy', 183.0800, 37);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (29, 'Implant ureteral stimul', 99.3600, 74);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (30, 'Remove FB lens NOS', 151.0700, 95);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (31, 'Electro-oculogram', 333.2800, 98);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (32, 'Ovarian torsion release', 250.7200, 78);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (33, 'Tot gast w intes interpo', 28.1600, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (34, 'Bone graft to humerus', 247.6400, 50);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (35, 'Other counselling', 386.2600, 79);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (36, 'Hand soft tissue exc NEC', 425.7000, 25);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (37, 'Tot mandibulec w reconst', 40.2100, 53);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (38, 'Injection oxazolidinone', 410.5800, 66);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (39, 'Brain/skull contrst xray', 281.8200, 43);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (40, 'Occlus head/neck ves NEC', 275.6300, 43);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (41, 'Total patellectomy', 54.6900, 7);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (42, 'Tonsil&adenoid biopsy', 115.3900, 9);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (43, 'Pubiotomy to assist del', 280.1600, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (44, 'Neurologic func test NEC', 197.9800, 77);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (45, 'Correct ureteropelv junc', 211.0600, 60);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (46, 'Lower limb artery incis', 31.5200, 54);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (47, 'Bone biopsy NOS', 78.3700, 30);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (48, 'Joint biopsy NOS', 163.2600, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (49, 'Other craniotomy', 319.0300, 35);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (50, 'Lamellar keratoplast NEC', 106.1500, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (51, 'Rotator cuff repair', 90.0900, 9);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (52, 'Seg osteoplasty maxilla', 371.9000, 75);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (53, 'Remov urethral stent', 356.2800, 55);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (54, 'Rev/repl epiretinal pros', 223.0200, 80);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (55, 'Hip surface, metal/metal', 56.5000, 98);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (56, 'Remov intralum pharyn FB', 76.9600, 16);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (57, 'Other spinal dx proc', 12.9500, 3);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (58, 'Allotrnsplnt islets lang', 10.8200, 47);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (59, 'Replace cystostomy tube', 56.2100, 73);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (60, 'Opn dir ing hern-gft NEC', 411.4600, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (61, 'Other tracheal operation', 217.8900, 51);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (62, 'Limb length-radius/ulna', 157.0300, 77);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (63, 'C & s-bili/pancreas', 364.0500, 95);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (64, 'Magnetic res image unsp', 409.5900, 55);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (65, 'Destruct-knee lesion NEC', 49.2400, 58);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (66, 'Loc exc les tibia/fibula', 316.0300, 66);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (67, 'Rad neck dissection NOS', 491.2800, 76);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (68, 'Culture-ent/larynx', 343.2900, 75);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (69, 'Electroshock therapy NEC', 304.1100, 44);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (70, 'Tympanosympathectomy', 445.1600, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (71, 'Hemorrhoid cauterizat', 164.0700, 87);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (72, 'Suture of saliv glnd lac', 81.0300, 46);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (73, 'Closed testicular biopsy', 108.1800, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (74, 'Vulvar adhesiolysis', 379.5800, 51);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (75, 'Dyslexia training', 468.9400, 47);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (76, 'Urin incontin repair NEC', 319.2500, 89);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (77, 'Resrf hip,total-acet/fem', 346.1200, 16);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (78, 'Tu bladder clearance', 326.4000, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (79, 'External ear biopsy', 267.5100, 78);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (80, 'Mus/ten/fas/bur op NEC', 370.4500, 56);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (81, 'Open red-int fix humerus', 300.5900, 26);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (82, 'Cornea reconstruct NEC', 77.3500, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (83, 'Ocular motility study', 247.0100, 29);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (84, 'Open sigmoidectomy NEC', 110.2400, 97);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (85, 'Immobiliz/wound attn NEC', 188.6800, 77);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (86, 'Closed bronchial biopsy', 116.1100, 73);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (87, 'Cell blk/pap-female gen', 470.8000, 11);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (88, 'Oth bone repair/plast op', 173.4400, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (89, 'Cyclodialysis', 300.0200, 70);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (90, 'Adm neuroprotective agnt', 263.8100, 78);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (91, 'Pharyngeal dx proc NEC', 348.0100, 59);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (92, 'Open reduc-hip dislocat', 87.3300, 86);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (93, 'Sing source radiosurgery', 96.2100, 62);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (94, 'Manual reduction hernia', 13.3800, 26);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (95, 'Total dacryoadenectomy', 160.4300, 61);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (96, 'Multiple sinus incision', 342.5900, 20);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (97, 'Insertion of iud', 41.1500, 30);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (98, 'Re-entry operation', 456.6500, 55);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (99, 'Endosc remove bile stone', 227.9200, 90);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (100, 'Eyelid dx procedure NEC', 50.9400, 45);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (101, 'Cautery to stop epistax', 217.7700, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (102, 'Excis les tendon sheath', 41.8300, 67);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (103, 'Muscle or fascia graft', 387.0900, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (104, 'Rem crtd sinus stm, totl', 273.7000, 60);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (105, 'Rev hip repl-fem comp', 390.5000, 20);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (106, 'Nonmagnet remove FB lens', 155.8100, 19);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (107, 'Oth chest cage ostectomy', 277.7900, 20);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (108, 'Destruct esophag les NEC', 58.8200, 75);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (109, 'Circumcision', 171.4100, 62);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (110, 'Lacrimal sys dx proc NEC', 315.9500, 32);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (111, 'Stretching of fascia', 364.9700, 62);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (112, 'Adjust lid position NEC', 270.7200, 58);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (113, 'Control anal hemorrhage', 317.6400, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (114, 'Anesthesia acupuncture', 173.8300, 27);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (115, 'Ureteral operation NEC', 7.1000, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (116, 'Micro exam-op wound NEC', 410.9100, 80);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (117, 'Cont inv mec ven 96+ hrs', 300.6700, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (118, 'Cystotomy & adhesiolysis', 257.7100, 86);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (119, 'Stern sm bowel interpos', 80.0800, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (120, 'Hysteroscopy', 215.6300, 91);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (121, 'Lap bil dir ing hrn-grft', 31.5000, 7);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (122, 'Eustachian tube ops', 59.7200, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (123, 'Ex chest cage bone-gft', 222.3000, 69);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (124, 'Oxygen consumption monit', 217.3100, 98);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (125, 'Excision of mouth NEC', 84.2900, 64);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (126, 'Mouth biopsy NOS', 364.1900, 54);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (127, 'Open cereb meninges bx', 154.1000, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (128, 'Conjunctival biopsy', 14.5900, 16);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (129, 'Pacemaker impedance chck', 406.3400, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (130, 'Implt artf urin sphinct', 62.1300, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (131, 'Tot face bone ostect NEC', 378.7000, 45);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (132, 'Hymenorrhaphy', 342.5100, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (133, 'Atria septa def rep NEC', 10.2000, 47);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (134, 'Excision of mouth NEC', 86.7900, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (135, 'Remov ureteral drain', 138.2700, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (136, 'Ins left atr append dev', 426.2000, 95);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (137, 'Phonocardiogram', 359.3700, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (138, 'Create septal defect', 411.7100, 89);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (139, 'Closed thyroid gland bx', 448.1200, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (140, 'Upper arm reattachment', 65.2500, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (141, 'Electro-oculogram', 402.6500, 16);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (142, 'Replace large bowel tube', 115.1600, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (143, 'Contrast vasogram', 63.7600, 27);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (144, 'Pacemaker impedance chck', 180.5500, 41);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (145, 'Joint structure op NEC', 36.2300, 46);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (146, 'Create cutanperiton fist', 63.5000, 20);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (147, 'Conjunctiva dx proc NEC', 492.3500, 27);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (148, 'Chemical shock therapy', 139.4400, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (149, 'Osteoclasis-tibia/fibula', 419.1700, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (150, 'Remov peritoneal drain', 474.7800, 50);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (151, 'Ileal conduitogram', 480.7900, 92);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (152, 'Head/neck ves resec-repl', 173.2600, 77);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (153, 'Cystotomy & adhesiolysis', 114.5000, 88);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (154, 'Bact smear-spleen/marrow', 182.7100, 78);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (155, 'Urethral reanastomosis', 106.4300, 32);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (156, 'Thor abltn lung les/tiss', 286.5500, 9);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (157, 'Bilateral breast implant', 491.3000, 35);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (158, 'Choroid plexectomy', 422.4700, 3);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (159, 'Subtalr jt arthroereisis', 329.3200, 52);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (160, 'Replace dental packing', 390.3800, 17);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (161, 'Arthrocentesis', 483.9800, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (162, 'Tot gast w intes interpo', 252.3700, 3);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (163, 'Masters'' 2-step test', 14.4200, 18);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (164, 'Facial bone incision NEC', 291.8700, 64);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (165, 'Orthovoltage radiation', 349.3800, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (166, 'Open reduc-dislocat NEC', 64.3600, 86);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (167, 'Lap gastroenterostomy', 385.4100, 77);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (168, 'Referral psych rehab NEC', 106.0300, 70);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (169, 'Bilat rad neck dissect', 320.1000, 82);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (170, 'Arth/pros rem wo rep-elb', 26.9400, 69);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (171, 'Local renal perfusion', 274.3400, 12);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (172, 'Skin & subq dx proc NEC', 21.3800, 27);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (173, 'Perf keratopl w autogrft', 315.0700, 2);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (174, 'DIEP flap, free', 47.8900, 11);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (175, 'Anesth inject symp nerve', 28.4600, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (176, 'Pollicization operation', 417.2100, 59);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (177, 'Op red-int fix tib/fibul', 337.7100, 82);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (178, 'Replace ureteral stimul', 344.2000, 76);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (179, 'Cerebral thermography', 294.7800, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (180, 'Perc angio intracran ves', 73.2100, 22);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (181, 'Occlude abd artery NEC', 40.5400, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (182, 'Incision of penis', 351.8200, 47);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (183, 'Oth femur repair/plastic', 243.2900, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (184, 'Pteryg exc w cornea grft', 250.9700, 29);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (185, 'Intest seg isolat NOS', 451.7800, 73);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (186, 'Esophag speech training', 66.1300, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (187, 'Exc les tend sheath hand', 63.0400, 76);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (188, 'Replace indwelling cath', 338.1300, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (189, 'CV cath plcmt w guidance', 114.7200, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (190, 'Pacemaker impedance chck', 152.8600, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (191, 'Contrast arthrogram', 53.7800, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (192, 'Percut semin ves aspirat', 125.0400, 79);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (193, 'Suture bladder lacerat', 298.1200, 75);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (194, 'Clo endosc bx bile duct', 284.8600, 24);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (195, 'Retrogr cystourethrogram', 56.9400, 87);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (196, 'Extracorpor hepat Assis', 20.6400, 54);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (197, 'Forequarter amputation', 215.4200, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (198, 'Control anal hemorrhage', 130.5300, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (199, 'Open adrenal gland bx', 487.2700, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (200, 'Construction ear auricle', 110.7300, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (201, 'Tracheostomy toilette', 5.8400, 40);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (202, 'Culture-blood', 375.8400, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (203, 'Intrcoronry thromb infus', 99.2100, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (204, 'Aspirat curet-post deliv', 121.8400, 70);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (205, 'Remov art anal sphincter', 120.8600, 91);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (206, 'Whole blood transfus NEC', 105.7900, 66);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (207, 'Thumb reconstruction NEC', 212.3100, 66);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (208, 'Replace gast/esoph tube', 412.5300, 44);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (209, 'Suture tendn sheath hand', 190.4900, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (210, 'Non-op hearing proc NEC', 153.6400, 14);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (211, 'Transplant cadaver donor', 401.9300, 51);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (212, 'Varicose v lig-strip NOS', 83.7700, 99);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (213, 'Incis perianal abscess', 92.7000, 53);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (214, 'Percutan vertebroplasty', 485.4800, 99);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (215, 'Upper limb amputat NOS', 329.6300, 71);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (216, 'Testicular les destruct', 243.0600, 6);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (217, 'Tooth & gum dx proc NEC', 145.2000, 11);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (218, 'Refusion of atlas-axis', 246.3200, 53);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (219, 'Culdocentesis', 46.8300, 69);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (220, 'Lap indir ing hern-graft', 487.7900, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (221, 'Ethmoidotomy', 116.9500, 8);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (222, 'Ovarian wedge resection', 105.4900, 21);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (223, 'Aspir curett uterus NEC', 78.5500, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (224, 'Extracap lens extrac NEC', 322.7100, 60);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (225, 'Psychol mental stat NOS', 224.1000, 21);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (226, 'Cranial osteoplasty NEC', 113.4800, 23);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (227, 'Conjunctivoplasty NEC', 396.3000, 45);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (228, 'Corneal transplant NOS', 235.3600, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (229, 'Iridotomy NEC', 134.9200, 11);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (230, 'Cls reduc-sep epiphy NEC', 300.9300, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (231, 'Manual removal-placenta', 339.1900, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (232, 'Abltn renal les/tiss NEC', 244.8200, 25);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (233, 'Toxicology-nervous syst', 143.9100, 56);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (234, 'Knee structure division', 376.1500, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (235, 'Cornea reconstruct NEC', 426.6900, 69);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (236, 'Exploratory laparotomy', 117.7700, 45);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (237, 'Anoscopy', 127.1900, 19);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (238, 'Ankle joint biopsy', 318.2300, 88);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (239, 'Eyelid dx procedure NEC', 70.1200, 62);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (240, 'Cvp monitoring', 245.1300, 3);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (241, 'Gynecologic examination', 402.0600, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (242, 'Nasolacrimal duct probe', 194.4200, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (243, 'Rem crtd sinus pulse gen', 233.1900, 84);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (244, 'Excision of tonsil tag', 384.7300, 59);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (245, 'Small bowel series', 195.1300, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (246, 'Excise femur for graft', 163.0200, 79);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (247, 'Chemonucleolysis iv disc', 248.4200, 14);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (248, 'Reduction genioplasty', 398.1300, 41);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (249, 'Cannulation pancrea duc', 214.2600, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (250, 'Tarsal tunnel release', 46.7200, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (251, 'Tot nasal reconstruction', 318.2100, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (252, 'Psychia commitment eval', 115.4500, 16);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (253, 'Other spinal dx proc', 274.9900, 71);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (254, 'Arbovirus vaccinat NEC', 268.8900, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (255, 'Tonsillectomy/adenoidec', 320.4200, 31);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (256, 'Ot cerv fusion post/post', 91.5400, 18);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (257, 'Delay opening ileostomy', 160.0800, 60);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (258, 'Contr cerebr arteriogram', 448.8200, 39);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (259, 'Radical abd hyst NEC/NOS', 324.1200, 54);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (260, 'Vagotomy NOS', 208.0400, 99);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (261, 'Hand tendon advancement', 202.9600, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (262, 'Ins tot disc prost cerv', 163.7700, 6);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (263, 'Replace vaginal pessary', 497.7900, 26);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (264, 'Bone biopsy NOS', 421.8200, 16);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (265, 'Transfront pituitary bx', 407.5600, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (266, 'Remov vas deferens valve', 438.8600, 87);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (267, 'Iontophoresis', 465.2600, 78);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (268, 'Total removal sm bowel', 281.4500, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (269, 'App ext fix dev-ring sys', 478.9300, 63);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (270, 'Imp cardiomyostimul sys', 150.9700, 92);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (271, 'Suture testicular lacer', 465.5400, 46);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (272, 'Irrigate/expl vent shunt', 385.0800, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (273, 'Urethrotomy', 303.4000, 8);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (274, 'Other vaginal dilation', 5.0900, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (275, 'Behavior therapy', 140.1700, 43);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (276, 'Thyroid reimplantation', 274.2200, 98);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (277, 'Lg bowel segment isolat', 78.2600, 84);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (278, 'Arth/pros rem wo re-wrst', 67.1000, 44);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (279, 'Open reduction-toe fx', 203.3400, 73);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (280, 'Tot cor transpos grt ves', 312.1500, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (281, 'Cervical les cauterizat', 76.6100, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (282, 'Hymenorrhaphy', 401.5100, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (283, 'Manual reduction hernia', 325.9500, 12);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (284, 'Tularemia vaccination', 495.0800, 32);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (285, 'Rabies vaccination', 74.6400, 43);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (286, 'Other heat therapy', 308.0500, 89);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (287, 'Thorac lg bowel interpos', 42.8700, 73);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (288, 'Radical vag hyst NEC/NOS', 182.9200, 81);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (289, 'Partial esophagectomy', 328.7100, 8);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (290, 'Int insert 1-cham, rate', 64.7500, 91);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (291, 'Endo imp grft thor aorta', 148.2800, 96);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (292, 'GI scan & isotope funct', 423.1900, 30);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (293, 'Colonoscopy', 322.3600, 56);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (294, 'Abdomen region ops NEC', 139.3000, 8);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (295, 'Mech vitrectomy NEC', 262.2000, 21);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (296, 'Diaphragmatic plication', 259.3800, 8);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (297, 'Turbinectomy NEC', 432.3600, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (298, 'Diphtheria toxoid admin', 239.7500, 88);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (299, 'Total ostectomy NEC', 190.8300, 37);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (300, 'Hemorrhoid procedure NEC', 102.4700, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (301, 'Toxicology NOS', 365.7300, 35);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (302, 'Other therapeutic ultsnd', 291.3800, 18);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (303, 'High-dose infusion IL-2', 32.8700, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (304, 'Rem brain pulse generatr', 220.0200, 71);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (305, 'Fasciotomy of hand', 109.6500, 76);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (306, 'Reduction genioplasty', 358.2100, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (307, 'Opn bil ind ing hern NEC', 369.7500, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (308, 'Total unilat salpingect', 124.6500, 18);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (309, 'Contrast arteriogram NOS', 184.2400, 89);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (310, 'Limb shorten-metatar/tar', 372.4600, 47);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (311, 'Part substern thyroidect', 154.2700, 71);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (312, 'Lacrimal gland biopsy', 173.5500, 70);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (313, 'Rem int bivent hrt sys', 475.7900, 44);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (314, 'Patellar biopsy', 497.9100, 88);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (315, 'Oth arthrotomy-elbow', 299.1000, 9);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (316, 'Full-mouth x-ray', 136.3600, 88);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (317, 'Culdocentesis', 126.4000, 39);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (318, 'Gastrostomy closure', 427.9600, 30);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (319, 'Open reduc-tibia/fib fx', 16.4500, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (320, 'Cde for obstruction NEC', 89.1300, 46);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (321, 'Laryngeal nerv division', 498.1600, 2);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (322, 'Nephrost/pyelost irrigat', 275.9000, 87);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (323, 'Circumcision', 118.9500, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (324, 'Oth plastic repair palat', 131.2800, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (325, 'Total exc pituitary NOS', 403.3600, 39);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (326, 'Repair ob lac rect/anus', 357.2700, 54);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (327, 'Replace pyelostomy tube', 87.6500, 28);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (328, 'Lap ing hern-graft NOS', 219.8700, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (329, 'Periren/ureteral biopsy', 421.5900, 97);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (330, 'Urethral reanastomosis', 438.9100, 50);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (331, 'Contrast pancreatogram', 257.3400, 8);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (332, 'Osteoclasis-patella', 12.2400, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (333, 'IVUS peripheral vessels', 272.1800, 58);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (334, 'Repair staphylom w graft', 386.0800, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (335, 'Open reduc-hip dislocat', 225.1800, 40);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (336, 'Inser bone stim-tib/fib', 277.7100, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (337, 'Cell blk/pap-upper GI', 32.4800, 36);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (338, 'Replace pyelostomy tube', 295.7300, 64);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (339, 'Lap umbilical hernia NEC', 59.0400, 74);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (340, 'Endosc remove panc stone', 380.0000, 61);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (341, 'Small-to-large bowel NEC', 387.9900, 36);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (342, 'Intravascul imaging NEC', 145.8300, 32);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (343, 'Insert gastric bubble', 185.4300, 71);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (344, 'Revision gastric anastom', 153.8600, 18);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (345, 'Linear rep lid lacer', 441.2200, 60);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (346, 'Other bronchial excision', 453.4300, 46);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (347, 'Resrf hip,part-fem head', 204.8900, 64);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (348, 'Carporadial fusion', 28.9700, 97);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (349, 'Pertussis vaccination', 33.4000, 17);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (350, 'Applic ext fix dev-femur', 138.7700, 81);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (351, 'Grft repair hrt sept NOS', 477.1600, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (352, 'Drain face & mouth floor', 9.3000, 26);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (353, 'Forceps-aftercoming head', 469.0900, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (354, 'Culture-lower resp', 165.3600, 41);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (355, 'Osteoclasis-radius/ulna', 200.8300, 39);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (356, 'Limb skin traction NEC', 257.6800, 50);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (357, 'Toe injury operation NOS', 138.4200, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (358, 'Type 5 tympanoplasty', 229.3600, 7);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (359, 'Individ psychotherap NEC', 174.1100, 96);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (360, 'Evac ob inc hemat perin', 67.7600, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (361, 'Disarticulation of wrist', 115.2500, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (362, 'Ins left atr append dev', 261.9000, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (363, 'Arthrodesis of hip', 9.0800, 43);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (364, 'Open reduct mandible fx', 342.0600, 83);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (365, 'Temp-inf intrcap lens ex', 99.1400, 72);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (366, 'Tube & uterus x-ray NEC', 30.9400, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (367, 'Radical abd hyst NEC/NOS', 81.3900, 31);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (368, 'Complete laryngectomy', 118.9600, 89);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (369, 'Transplant spermat cord', 221.5400, 85);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (370, 'Eyelid dx procedure NEC', 70.9600, 41);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (371, 'Impl intraoc telesc pros', 452.4100, 32);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (372, 'Removal spine stim lead', 409.8200, 85);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (373, 'Rect/perirect dx op NEC', 461.9600, 42);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (374, 'Head/neck ves incis NEC', 118.3900, 90);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (375, 'Hypo-epispadius repair', 77.3100, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (376, 'Remov intralum rect FB', 75.9100, 20);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (377, 'Diphtheria toxoid admin', 375.6800, 73);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (378, 'Excis perianal skin tag', 420.7000, 14);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (379, 'Inject/inf thrombo agent', 474.8300, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (380, 'Endo insrt colonic stent', 196.0100, 12);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (381, 'Destruc-elbow lesion NEC', 131.1000, 24);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (382, 'Excision of pilonid cyst', 385.9300, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (383, 'Ins left atr append dev', 135.6600, 70);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (384, 'Revise spine theca shunt', 67.1200, 39);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (385, 'Other bone dx proc NOS', 261.9000, 9);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (386, 'Repair conjunct lacerat', 347.0500, 15);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (387, 'Occupational therapy', 431.0600, 69);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (388, 'Other neuroplasty', 27.5200, 58);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (389, 'Culture-upper GI', 440.2200, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (390, 'Lower limb lymphangiogrm', 212.0700, 86);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (391, 'Lung transplant NOS', 260.9800, 12);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (392, 'Pineal biopsy', 267.9100, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (393, 'Dx ultrasound NEC', 415.7000, 49);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (394, 'Parathyroid reimplant', 43.5000, 36);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (395, 'Destruct cornea les NEC', 117.0200, 81);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (396, 'Electroretinogram', 169.3300, 74);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (397, 'Periurethral excision', 310.3400, 23);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (398, 'Interposit op uterin lig', 378.9600, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (399, 'Insert othr spin device', 343.4400, 37);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (400, 'Temp-inf intrcap lens ex', 60.5500, 88);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (401, 'Periart sympathectomy', 118.0100, 56);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (402, 'Spermatocele aspiration', 103.9200, 33);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (403, 'Uterine suspension NEC', 61.8600, 94);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (404, 'Pharyngeal operation NEC', 413.2500, 59);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (405, 'Sutur capsul/ligamen arm', 115.2900, 69);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (406, 'Electronystagmogram', 364.7300, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (407, 'Suture esophageal lacer', 84.1000, 97);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (408, 'Amputation through foot', 477.9600, 79);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (409, 'Speech defect training', 282.8900, 74);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (410, 'Replace wound catheter', 440.0500, 1);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (411, 'Unspec op bone inj NOS', 394.1900, 6);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (412, 'Opn rt hemicolectomy NEC', 297.0600, 17);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (413, 'Rvrs totl shldr replacmt', 369.7200, 31);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (414, 'Ventri shunt-circula sys', 173.3700, 6);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (415, 'Lung operation NEC', 89.6300, 41);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (416, 'Fundus photography', 482.9600, 44);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (417, 'Injct/inf immunoglobulin', 297.1900, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (418, 'Prosthet/orthot training', 124.9600, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (419, 'Procedure-four+ vessels', 114.6900, 71);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (420, 'Closed fx reduction NEC', 378.1000, 76);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (421, 'Breast implant removal', 333.0100, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (422, 'Training in lead dog use', 469.4400, 17);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (423, 'Gracilis musc transplan', 386.0500, 81);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (424, 'Culture-bili/pancreas', 316.3100, 50);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (425, 'Laryngeal fx repair', 186.5500, 92);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (426, 'Solitary kidney nephrect', 14.5800, 24);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (427, 'Insert sphenoid electrod', 373.4000, 70);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (428, 'Anesth inject-spin canal', 207.5000, 80);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (429, 'Bursotomy', 113.2500, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (430, 'Delayed clos abd wound', 10.6100, 82);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (431, 'Partial ureterectomy', 228.3500, 71);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (432, 'Closure of proctostomy', 195.1800, 75);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (433, 'Suture hand tendon NEC', 170.4700, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (434, 'Limb length measurement', 9.4700, 29);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (435, 'Lid marg recons ful thic', 230.2500, 85);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (436, 'Other gu instillation', 210.7700, 45);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (437, 'Endarterectomy of aorta', 391.1600, 32);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (438, 'Rejected kidney nephrect', 296.7600, 4);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (439, 'Rad neck dissection NOS', 376.3800, 97);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (440, 'Brain temp monitoring', 491.9000, 86);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (441, 'Open biopsy of esophagus', 153.1200, 90);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (442, 'Excision of lip les NEC', 75.8900, 76);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (443, 'Lap pt ex lrg intest NEC', 462.0000, 45);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (444, 'Opn fx red w int fix NOS', 121.4200, 95);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (445, 'Suture vas & epidid lac', 302.8100, 64);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (446, 'Bronch/lung dx proc NEC', 288.5900, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (447, 'Ossicular chain op NEC', 288.0700, 95);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (448, 'Destruct larynx les NEC', 113.5600, 94);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (449, 'Eyelid repair NEC', 97.7200, 10);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (450, 'Sclera reinforcement NEC', 140.9900, 63);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (451, 'Excis hand tend for grft', 478.9500, 80);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (452, 'Decompress trigem root', 376.5100, 68);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (453, 'Endo robotic assist proc', 358.4600, 79);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (454, 'Contrast myelogram', 20.2100, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (455, 'Electromyogram of eye', 48.3700, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (456, 'Thoracostomy closure', 444.2500, 5);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (457, 'Reimplant pancreatic tis', 151.3700, 40);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (458, 'Hemorrhage control NOS', 482.0100, 38);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (459, 'Leg artery excision', 104.3700, 35);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (460, 'Arterial bld gas measure', 479.1000, 99);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (461, 'Oth dx proc-metacar/car', 277.0200, 62);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (462, 'Open fx site debride NOS', 356.5800, 36);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (463, 'Impacted feces removal', 480.3100, 57);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (464, 'Color vision study', 98.6900, 19);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (465, 'Per cardiopulmon bypass', 14.2100, 60);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (466, 'Rep cystocel w grft/pros', 174.1700, 1);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (467, 'Abltn lung tiss NEC/NOS', 263.4600, 6);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (468, 'Limb length proc-humerus', 41.4900, 39);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (469, 'Periren adhesiolys NEC', 215.1800, 29);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (470, 'Insert perm tube esophag', 336.4900, 30);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (471, 'Insert oropharyn airway', 224.3800, 65);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (472, 'Other plastic ops tendon', 279.6200, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (473, 'Replace small bowel tube', 148.7400, 26);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (474, 'Leg varicos v liga-strip', 326.2900, 47);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (475, 'Nephrocystanastomosi NOS', 180.7700, 87);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (476, 'CAS w multiple datasets', 361.2400, 56);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (477, 'Closed fx reduction NEC', 191.3100, 96);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (478, 'Facial bone/jnt op NEC', 306.7700, 59);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (479, 'Repair ob lac corp uteri', 450.7000, 11);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (480, 'Tot face bone ostect NEC', 245.1900, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (481, 'Total gastrectomy NEC', 95.2300, 1);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (482, 'Local gastr destruct NEC', 264.9700, 79);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (483, 'Vessel operation NEC', 129.5500, 13);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (484, 'Clinical hearing test', 242.3200, 44);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (485, 'Dental wiring', 151.3800, 50);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (486, 'Other oophorotomy', 317.6400, 51);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (487, 'Ext version-assist deliv', 479.2300, 62);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (488, 'Ovarian operation NEC', 309.6500, 28);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (489, 'Postop vasc op hem contr', 439.9700, 93);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (490, 'Revise disc prost thora', 132.3400, 66);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (491, 'Percu nephrostmy w frag', 155.1000, 98);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (492, 'IVUS extracran cereb ves', 127.6900, 48);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (493, 'Complete laryngectomy', 486.5100, 34);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (494, 'Close ureter fistula NEC', 347.8600, 58);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (495, 'Arth/pros rem wo re-shld', 403.4600, 95);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (496, 'Lg bowel stoma closure', 142.3700, 63);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (497, 'Abltn renal les/tiss NEC', 237.7900, 92);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (498, 'Bilat radical mastectomy', 390.0800, 52);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (499, 'Ins drug-elut coronry st', 474.0200, 6);

INSERT INTO "ANONYMOUS"."InvoiceLines" ("ILI_Id", "ILI_Concept", "ILI_Amount", "INV_Id") VALUES (500, 'Renal diagnost proc NEC', 171.6300, 45);


INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (1, 'red', 'red');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (2, 'blue', 'blue');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (3, 'yellow', 'yellow');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (4, 'green', 'green');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (5, 'black', 'black');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (6, 'orange', 'orange');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (7, 'blue', 'red');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (8, 'green', 'red');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (9, 'blue', 'red');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (10, 'yellow', 'red');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (11, 'black', 'blue');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (12, 'orange', 'blue');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (13, 'blue', 'green');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (14, 'yellow', 'green');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (15, 'black', 'green');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (16, 'orange', 'yellow');

INSERT INTO "ANONYMOUS"."ShapeOptions" ("SHO_Id", "SHO_BackgroundColor", "SHO_OutlineColor") VALUES (17, 'black', 'yellow');


INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (1, 'Shape 1', 1);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (2, 'Shape 2', 2);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (3, 'Shape 3', 3);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (4, 'Shape 4', 4);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (5, 'Shape 5', 5);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (6, 'Shape 6', 6);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (7, 'Shape 7', 7);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (8, 'Shape 8', 8);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (9, 'Shape 9', 9);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (10, 'Shape 10', 10);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (11, 'Shape 11', 11);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (12, 'Shape 12', 12);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (13, 'Shape 13', 13);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (14, 'Shape 14', 14);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (15, 'Shape 15', 15);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (16, 'Shape 16', 16);

INSERT INTO "ANONYMOUS"."Shapes" ("SHA_Id", "SHA_Name", "SHO_Id") VALUES (17, 'Shape 17', 17);


INSERT INTO "ANONYMOUS"."Polygons" ("POL_Id", "POL_Angle", "POL_Length") VALUES (13, 60, 1);

INSERT INTO "ANONYMOUS"."Polygons" ("POL_Id", "POL_Angle", "POL_Length") VALUES (14, 90, 2);

INSERT INTO "ANONYMOUS"."Polygons" ("POL_Id", "POL_Angle", "POL_Length") VALUES (15, 108, 3);

INSERT INTO "ANONYMOUS"."Polygons" ("POL_Id", "POL_Angle", "POL_Length") VALUES (16, 120, 4);

INSERT INTO "ANONYMOUS"."Polygons" ("POL_Id", "POL_Angle", "POL_Length") VALUES (17, 129, 5);


INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (1, 1);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (2, 2);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (3, 3);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (4, 4);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (5, 5);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (6, 6);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (7, 7);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (8, 8);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (9, 9);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (10, 10);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (11, 11);

INSERT INTO "ANONYMOUS"."Curved" ("CUR_Id", "CUR_Radius") VALUES (12, 12);

INSERT INTO "ANONYMOUS"."Circles" ("CIR_Id") VALUES (1);

INSERT INTO "ANONYMOUS"."Circles" ("CIR_Id") VALUES (2);

INSERT INTO "ANONYMOUS"."Circles" ("CIR_Id") VALUES (3);

INSERT INTO "ANONYMOUS"."Circles" ("CIR_Id") VALUES (4);

INSERT INTO "ANONYMOUS"."Ellipses" ("ELL_Id", "ELL_Radius2") VALUES (6, 1);

INSERT INTO "ANONYMOUS"."Ellipses" ("ELL_Id", "ELL_Radius2") VALUES (7, 2);

INSERT INTO "ANONYMOUS"."Ellipses" ("ELL_Id", "ELL_Radius2") VALUES (8, 3);

INSERT INTO "ANONYMOUS"."Ellipses" ("ELL_Id", "ELL_Radius2") VALUES (9, 4);

INSERT INTO "ANONYMOUS"."Ellipses" ("ELL_Id", "ELL_Radius2") VALUES (10, 5);

INSERT INTO "ANONYMOUS"."Ellipses" ("ELL_Id", "ELL_Radius2") VALUES (11, 6);

INSERT INTO "ANONYMOUS"."Ellipses" ("ELL_Id", "ELL_Radius2") VALUES (12, 7);


INSERT INTO "ANONYMOUS"."EllipsesKit" ("ELK_Id", "ELK_Name", "ELL_Id1", "ELL_Id2", "ELL_Id3") VALUES (1, 'Kit 1', 6, 7, 8);

INSERT INTO "ANONYMOUS"."EllipsesKit" ("ELK_Id", "ELK_Name", "ELL_Id1", "ELL_Id2", "ELL_Id3") VALUES (2, 'Kit 2', 6, 7, 9);

INSERT INTO "ANONYMOUS"."EllipsesKit" ("ELK_Id", "ELK_Name", "ELL_Id1", "ELL_Id2", "ELL_Id3") VALUES (3, 'Kit 3', 8, 7, 10);

INSERT INTO "ANONYMOUS"."EllipsesKit" ("ELK_Id", "ELK_Name", "ELL_Id1", "ELL_Id2", "ELL_Id3") VALUES (4, 'Kit 4', 9, 10, 11);

INSERT INTO "ANONYMOUS"."EllipsesKit" ("ELK_Id", "ELK_Name", "ELL_Id1", "ELL_Id2", "ELL_Id3") VALUES (5, 'Kit 6', 10, 11, 12);


INSERT INTO "ANONYMOUS"."Companies" ("COM_Id", "COM_Name", "COM_Logo") VALUES ('1fda7e77-3b2e-4a13-b7c5-bb0b954c0554', 'Meejo', utl_raw.cast_to_raw('<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g id="iconPrimaryColor"><circle cx="12" cy="12" r="3.2"/><path d="M9 2L7.17 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2h-3.17L15 2H9zm3 15c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5z"/><path d="M0 0h24v24H0z" fill="none"/></g></svg>'));


INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (7, 'Accounting', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (5, 'Business Development', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (8, 'Engineering', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (12, 'Human Resources', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (9, 'Legal', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (1, 'Marketing', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (6, 'Product Management', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (4, 'Research and Development', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (10, 'Sales', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (11, 'Services', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (2, 'Support', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');

INSERT INTO "ANONYMOUS"."Departments" ("DEP_Id", "DEP_Name", "COM_Id") VALUES (3, 'Training', '1fda7e77-3b2e-4a13-b7c5-bb0b954c0554');


INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (1, 'Amandie Vasilischev', 'avasilischev0@businessinsider.com', '792-335-0463', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (2, 'Kyle Tatam', 'ktatam1@blogger.com', '690-864-4446', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (3, 'Wallie Gooddie', 'wgooddie2@tiny.cc', '552-455-9943', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (4, 'Catlee Lamps', 'clamps3@baidu.com', '571-716-0494', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (5, 'Abelard Buer', 'abuer4@washingtonpost.com', '314-295-7692', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (6, 'Siffre Heinel', 'sheinel5@huffingtonpost.com', '452-622-1898', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (7, 'Pavlov Rivard', 'privard6@163.com', '717-631-6207', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (8, 'Rozelle Jakoubec', 'rjakoubec7@europa.eu', '424-632-7902', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (9, 'Nerissa Becaris', 'nbecaris8@issuu.com', '608-500-2812', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (10, 'Eunice Wordington', 'ewordington9@cloudflare.com', '268-238-1736', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (11, 'Bobbi Cawthron', 'bcawthrona@google.cn', '965-374-4596', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (12, 'Lilia Speer', 'lspeerb@weebly.com', '735-690-7033', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (13, 'Shandeigh Elstow', 'selstowc@apache.org', '369-937-7752', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (14, 'Milissent Dreinan', 'mdreinand@si.edu', '374-396-7023', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (15, 'Hortense Scotcher', 'hscotchere@seattletimes.com', '238-516-1652', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (16, 'Ernestus MacAnelley', 'emacanelleyf@dailymotion.com', '385-362-3747', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (17, 'Morlee Korpal', 'mkorpalg@stanford.edu', '610-770-8786', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (18, 'Miriam Grenshields', 'mgrenshieldsh@bluehost.com', '594-754-2124', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (19, 'Sansone Rowbury', 'srowburyi@e-recht24.de', '954-466-0097', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (20, 'Josie Jakes', 'jjakesj@cam.ac.uk', '744-382-5996', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (21, 'Sterling Drewes', 'sdrewesk@webnode.com', '699-890-4696', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (22, 'Jerrie Braden', 'jbradenl@toplist.cz', '803-612-6567', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (23, 'Geraldine Feige', 'gfeigem@reddit.com', '970-244-7566', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (24, 'Riley Lindhe', 'rlindhen@forbes.com', '911-822-7218', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (25, 'Patrizia Novill', 'pnovillo@gnu.org', '584-568-1051', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (26, 'Schuyler Barnet', 'sbarnetp@imageshack.us', '925-846-5215', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (27, 'Cora Noice', 'cnoiceq@forbes.com', '132-556-4955', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (28, 'Davide Ismirnioglou', 'dismirnioglour@t-online.de', '627-981-4419', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (29, 'Kirstin Dudden', 'kduddens@theguardian.com', '236-407-7476', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (30, 'Riley Meddows', 'rmeddowst@phpbb.com', '402-965-6695', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (31, 'Flin Howorth', 'fhoworthu@irs.gov', '222-300-9797', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (32, 'Clim Randlesome', 'crandlesomev@harvard.edu', '476-822-3523', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (33, 'Marv Adelsberg', 'madelsbergw@xinhuanet.com', '731-425-2147', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (34, 'Shauna Davidek', 'sdavidekx@mapy.cz', '694-851-7861', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (35, 'Maudie Salliss', 'msallissy@jimdo.com', '932-904-5473', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (36, 'Berny Jeafferson', 'bjeaffersonz@plala.or.jp', '710-588-9221', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (37, 'Amelia Ulrik', 'aulrik10@imageshack.us', '156-358-8609', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (38, 'Anna Wayne', 'awayne11@trellian.com', '508-925-2625', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (39, 'Osmond Grombridge', 'ogrombridge12@opensource.org', '682-329-9379', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (40, 'Adah Well', 'awell13@joomla.org', '713-110-9763', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (41, 'Upton Reims', 'ureims14@dion.ne.jp', '772-355-2489', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (42, 'Sophia Gehring', 'sgehring15@flavors.me', '192-536-4132', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (43, 'Baird Mosley', 'bmosley16@tinypic.com', '780-681-9431', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (44, 'Tammy Scotchforth', 'tscotchforth17@nature.com', '380-933-7707', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (45, 'Langsdon Golsby', 'lgolsby18@shareasale.com', '336-245-9186', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (46, 'Reece Wittke', 'rwittke19@usda.gov', '930-678-0637', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (47, 'Sawyere Leupold', 'sleupold1a@tumblr.com', '407-447-5338', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (48, 'Nell Goldthorpe', 'ngoldthorpe1b@mac.com', '144-245-9492', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (49, 'Jana Alforde', 'jalforde1c@psu.edu', '736-162-3451', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (50, 'Rudolfo Manneville', 'rmanneville1d@blogtalkradio.com', '275-743-9880', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (51, 'Danya Quarles', 'dquarles1e@oracle.com', '528-370-8428', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (52, 'Menard Bunney', 'mbunney1f@about.me', '465-535-6304', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (53, 'Gayelord Neat', 'gneat1g@sphinn.com', '923-503-1310', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (54, 'Aura Jillett', 'ajillett1h@reddit.com', '630-795-0292', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (55, 'Nert Molden', 'nmolden1i@yellowbook.com', '432-656-6496', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (56, 'Cassandre MacKeever', 'cmackeever1j@statcounter.com', '248-165-5480', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (57, 'Gaynor Ransbury', 'gransbury1k@adobe.com', '131-172-3937', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (58, 'Gratiana Josskoviz', 'gjosskoviz1l@baidu.com', '280-580-3882', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (59, 'Terrel Ernke', 'ternke1m@slideshare.net', '174-933-1632', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (60, 'Mathe Carlet', 'mcarlet1n@theatlantic.com', '378-503-1091', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (61, 'Caldwell Iacopetti', 'ciacopetti1o@google.de', '194-518-8363', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (62, 'Novelia Slyne', 'nslyne1p@skype.com', '954-673-1134', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (63, 'Cobby Ratnege', 'cratnege1q@slashdot.org', '874-773-9252', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (64, 'Lilian Mathieu', 'lmathieu1r@exblog.jp', '355-562-8603', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (65, 'Fitz Allso', 'fallso1s@adobe.com', '835-478-0658', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (66, 'Kippie Brellin', 'kbrellin1t@auda.org.au', '658-885-5134', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (67, 'Dorene Matlock', 'dmatlock1u@apache.org', '957-138-2393', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (68, 'Andonis Forster', 'aforster1v@apache.org', '684-853-8657', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (69, 'Garwin Fairall', 'gfairall1w@freewebs.com', '230-634-7952', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (70, 'Jeannine Pocke', 'jpocke1x@i2i.jp', '912-358-5590', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (71, 'Emlynn MacBain', 'emacbain1y@cdc.gov', '913-480-0800', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (72, 'Darb Pickring', 'dpickring1z@mac.com', '431-578-8392', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (73, 'Bea Shepherd', 'bshepherd20@gizmodo.com', '160-565-7670', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (74, 'Vasili Nardoni', 'vnardoni21@sfgate.com', '238-242-5123', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (75, 'Vale Leckey', 'vleckey22@msu.edu', '429-415-2582', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (76, 'Gerry Trounce', 'gtrounce23@arstechnica.com', '653-538-2744', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (77, 'Min Berkeley', 'mberkeley24@purevolume.com', '974-962-6688', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (78, 'Randie Stickley', 'rstickley25@fastcompany.com', '368-777-1389', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (79, 'Natasha Varrow', 'nvarrow26@redcross.org', '368-418-0463', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (80, 'Kimberlee Dudley', 'kdudley27@cdc.gov', '553-852-8966', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (81, 'Dedie Barnewille', 'dbarnewille28@ifeng.com', '397-772-7866', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (82, 'Aline Robens', 'arobens29@xrea.com', '728-649-7283', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (83, 'Tucker Giacomasso', 'tgiacomasso2a@addtoany.com', '447-228-4604', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (84, 'Vladamir Barrowcliffe', 'vbarrowcliffe2b@newsvine.com', '657-279-9047', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (85, 'Olive Sands-Allan', 'osandsallan2c@gnu.org', '619-429-0671', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (86, 'Craggie Bilney', 'cbilney2d@nbcnews.com', '825-547-4480', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (87, 'Frants Milkin', 'fmilkin2e@loc.gov', '536-454-3839', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (88, 'Harland Keeler', 'hkeeler2f@illinois.edu', '903-561-5929', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (89, 'Miller Durran', 'mdurran2g@globo.com', '562-268-1479', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (90, 'Kellen Oakenford', 'koakenford2h@ifeng.com', '516-376-6313', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (91, 'Sax Siggery', 'ssiggery2i@ca.gov', '472-636-1841', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (92, 'Emlynn Orht', 'eorht2j@flickr.com', '169-668-6042', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (93, 'Garvin Yakobovitz', 'gyakobovitz2k@quantcast.com', '221-801-6175', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (94, 'Brenden Esselen', 'besselen2l@usgs.gov', '289-889-1324', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (95, 'Brit Philo', 'bphilo2m@theguardian.com', '721-475-6725', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (96, 'Cosetta Peaurt', 'cpeaurt2n@washington.edu', '276-291-0326', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (97, 'Marilyn Eden', 'meden2o@boston.com', '888-503-4927', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (98, 'Konstantine Rubinovitch', 'krubinovitch2p@desdev.cn', '880-741-9728', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (99, 'Patric Dowbiggin', 'pdowbiggin2q@fda.gov', '781-680-4800', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (100, 'Nathalia Boynes', 'nboynes2r@live.com', '186-749-9782', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (101, 'Conroy Ivashin', 'civashin2s@chron.com', '214-590-2114', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (102, 'Chelsie Milleton', 'cmilleton2t@time.com', '110-732-0385', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (103, 'Tildy Braunton', 'tbraunton2u@prlog.org', '661-105-0932', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (104, 'Leonie Meddemmen', 'lmeddemmen2v@reuters.com', '833-852-2108', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (105, 'Olag Cunrado', 'ocunrado2w@google.co.jp', '965-175-6349', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (106, 'Alyssa Borzoni', 'aborzoni2x@shareasale.com', '332-792-1453', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (107, 'Francesco Skewes', 'fskewes2y@stanford.edu', '557-554-9289', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (108, 'Cale Tallant', 'ctallant2z@redcross.org', '759-589-2788', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (109, 'Lana Lorens', 'llorens30@state.tx.us', '402-565-0582', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (110, 'Nani Garmans', 'ngarmans31@meetup.com', '216-831-1837', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (111, 'Lyndel Ayers', 'layers32@wix.com', '454-862-0237', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (112, 'Timmy Pundy', 'tpundy33@tuttocitta.it', '233-238-4415', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (113, 'Enoch Dewfall', 'edewfall34@paginegialle.it', '414-345-0516', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (114, 'Wilona McKeachie', 'wmckeachie35@msn.com', '725-693-0386', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (115, 'Vania Quantrell', 'vquantrell36@360.cn', '636-731-7730', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (116, 'Winnah Bertelet', 'wbertelet37@walmart.com', '673-262-7328', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (117, 'Kippar Greason', 'kgreason38@qq.com', '178-869-1038', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (118, 'Madlen Boatswain', 'mboatswain39@cisco.com', '458-955-5483', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (119, 'Oriana Kinnen', 'okinnen3a@cargocollective.com', '185-351-7971', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (120, 'Alessandro McCloud', 'amccloud3b@fastcompany.com', '628-651-4685', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (121, 'Derek Kender', 'dkender3c@rambler.ru', '232-248-9711', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (122, 'Clevie Forestel', 'cforestel3d@aboutads.info', '974-531-8808', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (123, 'Dyan Gabel', 'dgabel3e@mysql.com', '643-393-9166', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (124, 'Holden Morilla', 'hmorilla3f@usgs.gov', '784-272-1678', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (125, 'Gloria Snodden', 'gsnodden3g@cnbc.com', '147-476-8148', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (126, 'Nichols Bromwich', 'nbromwich3h@opera.com', '675-265-8437', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (127, 'Adria Lackington', 'alackington3i@arizona.edu', '306-119-5147', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (128, 'Ximenez Willmore', 'xwillmore3j@squidoo.com', '163-752-4433', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (129, 'Aloise Timpany', 'atimpany3k@google.it', '877-317-2801', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (130, 'Maison Cator', 'mcator3l@dailymotion.com', '266-473-1476', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (131, 'Lanna Adriaan', 'ladriaan3m@ocn.ne.jp', '328-627-7404', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (132, 'Claudie Raddenbury', 'craddenbury3n@slashdot.org', '104-690-0384', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (133, 'Nolly Hamber', 'nhamber3o@123-reg.co.uk', '342-821-4047', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (134, 'Queenie Stolte', 'qstolte3p@ow.ly', '792-778-8467', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (135, 'Rosa Westpfel', 'rwestpfel3q@discuz.net', '799-169-3460', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (136, 'Louisette Poff', 'lpoff3r@bizjournals.com', '408-760-5359', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (137, 'Kimberlee Doubrava', 'kdoubrava3s@wikispaces.com', '525-795-9950', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (138, 'Nicolle Balassa', 'nbalassa3t@google.es', '355-666-7593', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (139, 'Isak Woodley', 'iwoodley3u@prlog.org', '211-735-6711', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (140, 'Ag Headley', 'aheadley3v@businesswire.com', '487-666-8563', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (141, 'Beulah Craigie', 'bcraigie3w@unblog.fr', '423-764-9571', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (142, 'Mimi Donwell', 'mdonwell3x@prnewswire.com', '989-390-4400', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (143, 'Guglielmo Mixhel', 'gmixhel3y@spiegel.de', '321-118-2849', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (144, 'Catriona Salters', 'csalters3z@columbia.edu', '417-551-2608', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (145, 'Kaitlin MacBrearty', 'kmacbrearty40@1688.com', '333-488-0360', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (146, 'Johnny Brader', 'jbrader41@com.com', '730-799-7614', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (147, 'Emerson Spurryer', 'espurryer42@ovh.net', '406-251-3415', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (148, 'Issy Sweetlove', 'isweetlove43@theguardian.com', '947-679-7903', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (149, 'Ange Leah', 'aleah44@reverbnation.com', '577-970-1075', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (150, 'Cletis MacCosty', 'cmaccosty45@ning.com', '424-305-4088', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (151, 'Ali Ekell', 'aekell46@biglobe.ne.jp', '175-300-6483', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (152, 'Dinnie Avard', 'davard47@technorati.com', '248-188-7457', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (153, 'Demetrius Tethcote', 'dtethcote48@theglobeandmail.com', '448-565-3787', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (154, 'Vale Grabb', 'vgrabb49@rakuten.co.jp', '748-471-5826', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (155, 'Kim Franzen', 'kfranzen4a@bing.com', '759-515-0763', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (156, 'Sarena Smithend', 'ssmithend4b@epa.gov', '494-600-1899', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (157, 'Janie Muffin', 'jmuffin4c@timesonline.co.uk', '724-223-4380', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (158, 'Rozelle Larmuth', 'rlarmuth4d@printfriendly.com', '484-545-4914', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (159, 'Tove Lies', 'tlies4e@timesonline.co.uk', '165-666-5091', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (160, 'Eugenie Corday', 'ecorday4f@ihg.com', '439-904-5170', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (161, 'Janka Floodgate', 'jfloodgate4g@google.com', '105-142-9539', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (162, 'Ula Bark', 'ubark4h@dedecms.com', '760-409-1156', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (163, 'Ralf Chinnock', 'rchinnock4i@ox.ac.uk', '549-841-6400', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (164, 'Luther Casaletto', 'lcasaletto4j@foxnews.com', '383-281-7827', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (165, 'Elfie Arnaud', 'earnaud4k@tmall.com', '389-125-3528', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (166, 'Jarrett Badsey', 'jbadsey4l@berkeley.edu', '330-757-1852', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (167, 'Jase Sisnett', 'jsisnett4m@dmoz.org', '345-934-7209', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (168, 'Richart Whibley', 'rwhibley4n@acquirethisname.com', '706-104-2189', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (169, 'Gilbert Forrestor', 'gforrestor4o@hud.gov', '518-856-1304', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (170, 'Cinnamon Slafford', 'cslafford4p@cnet.com', '482-743-1715', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (171, 'Mariele Fidock', 'mfidock4q@printfriendly.com', '128-824-7948', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (172, 'Brandise O''Regan', 'boregan4r@accuweather.com', '562-655-0802', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (173, 'Sabine Lehrian', 'slehrian4s@skyrock.com', '977-184-4314', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (174, 'Beatrisa Gower', 'bgower4t@examiner.com', '517-865-6906', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (175, 'Emelita Fairhead', 'efairhead4u@senate.gov', '227-257-3586', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (176, 'Therese Shakeshaft', 'tshakeshaft4v@google.nl', '236-633-1736', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (177, 'Paulie Lewsy', 'plewsy4w@umich.edu', '972-890-2400', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (178, 'Ellene Southern', 'esouthern4x@earthlink.net', '463-463-0802', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (179, 'Ashly Sinnatt', 'asinnatt4y@ycombinator.com', '417-738-9065', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (180, 'Cirilo Edmondson', 'cedmondson4z@cargocollective.com', '512-955-0067', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (181, 'Keene Vamplew', 'kvamplew50@uiuc.edu', '888-164-6813', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (182, 'Doug Loy', 'dloy51@mtv.com', '888-123-4543', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (183, 'Marnie Klee', 'mklee52@discuz.net', '641-855-5951', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (184, 'Tab Shade', 'tshade53@mac.com', '849-178-1518', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (185, 'Carney Blackie', 'cblackie54@sciencedirect.com', '575-512-9759', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (186, 'Petronella Tytcomb', 'ptytcomb55@techcrunch.com', '594-921-1793', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (187, 'Ashien Afield', 'aafield56@flickr.com', '789-323-7620', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (188, 'Evie Masdon', 'emasdon57@cnet.com', '684-839-1250', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (189, 'Claudianus Jacketts', 'cjacketts58@mysql.com', '234-174-9042', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (190, 'Ralina Shewry', 'rshewry59@samsung.com', '577-688-1820', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (191, 'Powell Middlemist', 'pmiddlemist5a@skyrock.com', '401-798-3417', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (192, 'Erastus Hardcastle', 'ehardcastle5b@goo.ne.jp', '879-509-6578', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (193, 'Wendie Hyman', 'whyman5c@ifeng.com', '782-986-8975', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (194, 'Maddy Molen', 'mmolen5d@soundcloud.com', '116-728-6090', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (195, 'Fionna MacCawley', 'fmaccawley5e@techcrunch.com', '679-134-7589', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (196, 'Victoria Pacquet', 'vpacquet5f@dmoz.org', '304-712-6844', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (197, 'Evangelin Hardstaff', 'ehardstaff5g@free.fr', '371-821-4360', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (198, 'Clerc Larcombe', 'clarcombe5h@mayoclinic.com', '835-965-8465', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (199, 'Carrol Esmead', 'cesmead5i@marketwatch.com', '331-706-5597', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (200, 'My Deller', 'mdeller5j@ow.ly', '220-160-7606', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (201, 'Sinclair Hackelton', 'shackelton5k@reuters.com', '961-247-3668', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (202, 'Prisca Keetch', 'pkeetch5l@diigo.com', '995-640-5172', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (203, 'Ardath Mapston', 'amapston5m@elegantthemes.com', '825-340-4023', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (204, 'Edee Gallimore', 'egallimore5n@mapy.cz', '296-837-3006', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (205, 'Fawn Ticehurst', 'fticehurst5o@is.gd', '271-139-4148', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (206, 'Regan Liebermann', 'rliebermann5p@archive.org', '786-142-7385', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (207, 'Maddie Rearie', 'mrearie5q@berkeley.edu', '547-315-6828', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (208, 'Aimee Osment', 'aosment5r@bloglovin.com', '576-558-8572', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (209, 'George Maxsted', 'gmaxsted5s@nasa.gov', '844-145-6840', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (210, 'Phillida Ridewood', 'pridewood5t@statcounter.com', '249-286-8614', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (211, 'Nicola Coper', 'ncoper5u@discuz.net', '340-600-6143', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (212, 'Milicent Ennion', 'mennion5v@eepurl.com', '774-762-2669', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (213, 'Rosalind Iacovielli', 'riacovielli5w@diigo.com', '648-319-5088', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (214, 'Phip Ogelsby', 'pogelsby5x@merriam-webster.com', '639-576-2282', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (215, 'Dare Voaden', 'dvoaden5y@jiathis.com', '628-365-5248', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (216, 'Christan Chastan', 'cchastan5z@taobao.com', '919-600-5068', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (217, 'Corella Tring', 'ctring60@squarespace.com', '305-774-0996', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (218, 'Douglass Benny', 'dbenny61@google.fr', '915-624-4114', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (219, 'Elena Polfer', 'epolfer62@ucla.edu', '424-934-7671', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (220, 'Barbabas Jarmaine', 'bjarmaine63@cornell.edu', '965-635-2161', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (221, 'Rosemonde Wield', 'rwield64@psu.edu', '620-568-1674', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (222, 'Janos Adamowitz', 'jadamowitz65@reuters.com', '137-470-1812', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (223, 'Kip Radleigh', 'kradleigh66@hugedomains.com', '468-924-3733', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (224, 'Lorianna Arkcoll', 'larkcoll67@themeforest.net', '704-100-9292', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (225, 'Duff Bracer', 'dbracer68@ning.com', '292-265-9317', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (226, 'Hall Holstein', 'hholstein69@epa.gov', '976-283-7421', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (227, 'Noelle Skeldinge', 'nskeldinge6a@columbia.edu', '491-825-1505', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (228, 'Karine Leamon', 'kleamon6b@altervista.org', '387-406-5781', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (229, 'Chickie Hawyes', 'chawyes6c@narod.ru', '896-837-5084', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (230, 'Katti Foster', 'kfoster6d@discovery.com', '407-418-8629', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (231, 'Walt Biasini', 'wbiasini6e@w3.org', '478-509-2908', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (232, 'Christie Jaye', 'cjaye6f@printfriendly.com', '113-828-7179', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (233, 'Cissiee Robe', 'crobe6g@nyu.edu', '480-307-5275', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (234, 'Seka Hanbidge', 'shanbidge6h@wufoo.com', '538-830-1561', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (235, 'Lira Brownlee', 'lbrownlee6i@paypal.com', '699-462-9603', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (236, 'Sheelagh Owain', 'sowain6j@webeden.co.uk', '999-597-6884', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (237, 'Brigit Hadny', 'bhadny6k@sitemeter.com', '356-756-7152', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (238, 'Tamra Ormerod', 'tormerod6l@cdbaby.com', '684-750-5650', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (239, 'Filide Stilliard', 'fstilliard6m@51.la', '447-510-5542', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (240, 'Benoit Houtby', 'bhoutby6n@twitter.com', '488-138-8908', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (241, 'Corbett Dixsee', 'cdixsee6o@kickstarter.com', '971-764-4850', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (242, 'Ezekiel Roote', 'eroote6p@economist.com', '473-897-0002', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (243, 'Abba Duckering', 'aduckering6q@bandcamp.com', '680-977-5421', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (244, 'Briant Lippitt', 'blippitt6r@microsoft.com', '160-966-6415', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (245, 'Jolee Stoffers', 'jstoffers6s@hc360.com', '300-419-2685', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (246, 'Maryjane Bridgeman', 'mbridgeman6t@gov.uk', '821-649-6043', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (247, 'Belita Gradwell', 'bgradwell6u@businessinsider.com', '385-148-4546', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (248, 'Margaretha Hadwick', 'mhadwick6v@acquirethisname.com', '445-682-8692', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (249, 'Leonidas Kruschev', 'lkruschev6w@samsung.com', '734-198-5382', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (250, 'Trudie Austin', 'taustin6x@ted.com', '332-798-5112', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (251, 'Smitty Aldrin', 'saldrin6y@irs.gov', '105-381-3974', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (252, 'Urbain Bowmaker', 'ubowmaker6z@huffingtonpost.com', '260-232-9227', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (253, 'Loleta Bushrod', 'lbushrod70@mysql.com', '607-779-0839', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (254, 'De witt Shaplin', 'dwitt71@ocn.ne.jp', '148-487-9523', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (255, 'Filip Murrey', 'fmurrey72@dagondesign.com', '422-223-8710', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (256, 'Kienan Aldridge', 'kaldridge73@360.cn', '914-867-8464', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (257, 'Katharyn Chaplyn', 'kchaplyn74@upenn.edu', '812-211-9408', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (258, 'Cris Fardo', 'cfardo75@bizjournals.com', '752-920-5006', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (259, 'Vanya Stickens', 'vstickens76@walmart.com', '168-309-3798', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (260, 'Hanny Sulter', 'hsulter77@baidu.com', '163-363-7488', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (261, 'Port Critch', 'pcritch78@berkeley.edu', '367-625-9123', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (262, 'Johannah Crimp', 'jcrimp79@msn.com', '600-562-9490', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (263, 'Joeann Bonevant', 'jbonevant7a@prlog.org', '705-894-1024', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (264, 'Marcile Stevings', 'mstevings7b@wufoo.com', '925-164-5827', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (265, 'Mace Tander', 'mtander7c@paginegialle.it', '130-502-0345', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (266, 'Delmar Lambie', 'dlambie7d@cmu.edu', '294-907-9184', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (267, 'Orelie Patinkin', 'opatinkin7e@netscape.com', '544-590-0969', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (268, 'Richie Harnetty', 'rharnetty7f@netvibes.com', '359-172-9635', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (269, 'Jillene Aikett', 'jaikett7g@microsoft.com', '935-719-8271', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (270, 'Kent Smouten', 'ksmouten7h@nature.com', '256-743-4972', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (271, 'Garry Kaveney', 'gkaveney7i@rakuten.co.jp', '317-513-4212', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (272, 'Betsy Oertzen', 'boertzen7j@eventbrite.com', '227-541-1436', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (273, 'Shea Laingmaid', 'slaingmaid7k@gmpg.org', '322-695-2269', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (274, 'Hedi Thormwell', 'hthormwell7l@vimeo.com', '943-553-0708', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (275, 'Ezmeralda McAlees', 'emcalees7m@joomla.org', '538-805-2374', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (276, 'Myrtie Bedenham', 'mbedenham7n@zimbio.com', '248-998-4959', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (277, 'Danell Claisse', 'dclaisse7o@cisco.com', '705-975-2688', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (278, 'Padgett Dautry', 'pdautry7p@w3.org', '276-179-9079', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (279, 'Monica O''Corr', 'mocorr7q@nydailynews.com', '420-175-1082', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (280, 'Kevina Brumhead', 'kbrumhead7r@diigo.com', '841-301-2655', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (281, 'Virgil Agostini', 'vagostini7s@npr.org', '201-566-5882', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (282, 'Rori Rawls', 'rrawls7t@naver.com', '526-693-0867', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (283, 'Odey Lobbe', 'olobbe7u@cloudflare.com', '228-291-2637', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (284, 'Haze Spellecy', 'hspellecy7v@hao123.com', '631-734-6499', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (285, 'Karney Bounde', 'kbounde7w@bravesites.com', '630-382-6553', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (286, 'Bertram Garrish', 'bgarrish7x@geocities.com', '252-989-8023', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (287, 'Milton Huison', 'mhuison7y@mozilla.com', '829-394-0546', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (288, 'Concettina Balcon', 'cbalcon7z@bizjournals.com', '417-398-8476', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (289, 'Maximilien Iskower', 'miskower80@pinterest.com', '632-457-2598', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (290, 'Neda Vasilechko', 'nvasilechko81@google.com.br', '648-298-9042', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (291, 'Ame Labell', 'alabell82@fotki.com', '620-535-3345', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (292, 'Jelene Clayworth', 'jclayworth83@marriott.com', '923-803-0514', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (293, 'Dyanne Stonier', 'dstonier84@disqus.com', '748-109-5038', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (294, 'Delmar Wilden', 'dwilden85@va.gov', '713-748-2339', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (295, 'Madelyn Bugbird', 'mbugbird86@mit.edu', '331-121-1143', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (296, 'Kristin Senton', 'ksenton87@bizjournals.com', '806-519-5172', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (297, 'Janot Gosz', 'jgosz88@sbwire.com', '186-440-4674', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (298, 'Teddy Campa', 'tcampa89@time.com', '675-827-3539', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (299, 'Curran Mineghelli', 'cmineghelli8a@weibo.com', '482-529-5895', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (300, 'Coop MacGill', 'cmacgill8b@facebook.com', '120-880-0784', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (301, 'Ax Trees', 'atrees8c@whitehouse.gov', '336-949-7628', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (302, 'Davey Lafee', 'dlafee8d@webnode.com', '746-413-1798', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (303, 'Augy Gosland', 'agosland8e@yelp.com', '717-707-6476', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (304, 'Pete Van', 'pvan8f@comsenz.com', '679-379-8106', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (305, 'Ethyl Vice', 'evice8g@csmonitor.com', '644-339-0600', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (306, 'Jackelyn Mattis', 'jmattis8h@lulu.com', '377-769-9546', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (307, 'Tobiah Fairburne', 'tfairburne8i@ustream.tv', '533-391-9930', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (308, 'Katine Way', 'kway8j@ameblo.jp', '829-741-4467', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (309, 'Sibel Gittings', 'sgittings8k@nps.gov', '947-786-1708', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (310, 'Quincey Wilcockes', 'qwilcockes8l@ifeng.com', '650-994-5731', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (311, 'Chick Clawsley', 'cclawsley8m@mozilla.com', '759-720-8854', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (312, 'Anetta Esposi', 'aesposi8n@github.io', '240-736-8305', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (313, 'Merrel Van der Beek', 'mvan8o@feedburner.com', '389-625-6098', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (314, 'Lurline Chatten', 'lchatten8p@gov.uk', '664-928-9609', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (315, 'Neely Grouen', 'ngrouen8q@rakuten.co.jp', '841-418-0395', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (316, 'Juliann Gallyon', 'jgallyon8r@ycombinator.com', '785-958-2828', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (317, 'Ameline Routledge', 'aroutledge8s@about.me', '629-160-2825', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (318, 'Port Barnes', 'pbarnes8t@columbia.edu', '761-733-5856', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (319, 'Atalanta Davidowsky', 'adavidowsky8u@uiuc.edu', '743-766-3999', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (320, 'Wash Milliere', 'wmilliere8v@abc.net.au', '412-389-8441', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (321, 'Modesty Izac', 'mizac8w@symantec.com', '681-247-7835', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (322, 'Mikael Pidgeley', 'mpidgeley8x@smugmug.com', '934-944-6658', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (323, 'Shawn McGuggy', 'smcguggy8y@biglobe.ne.jp', '598-536-6027', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (324, 'Milton Verna', 'mverna8z@harvard.edu', '329-825-2693', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (325, 'Garv Ames', 'games90@surveymonkey.com', '637-134-2947', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (326, 'Mead Serman', 'mserman91@blogs.com', '404-903-6383', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (327, 'Major David', 'mdavid92@technorati.com', '796-795-8534', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (328, 'Natty Orto', 'norto93@github.io', '297-690-8269', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (329, 'Arnold Custy', 'acusty94@bing.com', '191-264-2604', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (330, 'Vasilis Woolhouse', 'vwoolhouse95@xing.com', '157-871-6709', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (331, 'Robena Mitkcov', 'rmitkcov96@example.com', '531-685-7221', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (332, 'Hartwell Thurlow', 'hthurlow97@craigslist.org', '974-905-1012', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (333, 'Cull Fallens', 'cfallens98@spiegel.de', '526-103-5767', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (334, 'Yardley Jentin', 'yjentin99@liveinternet.ru', '147-324-7393', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (335, 'Ari Argente', 'aargente9a@oakley.com', '383-965-2653', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (336, 'Win Shireff', 'wshireff9b@wsj.com', '409-331-0004', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (337, 'Van Randles', 'vrandles9c@ocn.ne.jp', '633-603-3275', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (338, 'Bessy Aisman', 'baisman9d@lulu.com', '427-391-5545', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (339, 'Fairlie Strutz', 'fstrutz9e@cocolog-nifty.com', '336-188-6622', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (340, 'Norby Garnsworthy', 'ngarnsworthy9f@myspace.com', '374-120-9565', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (341, 'Kerk Evequot', 'kevequot9g@desdev.cn', '179-249-5573', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (342, 'Even Pounsett', 'epounsett9h@ehow.com', '735-892-3115', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (343, 'Yale Landsbury', 'ylandsbury9i@nytimes.com', '490-704-7327', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (344, 'Vincents Sumshon', 'vsumshon9j@google.com.au', '806-947-7554', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (345, 'Fancy Dwane', 'fdwane9k@admin.ch', '172-501-6876', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (346, 'Olimpia Gogan', 'ogogan9l@rakuten.co.jp', '677-439-4743', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (347, 'Syd Janousek', 'sjanousek9m@cmu.edu', '894-900-0597', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (348, 'Bartholomew Skokoe', 'bskokoe9n@live.com', '466-113-4106', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (349, 'Corilla Marmyon', 'cmarmyon9o@hp.com', '284-775-6340', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (350, 'Marleen Hemphill', 'mhemphill9p@wufoo.com', '497-345-3366', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (351, 'Candi Gossart', 'cgossart9q@livejournal.com', '652-759-1687', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (352, 'Nannie Dusting', 'ndusting9r@dailymail.co.uk', '406-526-7542', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (353, 'Debby Czajkowski', 'dczajkowski9s@cloudflare.com', '584-518-0048', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (354, 'Anabel Janak', 'ajanak9t@nyu.edu', '618-547-9964', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (355, 'Floyd Bysh', 'fbysh9u@yahoo.co.jp', '383-318-2718', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (356, 'Mackenzie Merrigan', 'mmerrigan9v@blogspot.com', '290-441-8230', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (357, 'Garold Cruddas', 'gcruddas9w@sciencedaily.com', '492-623-4042', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (358, 'Ettie Kaley', 'ekaley9x@merriam-webster.com', '839-549-4404', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (359, 'Boote Wedderburn', 'bwedderburn9y@admin.ch', '442-987-5348', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (360, 'Ford Othen', 'fothen9z@google.com.au', '556-645-5270', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (361, 'Zenia Littlemore', 'zlittlemorea0@360.cn', '770-172-9434', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (362, 'Franchot Hardstaff', 'fhardstaffa1@mysql.com', '922-539-4506', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (363, 'Tyson Nelson', 'tnelsona2@gizmodo.com', '510-206-5359', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (364, 'August Irons', 'aironsa3@odnoklassniki.ru', '688-772-3776', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (365, 'Hilly Snape', 'hsnapea4@gov.uk', '323-863-8661', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (366, 'Sue Bullers', 'sbullersa5@oaic.gov.au', '264-258-0531', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (367, 'Belva Dyers', 'bdyersa6@joomla.org', '920-897-2288', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (368, 'Darci Dowzell', 'ddowzella7@unesco.org', '308-863-8071', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (369, 'Manolo des Remedios', 'mdesa8@godaddy.com', '389-190-0279', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (370, 'Annabela Hazard', 'ahazarda9@ox.ac.uk', '480-732-7532', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (371, 'Meade Atack', 'matackaa@barnesandnoble.com', '876-389-8854', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (372, 'Titus Kubal', 'tkubalab@army.mil', '102-923-5793', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (373, 'Giavani Rishworth', 'grishworthac@alexa.com', '117-221-5882', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (374, 'Kelsy Gymlett', 'kgymlettad@google.de', '777-242-0686', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (375, 'Brewer Peaddie', 'bpeaddieae@technorati.com', '701-553-1310', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (376, 'Biddie Aleveque', 'balevequeaf@intel.com', '126-199-6956', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (377, 'Ninnette Pesic', 'npesicag@java.com', '205-748-8084', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (378, 'Nerte Ecclestone', 'necclestoneah@jiathis.com', '899-922-4285', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (379, 'Ibby Treher', 'itreherai@mapy.cz', '762-103-7020', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (380, 'Barris Noddings', 'bnoddingsaj@people.com.cn', '121-716-8523', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (381, 'Barbe Ruben', 'brubenak@infoseek.co.jp', '373-420-8865', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (382, 'Quincy Paulazzi', 'qpaulazzial@npr.org', '638-999-1442', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (383, 'Shurwood Skocroft', 'sskocroftam@geocities.com', '754-872-3670', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (384, 'Ralf Erni', 'rernian@ebay.com', '872-132-0338', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (385, 'Marie Curness', 'mcurnessao@cdbaby.com', '644-295-6970', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (386, 'Brandy Hare', 'bhareap@netlog.com', '735-576-8656', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (387, 'Randolph Lindell', 'rlindellaq@yale.edu', '824-178-9447', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (388, 'Cash Litster', 'clitsterar@comcast.net', '256-877-7725', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (389, 'Tawnya Hamerton', 'thamertonas@reference.com', '659-550-9257', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (390, 'Oren Sumshon', 'osumshonat@networkadvertising.org', '401-306-1073', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (391, 'Myrtia Coveley', 'mcoveleyau@a8.net', '509-225-5562', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (392, 'Oran Carrett', 'ocarrettav@reference.com', '940-265-9270', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (393, 'Egon Krimmer', 'ekrimmeraw@networkadvertising.org', '794-367-6389', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (394, 'Alvira Tollemache', 'atollemacheax@yale.edu', '240-116-8948', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (395, 'Cameron Jakeman', 'cjakemanay@ted.com', '595-839-1646', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (396, 'Jarib Charlo', 'jcharloaz@sina.com.cn', '940-385-8339', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (397, 'Natka Leyton', 'nleytonb0@amazon.co.jp', '124-110-6697', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (398, 'Kiele Wackett', 'kwackettb1@creativecommons.org', '870-925-0048', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (399, 'Ebonee Kmicicki', 'ekmicickib2@dedecms.com', '571-405-4861', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (400, 'Sharline Broseke', 'sbrosekeb3@wordpress.com', '475-646-9061', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (401, 'Frannie Kuhn', 'fkuhnb4@webnode.com', '709-441-3988', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (402, 'Ludovico Alf', 'lalfb5@elpais.com', '845-353-5669', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (403, 'Elton Trustram', 'etrustramb6@shareasale.com', '576-576-9509', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (404, 'Carver Ewdale', 'cewdaleb7@twitter.com', '866-525-0444', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (405, 'Aundrea Wasielewski', 'awasielewskib8@princeton.edu', '324-324-1868', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (406, 'Ingaberg Bernasek', 'ibernasekb9@purevolume.com', '316-162-7176', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (407, 'Sergent Fawdrie', 'sfawdrieba@pinterest.com', '912-500-3235', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (408, 'Abbe Gyrgorcewicx', 'agyrgorcewicxbb@wired.com', '560-156-2875', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (409, 'Farra Stewart', 'fstewartbc@ovh.net', '601-524-0785', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (410, 'Minta Blaes', 'mblaesbd@typepad.com', '159-682-8005', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (411, 'Spence Tapenden', 'stapendenbe@weebly.com', '913-348-4419', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (412, 'Bartholomeo Kenny', 'bkennybf@vk.com', '866-827-0463', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (413, 'Jillayne Margeram', 'jmargerambg@usatoday.com', '946-779-4585', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (414, 'Karine Goodlife', 'kgoodlifebh@1und1.de', '384-726-8362', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (415, 'Agosto Schwartz', 'aschwartzbi@cornell.edu', '979-509-3523', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (416, 'Titos Duinkerk', 'tduinkerkbj@github.io', '640-323-3803', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (417, 'Kristina Dorrins', 'kdorrinsbk@pinterest.com', '415-136-7822', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (418, 'Elaina McSperron', 'emcsperronbl@facebook.com', '478-997-0993', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (419, 'Kellby Niesegen', 'kniesegenbm@unicef.org', '576-127-7790', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (420, 'Inez Argrave', 'iargravebn@ocn.ne.jp', '672-645-3157', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (421, 'Jonie Lindgren', 'jlindgrenbo@icq.com', '823-202-2487', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (422, 'Bowie Bickerton', 'bbickertonbp@symantec.com', '460-353-9723', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (423, 'Dominick Hasted', 'dhastedbq@independent.co.uk', '123-222-6993', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (424, 'Clayson Kibbye', 'ckibbyebr@theglobeandmail.com', '874-450-1094', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (425, 'Addison Siemandl', 'asiemandlbs@discuz.net', '616-614-3185', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (426, 'Gage Beville', 'gbevillebt@hostgator.com', '581-526-0065', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (427, 'Mellisa Daughtery', 'mdaughterybu@mit.edu', '507-739-5198', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (428, 'Yul Ludron', 'yludronbv@ask.com', '335-429-7704', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (429, 'Staci Goosey', 'sgooseybw@sciencedirect.com', '434-912-6446', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (430, 'Gizela Netti', 'gnettibx@a8.net', '944-299-9839', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (431, 'Joli Bradman', 'jbradmanby@ebay.co.uk', '521-778-0371', 8);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (432, 'Drucie Spurret', 'dspurretbz@xing.com', '569-405-9029', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (433, 'Quincy Cappleman', 'qcapplemanc0@artisteer.com', '238-771-9895', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (434, 'Dyanna Domb', 'ddombc1@ning.com', '792-559-1570', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (435, 'Udale Hanshaw', 'uhanshawc2@symantec.com', '877-816-8648', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (436, 'Del Calverd', 'dcalverdc3@eepurl.com', '245-554-0847', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (437, 'Laverna Almack', 'lalmackc4@dell.com', '432-495-5149', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (438, 'Perry Ladlow', 'pladlowc5@taobao.com', '752-768-7510', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (439, 'Genni McKyrrelly', 'gmckyrrellyc6@hatena.ne.jp', '259-695-7809', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (440, 'Goddard Swannack', 'gswannackc7@hostgator.com', '473-135-0313', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (441, 'Arlena Nice', 'anicec8@alibaba.com', '486-291-1774', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (442, 'Jamesy Lippo', 'jlippoc9@51.la', '177-169-3025', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (443, 'Zelma Drescher', 'zdrescherca@usgs.gov', '688-473-6039', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (444, 'Enrique Dunnett', 'edunnettcb@irs.gov', '208-354-4934', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (445, 'Fabio Spaldin', 'fspaldincc@ifeng.com', '621-539-8283', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (446, 'Seward Frankiss', 'sfrankisscd@va.gov', '690-703-5032', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (447, 'Bren Gerrelts', 'bgerreltsce@livejournal.com', '675-286-7656', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (448, 'Margette Poston', 'mpostoncf@wordpress.org', '791-412-3686', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (449, 'Judi Nealon', 'jnealoncg@wikimedia.org', '709-974-6597', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (450, 'Pooh Smythin', 'psmythinch@infoseek.co.jp', '813-868-6131', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (451, 'Devina Curbishley', 'dcurbishleyci@yandex.ru', '275-343-3861', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (452, 'Anya Fatharly', 'afatharlycj@pcworld.com', '172-810-1813', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (453, 'Enriqueta Nealon', 'enealonck@loc.gov', '975-707-1353', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (454, 'Kelsey Lambertz', 'klambertzcl@example.com', '341-645-4678', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (455, 'Kala Rodliff', 'krodliffcm@is.gd', '560-413-7004', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (456, 'Dud Tatam', 'dtatamcn@4shared.com', '373-280-7559', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (457, 'Chevalier Berry', 'cberryco@apache.org', '594-818-8193', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (458, 'Jerrome Danilovich', 'jdanilovichcp@deviantart.com', '655-146-5120', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (459, 'Diana Veryard', 'dveryardcq@harvard.edu', '392-993-7642', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (460, 'Neron Gater', 'ngatercr@nature.com', '529-107-8478', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (461, 'Ira Beaglehole', 'ibeagleholecs@guardian.co.uk', '752-546-3758', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (462, 'Timmi Bruckner', 'tbrucknerct@ycombinator.com', '760-646-5170', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (463, 'Jami Griffen', 'jgriffencu@arstechnica.com', '627-256-1073', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (464, 'Johnathon Moorfield', 'jmoorfieldcv@prnewswire.com', '466-876-4452', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (465, 'Francene Breem', 'fbreemcw@behance.net', '995-596-8142', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (466, 'Gerrie Timblett', 'gtimblettcx@privacy.gov.au', '183-132-1630', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (467, 'Rory Goodlad', 'rgoodladcy@taobao.com', '982-915-9383', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (468, 'Marlowe Ailmer', 'mailmercz@tripadvisor.com', '918-787-8407', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (469, 'Lauritz Imlach', 'limlachd0@netlog.com', '211-143-9896', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (470, 'Meriel McGaw', 'mmcgawd1@bbb.org', '944-453-8459', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (471, 'Hendrik Nockolds', 'hnockoldsd2@ft.com', '755-978-7945', 7);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (472, 'Marve Saket', 'msaketd3@latimes.com', '139-374-0689', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (473, 'Kinsley Jostan', 'kjostand4@webmd.com', '302-914-2965', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (474, 'Lorena Samarth', 'lsamarthd5@webs.com', '458-261-2814', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (475, 'Deonne McGreary', 'dmcgrearyd6@examiner.com', '108-985-0568', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (476, 'Wheeler Murrell', 'wmurrelld7@census.gov', '617-563-3408', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (477, 'Arron Shovelbottom', 'ashovelbottomd8@gizmodo.com', '960-898-1710', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (478, 'Elsey Radclyffe', 'eradclyffed9@hostgator.com', '998-544-0594', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (479, 'Rebecka Notti', 'rnottida@fotki.com', '419-468-1062', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (480, 'Bethanne Jessopp', 'bjessoppdb@drupal.org', '507-636-5586', 9);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (481, 'Darlleen Ginman', 'dginmandc@wiley.com', '637-964-6123', 5);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (482, 'Nye Charlwood', 'ncharlwooddd@sourceforge.net', '304-122-5695', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (483, 'Tilly Vergine', 'tverginede@google.it', '939-424-3163', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (484, 'Rab Twohig', 'rtwohigdf@springer.com', '185-475-3804', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (485, 'Joye Lyman', 'jlymandg@scientificamerican.com', '734-419-1627', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (486, 'Maggie Rops', 'mropsdh@facebook.com', '870-320-1481', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (487, 'Addy Kynd', 'akynddi@liveinternet.ru', '926-771-5387', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (488, 'Jamey Goodredge', 'jgoodredgedj@surveymonkey.com', '182-612-5045', 4);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (489, 'Vic Bartaloni', 'vbartalonidk@dailymotion.com', '787-200-3328', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (490, 'Toby Thurnham', 'tthurnhamdl@domainmarket.com', '409-893-6063', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (491, 'Torre Earpe', 'tearpedm@exblog.jp', '387-416-2419', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (492, 'Fulton Gristhwaite', 'fgristhwaitedn@yahoo.com', '364-541-4754', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (493, 'Igor Matuschek', 'imatuschekdo@biglobe.ne.jp', '551-634-0214', 2);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (494, 'Ann-marie Pafford', 'apafforddp@yelp.com', '767-167-2309', 10);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (495, 'Terri Crennell', 'tcrennelldq@pcworld.com', '664-627-3334', 11);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (496, 'Marlin Spaunton', 'mspauntondr@state.gov', '616-761-1662', 3);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (497, 'Antonius Scamadine', 'ascamadineds@moonfruit.com', '658-381-3233', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (498, 'Almire McRinn', 'amcrinndt@wiley.com', '854-523-9159', 1);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (499, 'Lyndell Rankcom', 'lrankcomdu@tmall.com', '792-544-3895', 6);

INSERT INTO "ANONYMOUS"."Employees" ("EMP_Id", "EMP_FullName", "EMP_Email", "EMP_PhoneNumber", "DEP_Id") VALUES (500, 'Pen Grahlman', 'pgrahlmandv@wikispaces.com', '986-895-8607', 7);


INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (1, 'Jade Tunny', 'jtunny0@tinypic.com', '9398470691');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (2, 'Adam Hacaud', 'ahacaud1@sun.com', '1250473039');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (3, 'Heall Luxon', 'hluxon2@google.com.br', '6642807715');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (4, 'Merilyn Tribell', 'mtribell3@csmonitor.com', '7643610932');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (5, 'Cullie Whitfeld', 'cwhitfeld4@seattletimes.com', '3435735872');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (6, 'Myrah McGunley', 'mmcgunley5@friendfeed.com', '6932912864');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (7, 'Kath Dufaur', 'kdufaur6@uol.com.br', '7967614925');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (8, 'Philomena Raund', 'praund7@zimbio.com', '1271356570');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (9, 'Lem Bert', 'lbert8@census.gov', '3694432825');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (10, 'Valera Bunney', 'vbunney9@over-blog.com', '2824008075');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (11, 'Rebekah Fitchet', 'rfitcheta@ucoz.com', '4133193067');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (12, 'Yevette Baughn', 'ybaughnb@mysql.com', '8766674328');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (13, 'Pooh Phillis', 'pphillisc@cam.ac.uk', '0472499351');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (14, 'Jessi Upston', 'jupstond@parallels.com', '7651866924');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (15, 'Noland Fulleylove', 'nfulleylovee@patch.com', '4116582549');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (16, 'Boris McAvey', 'bmcaveyf@a8.net', '8850366086');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (17, 'Myer Couper', 'mcouperg@microsoft.com', '3294403666');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (18, 'Korie Bannister', 'kbannisterh@ucla.edu', '9827403362');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (19, 'Obie Gammon', 'ogammoni@paginegialle.it', '0341903868');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (20, 'Averil Danielis', 'adanielisj@ameblo.jp', '4855696552');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (21, 'Kipp Rodenburgh', 'krodenburghk@slideshare.net', '8449287812');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (22, 'Reube Claughton', 'rclaughtonl@dell.com', '7821791997');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (23, 'Marian England', 'menglandm@nasa.gov', '9185284297');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (24, 'Sharla Hawkyens', 'shawkyensn@fotki.com', '5371350276');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (25, 'Elita Gelardi', 'egelardio@goo.gl', '5563656004');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (26, 'Fredia Comi', 'fcomip@rediff.com', '0332940004');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (27, 'Julie Farge', 'jfargeq@ehow.com', '3847114603');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (28, 'Jon Westwick', 'jwestwickr@mayoclinic.com', '1095320254');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (29, 'Fritz Frogley', 'ffrogleys@bloglovin.com', '7656307745');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (30, 'Verla Flement', 'vflementt@digg.com', '6321515191');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (31, 'Bridget Flahive', 'bflahiveu@amazon.co.uk', '6562947669');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (32, 'Ara Dingsdale', 'adingsdalev@wikispaces.com', '8747439106');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (33, 'Fred Haizelden', 'fhaizeldenw@de.vu', '6388883095');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (34, 'Winni Todd', 'wtoddx@digg.com', '2249557586');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (35, 'Sayre Cake', 'scakey@yolasite.com', '3340027811');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (36, 'Darrick Rowlin', 'drowlinz@gmpg.org', '4535387435');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (37, 'Raine Pennacci', 'rpennacci10@bravesites.com', '5557325638');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (38, 'Lynnette Shrimplin', 'lshrimplin11@economist.com', '3045760430');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (39, 'Malinde Lilian', 'mlilian12@flickr.com', '4623318338');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (40, 'Horacio Collumbell', 'hcollumbell13@163.com', '0165175311');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (41, 'Maurie Rucklesse', 'mrucklesse14@youtu.be', '6425812834');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (42, 'Tallulah Monard', 'tmonard15@japanpost.jp', '4059334847');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (43, 'Zeke de Wilde', 'zde16@netscape.com', '4249739104');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (44, 'Dorree Estevez', 'destevez17@163.com', '9513197034');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (45, 'Datha Ainscough', 'dainscough18@dailymail.co.uk', '6431158938');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (46, 'Denys Calderwood', 'dcalderwood19@independent.co.uk', '3731657066');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (47, 'Harv Toquet', 'htoquet1a@chicagotribune.com', '0792870468');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (48, 'Cal Evens', 'cevens1b@yelp.com', '9814212261');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (49, 'Joli Thairs', 'jthairs1c@bigcartel.com', '0621020036');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (50, 'Helsa Casarini', 'hcasarini1d@examiner.com', '8564573202');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (51, 'Holli Davidofski', 'hdavidofski1e@wikimedia.org', '3871815454');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (52, 'Elvin Cicchillo', 'ecicchillo1f@hubpages.com', '2611174628');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (53, 'Verene Eckh', 'veckh1g@weather.com', '2104517648');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (54, 'Adria Pennycock', 'apennycock1h@sogou.com', '0096531266');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (55, 'Lynnell Dalziel', 'ldalziel1i@desdev.cn', '3004378353');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (56, 'Ron Haig', 'rhaig1j@unblog.fr', '8973818953');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (57, 'Hetti Cleary', 'hcleary1k@gnu.org', '5829300095');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (58, 'Zorah Wilkisson', 'zwilkisson1l@epa.gov', '9462642648');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (59, 'Buckie McTaggart', 'bmctaggart1m@privacy.gov.au', '5804788221');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (60, 'Rona Hechlin', 'rhechlin1n@yelp.com', '2404546473');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (61, 'Sumner Davion', 'sdavion1o@mozilla.org', '0838998917');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (62, 'Emmery Kiehl', 'ekiehl1p@utexas.edu', '6793010336');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (63, 'Aldis Godart', 'agodart1q@symantec.com', '5627057181');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (64, 'Caspar Goroni', 'cgoroni1r@unc.edu', '5963847966');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (65, 'Lenette Ambrus', 'lambrus1s@ed.gov', '3147704130');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (66, 'Aguie Jimmes', 'ajimmes1t@flickr.com', '0298527219');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (67, 'Etan Grantham', 'egrantham1u@springer.com', '9282633918');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (68, 'Derwin Menchenton', 'dmenchenton1v@patch.com', '3122203863');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (69, 'Libbie Iddins', 'liddins1w@phoca.cz', '8657206420');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (70, 'Ira Teliga', 'iteliga1x@wordpress.com', '4240806836');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (71, 'Taber Polglase', 'tpolglase1y@amazon.co.jp', '7773880743');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (72, 'Charmain Benson', 'cbenson1z@cyberchimps.com', '0841674906');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (73, 'Jeddy Shorland', 'jshorland20@live.com', '4896288343');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (74, 'Emeline Serridge', 'eserridge21@over-blog.com', '4996086084');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (75, 'Pate Ethington', 'pethington22@multiply.com', '0898733081');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (76, 'Kelbee Pedrol', 'kpedrol23@pbs.org', '2099389241');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (77, 'Jemimah Sarney', 'jsarney24@berkeley.edu', '2025650132');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (78, 'Clary Bach', 'cbach25@imdb.com', '2194745548');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (79, 'Maryrose Petrakov', 'mpetrakov26@narod.ru', '3401894218');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (80, 'Christophe Lillow', 'clillow27@smh.com.au', '1465605738');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (81, 'Lilly Stutte', 'lstutte28@economist.com', '2363846435');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (82, 'Aloise Sannes', 'asannes29@google.cn', '2694362222');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (83, 'Peggi Clues', 'pclues2a@shutterfly.com', '7768807049');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (84, 'Biddy Crookshanks', 'bcrookshanks2b@intel.com', '7554813110');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (85, 'Dionne Gibbetts', 'dgibbetts2c@cocolog-nifty.com', '6404229579');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (86, 'Audra Lynock', 'alynock2d@netvibes.com', '8664924929');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (87, 'Rodina Blasl', 'rblasl2e@sun.com', '5472365511');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (88, 'Tore Cullagh', 'tcullagh2f@sciencedaily.com', '1310048010');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (89, 'Danila Gibson', 'dgibson2g@biblegateway.com', '2940384096');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (90, 'Dorey Fontanet', 'dfontanet2h@samsung.com', '3653909120');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (91, 'Adelheid Moylan', 'amoylan2i@msu.edu', '4057935789');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (92, 'Elisabeth O''Brallaghan', 'eobrallaghan2j@wiley.com', '5368163746');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (93, 'Manuel Weatherdon', 'mweatherdon2k@msn.com', '0886657814');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (94, 'Javier Franciskiewicz', 'jfranciskiewicz2l@nbcnews.com', '2434158250');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (95, 'Bessy Stallybrass', 'bstallybrass2m@economist.com', '0282816739');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (96, 'Temp Tizzard', 'ttizzard2n@slate.com', '4570270093');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (97, 'Fidelity Stenhouse', 'fstenhouse2o@posterous.com', '8325047720');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (98, 'Torr Raiman', 'traiman2p@github.com', '0346377803');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (99, 'Damon Shwenn', 'dshwenn2q@w3.org', '1375155350');

INSERT INTO "ANONYMOUS"."Suppliers" ("SUP_Id", "SUP_Name", "SUP_Email", "SUP_TaxCode") VALUES (100, 'Emanuele Meak', 'emeak2r@de.vu', '3884981226');


INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (1, 'Blake Grimsditch', 'bgrimsditch0@bloomberg.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (2, 'Linell Degoix', 'ldegoix1@squidoo.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (3, 'Paolina Splevings', 'psplevings2@photobucket.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (4, 'Gerard McLauchlin', 'gmclauchlin3@amazon.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (5, 'Rab Coslitt', 'rcoslitt4@samsung.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (6, 'Mona Wraighte', 'mwraighte5@sciencedirect.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (7, 'Audrey Parlet', 'aparlet6@google.cn', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (8, 'Drusilla Tiddeman', 'dtiddeman7@nbcnews.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (9, 'Giacomo Matuszak', 'gmatuszak8@gizmodo.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (10, 'Woody Seymour', 'wseymour9@amazon.co.uk', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (11, 'Jarrad Quinevan', 'jquinevana@blogs.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (12, 'Tomas Sandal', 'tsandalb@cocolog-nifty.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (13, 'Sissy Cavanagh', 'scavanaghc@digg.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (14, 'Aldwin Kubanek', 'akubanekd@goo.ne.jp', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (15, 'Evyn Cobbled', 'ecobblede@chron.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (16, 'Ellis Dolohunty', 'edolohuntyf@youtu.be', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (17, 'Jaquelyn Nollet', 'jnolletg@bandcamp.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (18, 'Florrie Ashman', 'fashmanh@skype.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (19, 'Chevy Castiello', 'ccastielloi@cisco.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (20, 'Alford Romeril', 'aromerilj@pbs.org', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (21, 'Harlene Berzins', 'hberzinsk@linkedin.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (22, 'Modestine Rustidge', 'mrustidgel@sun.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (23, 'Eduardo McGauhy', 'emcgauhym@kickstarter.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (24, 'Towny Humburton', 'thumburtonn@bravesites.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'N');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (25, 'Bette Gorce', 'bgorceo@g.co', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (26, 'Gilburt Osichev', 'gosichevp@jimdo.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (27, 'Stephenie Rushman', 'srushmanq@barnesandnoble.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (28, 'Cleo Crosher', 'ccrosherr@google.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (29, 'Jerry Kittiman', 'jkittimans@oaic.gov.au', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (30, 'Amanda Clausner', 'aclausnert@yandex.ru', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (31, 'Cash Strathman', 'cstrathmanu@zimbio.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (32, 'Kristan Simonato', 'ksimonatov@blogtalkradio.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (33, 'Hollie Amort', 'hamortw@google.com.hk', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (34, 'Billye Assante', 'bassantex@berkeley.edu', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (35, 'Coleen Polhill', 'cpolhilly@live.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (36, 'Binni Bridel', 'bbridelz@epa.gov', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (37, 'Emmalynn Dunkerly', 'edunkerly10@geocities.jp', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (38, 'Meris Shasnan', 'mshasnan11@slideshare.net', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (39, 'Frasco Yanukhin', 'fyanukhin12@bing.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (40, 'Garret Edelston', 'gedelston13@mapquest.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (41, 'Tedman Jacklings', 'tjacklings14@si.edu', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (42, 'Carlo Sweedy', 'csweedy15@xrea.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (43, 'Kirsti McCrie', 'kmccrie16@webeden.co.uk', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (44, 'Angeli Snoxall', 'asnoxall17@imdb.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (45, 'Hatti Thon', 'hthon18@omniture.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (46, 'Andra Tarn', 'atarn19@photobucket.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (47, 'Xylina Pollitt', 'xpollitt1a@netvibes.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (48, 'Conrado Coleby', 'ccoleby1b@adobe.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (49, 'Cort Broadberry', 'cbroadberry1c@ehow.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (50, 'Dulcy Quilliam', 'dquilliam1d@drupal.org', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (51, 'Arnie MacAllister', 'amacallister1e@ucsd.edu', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (52, 'Eben Simonetti', 'esimonetti1f@csmonitor.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (53, 'Kaela Flipek', 'kflipek1g@npr.org', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (54, 'Laurence Raper', 'lraper1h@discovery.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (55, 'Ancell Bartosek', 'abartosek1i@yellowpages.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (56, 'Rodd Sappell', 'rsappell1j@nps.gov', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (57, 'Cordula Terrazzo', 'cterrazzo1k@hostgator.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (58, 'Kalindi Dall', 'kdall1l@edublogs.org', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (59, 'Francine Stammers', 'fstammers1m@multiply.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (60, 'Charyl Astles', 'castles1n@phpbb.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (61, 'Bel Pietrzyk', 'bpietrzyk1o@pinterest.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (62, 'Fairfax Flynn', 'fflynn1p@taobao.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (63, 'Weber Keers', 'wkeers1q@mozilla.org', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (64, 'Garold Deneve', 'gdeneve1r@google.co.uk', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (65, 'Lynne Saffran', 'lsaffran1s@amazon.de', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (66, 'Risa Shovlin', 'rshovlin1t@rambler.ru', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (67, 'Gibb Powder', 'gpowder1u@hud.gov', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (68, 'Deina Chessell', 'dchessell1v@chronoengine.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (69, 'Hazlett Betz', 'hbetz1w@techcrunch.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (70, 'Abelard Whieldon', 'awhieldon1x@about.me', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (71, 'Carson Holmyard', 'cholmyard1y@bbc.co.uk', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (72, 'Vinnie Barroux', 'vbarroux1z@google.ru', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (73, 'Brigham Bosward', 'bbosward20@4shared.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (74, 'Harriette Iliffe', 'hiliffe21@virginia.edu', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (75, 'Birch Vernham', 'bvernham22@soup.io', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (76, 'Guss Proffitt', 'gproffitt23@delicious.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (77, 'Sheena Antognetti', 'santognetti24@wisc.edu', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (78, 'Celestyna McKenna', 'cmckenna25@fotki.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (79, 'Austin Coger', 'acoger26@jimdo.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (80, 'Karlene Berends', 'kberends27@theglobeandmail.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (81, 'Gloriana McComas', 'gmccomas28@godaddy.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (82, 'Gary Vinker', 'gvinker29@weather.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (83, 'Winnie Sinney', 'wsinney2a@google.es', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (84, 'Leeann Alman', 'lalman2b@smh.com.au', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (85, 'Jaime Cantos', 'jcantos2c@phoca.cz', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (86, 'Robbie Beebis', 'rbeebis2d@bbc.co.uk', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (87, 'Winslow Franck', 'wfranck2e@sourceforge.net', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (88, 'Kamila Scrange', 'kscrange2f@bizjournals.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (89, 'Mace Danford', 'mdanford2g@wufoo.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (90, 'Xymenes Joney', 'xjoney2h@w3.org', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (91, 'Randal Turl', 'rturl2i@craigslist.org', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (92, 'Grace Mullenger', 'gmullenger2j@oakley.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (93, 'Jilly Zannotti', 'jzannotti2k@yahoo.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (94, 'Cassandry Henrie', 'chenrie2l@photobucket.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (95, 'Tressa Folan', 'tfolan2m@miibeian.gov.cn', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (96, 'Bron Falco', 'bfalco2n@360.cn', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (97, 'Obediah Gethyn', 'ogethyn2o@surveymonkey.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (98, 'Gilles Bittleson', 'gbittleson2p@gov.uk', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (99, 'Hermy Sheardown', 'hsheardown2q@cnn.com', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');

INSERT INTO "ANONYMOUS"."Users" ("USR_Id", "USR_FullName", "USR_Username", "USR_Settings", "USR_IsActive") VALUES (100, 'Elsy Brambell', 'ebrambell2r@nsw.gov.au', '{Locale: ''en-GB'', Theme: 1, ContactMethod: ''email''}', 'Y');


INSERT INTO "ANONYMOUS"."BlackList" ("BLL_Year", "BLL_Email", "BLL_Amount") VALUES (2018, 'pkocher4f@oaic.gov.au', 560);

INSERT INTO "ANONYMOUS"."BlackList" ("BLL_Year", "BLL_Email", "BLL_Amount") VALUES (2019, 'ab602772-e161-427c-8bff-f705188f9754@test.com', 2310);

INSERT INTO "ANONYMOUS"."BlackList" ("BLL_Year", "BLL_Email", "BLL_Amount") VALUES (2018, 'cmosedale5s@berkeley.edu', 35);

INSERT INTO "ANONYMOUS"."BlackList" ("BLL_Year", "BLL_Email", "BLL_Amount") VALUES (2018, 'gsearston7r@odnoklassniki.ru', 6700);

INSERT INTO "ANONYMOUS"."BlackList" ("BLL_Year", "BLL_Email", "BLL_Amount") VALUES (2019, 'hkerrich63@ameblo.jp', 1050);

INSERT INTO "ANONYMOUS"."BlackList" ("BLL_Year", "BLL_Email", "BLL_Amount") VALUES (2018, 'rtrenfield44@addthis.com', 3450);

INSERT INTO "ANONYMOUS"."BlackList" ("BLL_Year", "BLL_Email", "BLL_Amount") VALUES (2019, 'npreskett1s@instagram.com', 150);

END;


