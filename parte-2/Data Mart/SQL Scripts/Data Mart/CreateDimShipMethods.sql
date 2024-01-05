IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimShipMethods')
	CREATE TABLE [dbo].[DimShipMethods](
		[ShipMethodKey] [int] IDENTITY(1,1) NOT NULL,
		[ShipMethodID] [int] NOT NULL,
		[Name] [nvarchar] NOT NULL,
		[ShipBase] [money] NOT NULL,
		[ShipRate] [money] NOT NULL,
		[CreatedDate] [datetime] NOT NULL,
		[ModifiedDate] [datetime] NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[Is_Current] [nvarchar] (3) NOT NULL
		CONSTRAINT [PK_DimShipMethods] PRIMARY KEY CLUSTERED 
	(
		[ShipMethodKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]