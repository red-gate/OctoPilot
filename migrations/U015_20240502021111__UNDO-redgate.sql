SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[WidgetBookSupply]'
GO
ALTER TABLE [dbo].[WidgetBookSupply] DROP CONSTRAINT [PK_WidgetSupply]
GO
PRINT N'Dropping [dbo].[WidgetBookSupply]'
GO
DROP TABLE [dbo].[WidgetBookSupply]
GO
PRINT N'Altering [dbo].[Widgets]'
GO
ALTER TABLE [dbo].[Widgets] DROP
COLUMN [Cen_Reg_Num]
GO
PRINT N'Refreshing [dbo].[CurrentPrices]'
GO
EXEC sp_refreshview N'[dbo].[CurrentPrices]'
GO
PRINT N'Altering [dbo].[GetAllWidgets]'
GO
ALTER   PROCEDURE [dbo].[GetAllWidgets]
AS
BEGIN
	SELECT RecordID,
           Description 
	FROM Widgets
END
GO

