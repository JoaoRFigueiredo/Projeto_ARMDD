IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCurrency')
	CREATE TABLE [dbo].[DimCurrency](
		[CurrencyKey] [int] IDENTITY(1,1) NOT NULL,
		[CurrencyCode] [nchar] (3) NOT NULL,
		[Name] [nvarchar] (50) NOT NULL,
		[CreatedDate] [datetime] NOT NULL,
		[ModifiedDate] [datetime] NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[Is_Current] [nchar] (3) NOT NULL,

		CONSTRAINT [PK_DimCurrency] PRIMARY KEY CLUSTERED 
	(
		[CurrencyKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

