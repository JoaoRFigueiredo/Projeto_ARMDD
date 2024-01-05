IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSalesTerritories')
	CREATE TABLE [dbo].[DimSalesTerritories](
		[TerritoryKey] [int] IDENTITY(1,1) NOT NULL,
		[TerritoryID] [int] NOT NULL,
		[TerritoryName] [nvarchar](50) NOT NULL,	
		[Group] [nvarchar](50) NOT NULL,	
		[SalesYTD] [money] NOT NULL,
		[SalesLastYear] [money] NOT NULL,
		[CountryRegionName] [nvarchar](50) NOT NULL,	
		[CreatedDate] [datetime] NOT NULL,	
		[ModifiedDate] [datetime] NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,	
		[ExpiredDate] [datetime] NULL,
		[Is_Current] [nvarchar] (3) NOT NULL,	
		CONSTRAINT [PK_DimSalesTerritories] PRIMARY KEY CLUSTERED 
	(
		[TerritoryKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]