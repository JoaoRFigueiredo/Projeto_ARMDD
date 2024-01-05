IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSalesPersons')
	CREATE TABLE [dbo].[DimSalesPersons](
		[SalesPersonKey] [int] IDENTITY(1,1) NOT NULL,
		[BusinessEntityID] [int] NOT NULL,
		[SalesQuota] [money] NOT NULL,
		[Bonus] [money] NOT NULL,
		[ComissionPct] [smallmoney] NOT NULL,
		[SalesYTD] [money] NOT NULL,
		[SalesLastYear] [int] NOT NULL,
		[NationalIDNumber] [nvarchar] (15) NOT NULL,
		[LoginID] [nvarchar] (256) NOT NULL,
		[JobTitle] [nvarchar] (50) NOT NULL,
		[BirthDate] [datetime] NOT NULL,
		[MaritalStatus] [nchar] (1) NOT NULL,
		[Gender] [nchar] (1) NOT NULL,
		[HireDate] [datetime] NOT NULL,
		[SalariedFlag] [bit] NOT NULL,
		[VacationHours] [smallint] NOT NULL,
		[SickLeaveHours] [smallint] NOT NULL,
		[PersonType] [nvarchar] (20) NOT NULL,
		[Title] [nvarchar] (8) NOT NULL,
		[FirstName] [nvarchar] (50) NOT NULL,
		[MiddleName] [nvarchar] (50) NOT NULL,
		[LastName] [nvarchar] (50) NOT NULL,
		[CreatedDate] [datetime] NOT NULL,
		[ModifiedDate] [datetime] NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[Is_Current] [nvarchar] (3) NOT NULL
		CONSTRAINT [PK_DimStore] PRIMARY KEY CLUSTERED 
	(
		[SalesPersonKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

