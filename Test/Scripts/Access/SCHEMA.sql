DROP TABLE [InvoiceLines];
--BLOCK
DROP TABLE [Invoices];
--BLOCK
DROP TABLE [Addresses];
--BLOCK
DROP TABLE [Countries];
--BLOCK
DROP TABLE [Customers];

--BLOCK
CREATE TABLE [Customers] (
	[CUS_Id] COUNTER NOT NULL,
	[CUS_FirstName] VARCHAR(50) NOT NULL,
	[CUS_LastName] VARCHAR(50) NOT NULL,
	[CUS_Email] VARCHAR(50) NOT NULL,
	[CUS_TaxCode] VARCHAR(50) NOT NULL,
	[CUS_IsActive] BIT NOT NULL,
	[CUS_BirthDate] DATE NOT NULL,
	[CUS_DeathDate] DATE NULL,
	[CUS_Points] INTEGER NOT NULL,
	CONSTRAINT [PrimaryKey] PRIMARY KEY ([CUS_Id])
);

--BLOCK
CREATE TABLE [Countries](
	[COU_Id] COUNTER NOT NULL,
	[COU_Name] VARCHAR(50) NOT NULL,
	CONSTRAINT [PK_Countries] PRIMARY KEY ([COU_Id])
);
--BLOCK
ALTER TABLE [Countries] ADD CONSTRAINT [UQ_Countries_Name] UNIQUE ([COU_Name])

--BLOCK
CREATE TABLE [Addresses] (
	[ADR_Id] COUNTER NOT NULL,
	[ADR_Street] VARCHAR(50) NOT NULL,
	[ADR_PostalCode] VARCHAR(50) NULL,
	[ADR_City] VARCHAR(50) NOT NULL,
	[ADR_IsMain] BIT NOT NULL,
	[COU_Id] INTEGER NOT NULL,
	[CUS_Id] INTEGER NOT NULL,
	CONSTRAINT [PK_Addresses] PRIMARY KEY ([ADR_Id])
);
--BLOCK
ALTER TABLE [Addresses] ADD CONSTRAINT [FK_Addresses_Countries] FOREIGN KEY([COU_Id]) REFERENCES [Countries] ([COU_Id])
--BLOCK
ALTER TABLE [Addresses] ADD CONSTRAINT [FK_Addresses_Customers] FOREIGN KEY([CUS_Id]) REFERENCES [Customers] ([CUS_Id])

--BLOCK
CREATE TABLE [Invoices](
	[INV_Id] COUNTER NOT NULL,
	[INV_Number] VARCHAR(50) NOT NULL,
	[INV_Date] DATE NOT NULL,
	[INV_IsPaid] BIT NOT NULL,
	[CUS_Id] INTEGER NOT NULL,
	CONSTRAINT [PK_Invoices] PRIMARY KEY ([INV_Id])
);
--BLOCK
ALTER TABLE [Invoices] ADD CONSTRAINT [FK_Invoices_Customers] FOREIGN KEY([CUS_Id]) REFERENCES [Customers] ([CUS_Id]);

--BLOCK
CREATE TABLE [InvoiceLines](
	[ILI_Id] COUNTER NOT NULL,
	[ILI_Concept] VARCHAR(50) NOT NULL,
	[ILI_Amount] MONEY NOT NULL,
	[INV_Id] INTEGER NOT NULL,
	CONSTRAINT [PK_InvoiceLines] PRIMARY KEY CLUSTERED ([ILI_Id])
);
--BLOCK
ALTER TABLE [InvoiceLines] ADD CONSTRAINT [FK_InvoiceLines_Invoices] FOREIGN KEY([INV_Id]) REFERENCES [Invoices] ([INV_Id])


