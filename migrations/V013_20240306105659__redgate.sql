SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping [dbo].[Socials]'
GO
DROP TABLE [dbo].[Socials]
GO
PRINT N'Dropping [dbo].[HuxTest]'
GO
DROP TABLE [dbo].[HuxTest]
GO
PRINT N'Altering [dbo].[Widgets]'
GO
ALTER TABLE [dbo].[Widgets] ADD
[RedgateID] [nchar] (10) NULL
GO
PRINT N'Refreshing [dbo].[CurrentPrices]'
GO
EXEC sp_refreshview N'[dbo].[CurrentPrices]'
GO
PRINT N'Creating [dbo].[OctoAddress]'
GO
CREATE TABLE [dbo].[OctoAddress]
(
[FirstName] [nchar] (10) NULL,
[LastName] [nchar] (10) NULL,
[OctopusID] [nchar] (10) NULL,
[OctopusAccount] [nchar] (10) NULL
)
GO

