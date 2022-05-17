DROP TABLE IF EXISTS [dbo].[Employees]
DROP TABLE IF EXISTS [dbo].[Departments]
DROP TABLE IF EXISTS [dbo].[Companies]

DROP TABLE IF EXISTS [dbo].[Addresses]
DROP TABLE IF EXISTS [dbo].[Countries]
DROP TABLE IF EXISTS [dbo].[InvoiceLines]
DROP TABLE IF EXISTS [dbo].[Invoices]
DROP TABLE IF EXISTS [dbo].[Customers]
DROP TABLE IF EXISTS [dbo].[Suppliers]
DROP TABLE IF EXISTS [dbo].[Users]

DROP TABLE IF EXISTS [dbo].[EllipsesKit]
DROP TABLE IF EXISTS [dbo].[Polygons]
DROP TABLE IF EXISTS [dbo].[Ellipses]
DROP TABLE IF EXISTS [dbo].[Circles]
DROP TABLE IF EXISTS [dbo].[Curved]
DROP TABLE IF EXISTS [dbo].[Shapes]
DROP TABLE IF EXISTS [dbo].[ShapesTPH]
DROP TABLE IF EXISTS [dbo].[ShapeOptions]

DROP TABLE IF EXISTS [dbo].[BlackList]

DROP FUNCTION IF EXISTS [dbo].[df_GetAge]
DROP PROCEDURE IF EXISTS [dbo].[sp_AddSupplier]
DROP PROCEDURE IF EXISTS [dbo].[sp_GetInvoices]
DROP PROCEDURE IF EXISTS [dbo].[sp_GetCountAddresses]
DROP PROCEDURE IF EXISTS [dbo].[sp_GetCountAddress]
DROP PROCEDURE IF EXISTS [dbo].[sp_GetInvoice]
DROP PROCEDURE IF EXISTS [dbo].[sp_GetInvoicesAmount]

CREATE TABLE [dbo].[Customers](
	[CUS_Id] [int] IDENTITY(1,1) NOT NULL,
	[CUS_FirstName] [varchar](50) NOT NULL,
	[CUS_LastName] [varchar](50) NOT NULL,
	[CUS_Email] [varchar](50) NOT NULL,
	[CUS_TaxCode] [varchar](50) NOT NULL,
	[CUS_IsActive] [bit] NOT NULL,
	[CUS_BirthDate] [date] NOT NULL,
	[CUS_DeathDate] [date] NULL,
	[CUS_Points] [int] NOT NULL,
	[CUS_CreationDate] [datetime] NOT NULL
CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CUS_Id] ASC)) ON [PRIMARY]


CREATE TABLE [dbo].[Countries](
	[COU_Id] [int] IDENTITY(1,1) NOT NULL,
	[COU_Name] [varchar](50) NOT NULL,
CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED ([COU_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Countries] ADD UNIQUE NONCLUSTERED ([COU_Name])


CREATE TABLE [dbo].[Addresses](
	[ADR_Id] [int] IDENTITY(1,1) NOT NULL,
	[ADR_Street] [varchar](50) NOT NULL,
	[ADR_PostalCode] [varchar](50) NULL,
	[ADR_City] [varchar](50) NOT NULL,
	[ADR_IsMain] [bit] NOT NULL,
	[COU_Id] [int] NOT NULL,
	[CUS_Id] [int] NOT NULL
CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED ([ADR_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Addresses] ADD CONSTRAINT [FK_Addresses_Countries] FOREIGN KEY([COU_Id]) REFERENCES [dbo].[Countries] ([COU_Id])
ALTER TABLE [dbo].[Addresses] ADD CONSTRAINT [FK_Addresses_Customers] FOREIGN KEY([CUS_Id]) REFERENCES [dbo].[Customers] ([CUS_Id])


CREATE TABLE [dbo].[Invoices](
	[INV_Id] [int] IDENTITY(1,1) NOT NULL,
	[INV_Number] [varchar](50) NOT NULL,
	[INV_Date] [date] NOT NULL,
	[INV_IsPaid] bit NOT NULL,
	[CUS_Id] [int] NOT NULL
CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED ([INV_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Invoices] ADD CONSTRAINT [FK_Invoices_Customers] FOREIGN KEY([CUS_Id]) REFERENCES [dbo].[Customers] ([CUS_Id])


CREATE TABLE [dbo].[InvoiceLines](
	[ILI_Id] [int] IDENTITY(1,1) NOT NULL,
	[ILI_Concept] [varchar](50) NOT NULL,
	[ILI_Amount] money NOT NULL,
	[INV_Id] [int] NOT NULL
CONSTRAINT [PK_InvoiceLines] PRIMARY KEY CLUSTERED ([ILI_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[InvoiceLines] ADD CONSTRAINT [FK_InvoiceLines_Invoices] FOREIGN KEY([INV_Id]) REFERENCES [dbo].[Invoices] ([INV_Id])


CREATE TABLE [dbo].[Users](
	[USR_Id] [int] IDENTITY(1,1) NOT NULL,
	[USR_FullName] [varchar](50) NOT NULL,
	[USR_Username] [varchar](50) NOT NULL,
	[USR_Settings] varchar(max) NULL,
	[USR_IsActive] char(1) NOT NULL
CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([USR_Id] ASC)) ON [PRIMARY]


CREATE TABLE [dbo].[Suppliers](
	[SUP_Id] [int] IDENTITY(1,1) NOT NULL,
	[SUP_Name] [varchar](50) NOT NULL,
	[SUP_Email] [varchar](50) NOT NULL,
	[SUP_TaxCode] [varchar](50) NOT NULL
CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SUP_Id] ASC)) ON [PRIMARY]


CREATE TABLE [dbo].[ShapeOptions](
	[SHO_Id] [int] IDENTITY(1,1) NOT NULL,
	[SHO_BackgroundColor] [varchar](50) NOT NULL,
	[SHO_OutlineColor] [varchar](50) NOT NULL,
CONSTRAINT [PK_ShapeOptions] PRIMARY KEY CLUSTERED ([SHO_Id] ASC)) ON [PRIMARY]


CREATE TABLE [dbo].[Shapes](
	[SHA_Id] [int] IDENTITY(1,1) NOT NULL,
	[SHA_Name] [varchar](50) NOT NULL,
	[SHO_Id] int NOT NULL,
CONSTRAINT [PK_Shapes] PRIMARY KEY CLUSTERED ([SHA_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Shapes] ADD CONSTRAINT [FK_Shapes_ShapesOptions] FOREIGN KEY([SHO_Id]) REFERENCES [dbo].[ShapeOptions] ([SHO_Id])


CREATE TABLE [dbo].[Polygons](
	[POL_Id] [int] NOT NULL,
	[POL_Angle] decimal NOT NULL,
	[POL_Length] decimal NOT NULL,
CONSTRAINT [PK_Polygons] PRIMARY KEY CLUSTERED ([POL_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Polygons] ADD CONSTRAINT [FK_Polygons_Shapes] FOREIGN KEY([POL_Id]) REFERENCES [dbo].[Shapes] ([SHA_Id])


CREATE TABLE [dbo].[Curved](
	[CUR_Id] [int] NOT NULL,
	[CUR_Radius] decimal NOT NULL,
CONSTRAINT [PK_Curved] PRIMARY KEY CLUSTERED ([CUR_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Curved] ADD CONSTRAINT [FK_Curved_Shapes] FOREIGN KEY([CUR_Id]) REFERENCES [dbo].[Shapes] ([SHA_Id])

CREATE TABLE [dbo].[Circles](
	[CIR_Id] [int] NOT NULL,
CONSTRAINT [PK_Circles] PRIMARY KEY CLUSTERED ([CIR_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Circles] ADD CONSTRAINT [FK__Circles_Curved] FOREIGN KEY([CIR_Id]) REFERENCES [dbo].[Curved] ([CUR_Id])

CREATE TABLE [dbo].[Ellipses](
	[ELL_Id] [int] NOT NULL,
	[ELL_Radius2] decimal NOT NULL,
CONSTRAINT [PK_Ellipses] PRIMARY KEY CLUSTERED ([ELL_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Ellipses] ADD CONSTRAINT [FK__Ellipses_Curved] FOREIGN KEY([ELL_Id]) REFERENCES [dbo].[Curved] ([CUR_Id])

CREATE TABLE [dbo].[EllipsesKit](
	[ELK_Id] [int] IDENTITY(1,1) NOT NULL,
	[ELK_Name] [varchar](50) NOT NULL,
	[ELL_Id1] int NOT NULL,
	[ELL_Id2] int NOT NULL,
	[ELL_Id3] int NOT NULL,
CONSTRAINT [PK_EllipsesKit] PRIMARY KEY CLUSTERED ([ELK_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[EllipsesKit] ADD CONSTRAINT [FK__EllipsesKit_Ellipses1] FOREIGN KEY([ELL_Id1]) REFERENCES [dbo].[Ellipses] ([ELL_Id])
ALTER TABLE [dbo].[EllipsesKit] ADD CONSTRAINT [FK__EllipsesKit_Ellipses2] FOREIGN KEY([ELL_Id2]) REFERENCES [dbo].[Ellipses] ([ELL_Id])
ALTER TABLE [dbo].[EllipsesKit] ADD CONSTRAINT [FK__EllipsesKit_Ellipses3] FOREIGN KEY([ELL_Id3]) REFERENCES [dbo].[Ellipses] ([ELL_Id])

CREATE TABLE [dbo].[ShapesTPH](
	[SHA_Id] [int] IDENTITY(1,1) NOT NULL,
	[SHA_Name] [varchar](50) NOT NULL,
	[SHA_Type] [varchar](50) NOT NULL,
	[SHA_Angle] decimal NULL,
	[SHA_Length] decimal NULL,
	[SHA_Radius] decimal NULL,
	[SHA_Radius2] decimal NULL,
	[SHO_Id] int NOT NULL,
CONSTRAINT [PK_ShapesTPH] PRIMARY KEY CLUSTERED ([SHA_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[ShapesTPH] ADD CONSTRAINT [FK_ShapesTPH_ShapesOptions] FOREIGN KEY([SHO_Id]) REFERENCES [dbo].[ShapeOptions] ([SHO_Id])

CREATE TABLE [dbo].[Companies](
	[COM_Id] [uniqueidentifier] NOT NULL,
	[COM_Name] [varchar](50) NOT NULL,
	[COM_Logo] [varbinary](MAX) NULL,
CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED ([COM_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Companies] ADD UNIQUE NONCLUSTERED ([COM_Name])

CREATE TABLE [dbo].[Departments](
	[DEP_Id] [int] IDENTITY(1,1) NOT NULL,
	[DEP_Name] [varchar](50) NOT NULL,
	[COM_Id] [uniqueidentifier] NOT NULL,
CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([DEP_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED ([DEP_Name])
ALTER TABLE [dbo].[Departments] ADD CONSTRAINT [FK_Departments_Companies] FOREIGN KEY([COM_Id]) REFERENCES [dbo].[Companies] ([COM_Id])

CREATE TABLE [dbo].[Employees](
	[EMP_Id] [int] IDENTITY(1,1) NOT NULL,
	[EMP_FullName] [varchar](50) NOT NULL,
	[EMP_Email] [varchar](50) NOT NULL,
	[EMP_PhoneNumber] [varchar](50) NOT NULL,
	[DEP_Id] [int] NOT NULL,
CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EMP_Id] ASC)) ON [PRIMARY]
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DEP_Id]) REFERENCES [dbo].[Departments] ([DEP_Id])

CREATE TABLE [dbo].[BlackList](
	[BLL_Year] INT NOT NULL,
	[BLL_Email] [varchar](50) NOT NULL,
	[BLL_Amount] money NOT NULL
CONSTRAINT [PK_BlackList] PRIMARY KEY CLUSTERED ([BLL_Year] ASC, [BLL_Email] ASC)) ON [PRIMARY]

--BLOCK
CREATE FUNCTION [dbo].[df_GetAge] 
(
	@birthDate AS datetime,
	@deathDate AS datetime
)
RETURNS int
AS
BEGIN
	DECLARE @age int = NULL
		
	IF (@birthDate IS NULL)
		RETURN NULL
	
	SELECT @age = DATEDIFF(year, @birthDate, COALESCE(@deathDate, GETDATE()))
			
	RETURN @age		
END

--BLOCK
CREATE PROCEDURE [dbo].[sp_AddSupplier]
	@name as varchar(50),
	@taxCode as varchar(50),
	@email as varchar(50)
AS
BEGIN
	INSERT INTO [dbo].[Suppliers]([SUP_Name], [SUP_Email], [SUP_TaxCode]) VALUES(@name, @taxCode, @email);
END

--BLOCK
CREATE PROCEDURE [dbo].[sp_GetInvoices]
	@pageNumber as int,
	@pageSize as int	
AS
BEGIN
	SELECT [INV_Id] AS Id, [INV_Number] AS [Number], [INV_Date] as [Date], 
		[CUS_TaxCode] AS [TaxCode], [CUS_Email] AS [Email]
	FROM [dbo].[Invoices] i
		INNER JOIN [dbo].[Customers] c ON [c].[CUS_Id] = [i].[CUS_Id]
	ORDER BY [i].[CUS_Id]
	OFFSET ((@pageNumber - 1) * @pageSize)  ROWS FETCH NEXT @pageSize ROWS ONLY
END

--BLOCK
CREATE PROCEDURE [dbo].[sp_GetCountAddresses]
	@pageNumber as int,
	@pageSize as int	
AS
BEGIN
	SELECT [a].[CUS_Id] AS [CustomerId], [c].[CUS_Email] AS [CustomerEmail], COUNT(*) AS [AddressesCount]
	FROM [dbo].[Addresses] [a]
		INNER JOIN [dbo].[Customers] [c] ON [c].[CUS_Id] = [a].[CUS_Id]
	GROUP BY [a].[CUS_Id], [c].[CUS_Email]
	ORDER BY [a].[CUS_Id]
	OFFSET ((@pageNumber - 1) * @pageSize)  ROWS FETCH NEXT @pageSize ROWS ONLY
END

--BLOCK
CREATE PROCEDURE [dbo].[sp_GetInvoice]
	@id as int
AS
BEGIN
	SELECT [INV_Id] AS Id, [INV_Number] AS [Number], [INV_Date] as [Date], 
		[CUS_TaxCode] AS [TaxCode], [CUS_Email] AS [Email]
	FROM [dbo].[Invoices] i
		INNER JOIN [dbo].[Customers] c ON [c].[CUS_Id] = [i].[CUS_Id]
	WHERE [INV_Id] = @id
END

--BLOCK
CREATE PROCEDURE [dbo].[sp_GetCountAddress]
	@id as int
AS
BEGIN
	SELECT [a].[CUS_Id] AS [CustomerId], [c].[CUS_Email] AS [CustomerEmail], COUNT(*) AS [AddressesCount]
	FROM [dbo].[Addresses] [a]
		INNER JOIN [dbo].[Customers] [c] ON [c].[CUS_Id] = [a].[CUS_Id]
	WHERE [a].[CUS_Id] = @id
	GROUP BY [a].[CUS_Id], [c].[CUS_Email]	
END

--BLOCK
CREATE PROCEDURE [dbo].[sp_GetInvoicesAmount]
AS
BEGIN
	SELECT SUM([ILI_Amount])
	FROM [dbo].[InvoiceLines]
END




