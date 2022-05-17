CREATE TABLE [dbo].[Customers](
	[CUS_Id] [int] IDENTITY(1,1) NOT NULL,
	[CUS_FirstName] [varchar](50) NOT NULL,
	[CUS_LastName] [varchar](50) NOT NULL,
	[CUS_Email] [varchar](50) NOT NULL,
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
