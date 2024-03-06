SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping [dbo].[OctoAddress]'
GO
DROP TABLE [dbo].[OctoAddress]
GO
PRINT N'Altering [dbo].[Widgets]'
GO
ALTER TABLE [dbo].[Widgets] DROP
COLUMN [RedgateID]
GO
PRINT N'Refreshing [dbo].[CurrentPrices]'
GO
EXEC sp_refreshview N'[dbo].[CurrentPrices]'
GO
PRINT N'Creating [dbo].[HuxTest]'
GO
CREATE TABLE [dbo].[HuxTest]
(
[Hux] [nchar] (10) NULL,
[Test] [nchar] (10) NULL
)
GO
PRINT N'Creating [dbo].[Socials]'
GO
CREATE TABLE [dbo].[Socials]
(
[Twitter] [nchar] (10) NULL,
[Handle] [nchar] (10) NULL,
[Age] [nchar] (10) NULL
)
GO

