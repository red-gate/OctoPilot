SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Widgets]'
GO
ALTER TABLE [dbo].[Widgets] ADD
[Cen_Reg_Num] [nchar] (10) NULL
GO
PRINT N'Altering [dbo].[GetAllWidgets]'
GO

ALTER   PROCEDURE [dbo].[GetAllWidgets]
AS
BEGIN
	SELECT Cen_Reg_Num,
		RecordID,
           Description 
	FROM Widgets
END
GO
PRINT N'Refreshing [dbo].[CurrentPrices]'
GO
EXEC sp_refreshview N'[dbo].[CurrentPrices]'
GO
PRINT N'Creating [dbo].[WidgetBookSupply]'
GO
CREATE TABLE [dbo].[WidgetBookSupply]
(
[BookSupplyID] [nchar] (10) NOT NULL
)
GO
PRINT N'Creating primary key [PK_WidgetBookSupply] on [dbo].[WidgetBookSupply]'
GO
ALTER TABLE [dbo].[WidgetBookSupply] ADD CONSTRAINT [PK_WidgetBookSupply] PRIMARY KEY CLUSTERED ([BookSupplyID])
GO

