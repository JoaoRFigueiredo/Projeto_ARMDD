IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactSales')
BEGIN
	CREATE TABLE [dbo].[FactSales](
		[ProductKey] [int] NOT NULL,
		[OrderDateKey] [int] NOT NULL,
		[CustomerKey] [int] NOT NULL,
		[DueDateKey] [int] NOT NULL,
		[SalesPersonKey] [int] NOT NULL,
		[ShipMethodKey] [int] NOT NULL,
		[TerritoryKey] [int] NOT NULL,
		[CurrencyKey] [int] NOT NULL,
		[ShipDateKey] [int] NOT NULL,
		[BillToAddressKey] [int] NOT NULL,
		[ShipToAddressKey] [int] NOT NULL,
		[SalesOrderDetailID] [int] NOT NULL,
		[SalesOrderID] [int] NOT NULL,
		[OrderQty] [smallint] NOT NULL,
		[UnitPriceLocal] [money] NOT NULL,
		[UnitPriceStandard] [money] NOT NULL,
		[UnitPriceDiscountLocal] [money] NOT NULL,
		[UnitPriceDiscountStandard] [money] NOT NULL,
		[LineTotalLocal] [numeric] (38,6) NOT NULL,
		[LineTotalStandard] [numeric] (38,6) NOT NULL,
		CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED 
		(
			[ProductKey] ASC,
			[OrderDateKey] ASC,
			[CustomerKey] ASC
		) ON [PRIMARY]
	) ON [PRIMARY]
END;
