﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[WidgetPrices]'
GO
ALTER TABLE [dbo].[WidgetPrices] ALTER COLUMN [Price] [money] NULL
GO
PRINT N'Refreshing [dbo].[CurrentPrices]'
GO
EXEC sp_refreshview N'[dbo].[CurrentPrices]'
GO
PRINT N'Creating [dbo].[HuxTest]'
GO
PRINT N'Creating [dbo].[States]'
GO
CREATE TABLE [dbo].[States]
(
[ID] [int] NOT NULL,
[Abbreviation] [nvarchar] (5) NOT NULL,
[Name] [nvarchar] (100) NOT NULL
)
GO
PRINT N'Creating primary key [PK_States] on [dbo].[States]'
GO
ALTER TABLE [dbo].[States] ADD CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED ([ID])
GO

