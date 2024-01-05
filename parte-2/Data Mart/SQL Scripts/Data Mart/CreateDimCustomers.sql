IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomers')
BEGIN
	CREATE TABLE [dbo].[DimCustomers](
		[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
		[PersonType] [nvarchar](20) NOT NULL,
		[Title] [nvarchar](8) NOT NULL,
		[FirstName] [nvarchar](50) NOT NULL,
		[MiddleName] [nvarchar](50) NOT NULL,
		[LastName] [nvarchar](50) NOT NULL,
		[CreatedDate] [datetime] NOT NULL,
		[ModifiedDate] [datetime] NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL,
		[IsCurrent] [nvarchar](3) NOT NULL		
	CONSTRAINT [PK_DimCustomers] PRIMARY KEY CLUSTERED 
	(
		[CustomerKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [NonClusteredIndex-CustomerKey] ON [dbo].[DimCustomers]
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
END

