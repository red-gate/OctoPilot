CREATE TABLE [dbo].[WidgetBookSupply]
(
[BookSupplyID] [nchar] (10) NOT NULL
)
GO
ALTER TABLE [dbo].[WidgetBookSupply] ADD CONSTRAINT [PK_WidgetBookSupply] PRIMARY KEY CLUSTERED ([BookSupplyID])
GO
