IF NOT EXISTS (SELECT name from sys.tables WHERE name = 'DimAddresses')

	CREATE TABLE [dbo].[DimAddresses](
		[AddressKey] [int] IDENTITY(1,1) NOT NULL,
		[AddressID] [int] NOT NULL,
		[AddressLine] [nvarchar](60) NOT NULL,
		[AddressLine2] [nvarchar](60) NULL,
		[City] [nvarchar](30) NOT NULL,
		[PostalCode] [nvarchar](15) NOT NULL,
		[CountryRegionName] [nvarchar](50) NOT NULL,
		[StateProvinceCode] [nchar](3) NOT NULL,
		[StateProvinceName] [nvarchar](50) NOT NULL,
		[CreatedDate] [datetime] NOT NULL,
		[ModifiedDate] [datetime] NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[Is_Current] [nchar] (3) NOT NULL,

		CONSTRAINT [PK_DimAddress] PRIMARY KEY CLUSTERED 
	(
		[AddressKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
