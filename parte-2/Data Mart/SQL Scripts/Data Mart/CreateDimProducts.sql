IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProducts')

	CREATE TABLE [dbo].[DimProducts](
		[ProductKey] [int] IDENTITY(1,1) NOT NULL,
		[ProductID] [nvarchar](25) NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[FinishedGoodsFlag] [bit] NOT NULL,
		[Color] [nvarchar](15) NOT NULL,
		[SafetyStockLevel] [smallint] NOT NULL,
		[ReorderPoint] [smallint] NOT NULL,
		[StandardCost] [money] NOT NULL,
		[ListPrice] [money] NOT NULL,
		[Size] [nvarchar](5) NOT NULL,
		[Weight] [decimal](8,2) NOT NULL,
		[DaysToManufacture] [int] NOT NULL,
		[ProductLine] [nvarchar](10) NOT NULL,
		[Class] [nvarchar](10) NOT NULL,
		[Style] [nvarchar](10) NOT NULL,
		[WeightUnitMeasureName] [nvarchar](50) NOT NULL,
		[SizeUnitMeasureName] [nvarchar](50) NOT NULL,
		[SubCategoryName] [nvarchar](50) NOT NULL,
		[CategoryName] [nvarchar](50) NOT NULL,
		[SellStartDate] [datetime] NOT NULL,
		[SellEndDate] [datetime] NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[IsCurrent] [nvarchar](3) NOT NULL		
		CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
