SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Clients]'
GO
ALTER TABLE [dbo].[Clients] ADD
[Twitter] [nchar] (10) NULL
GO
PRINT N'Creating [dbo].[huxSP]'
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO
CREATE PROCEDURE [dbo].[huxSP]
    @parameter_name AS INT
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
BEGIN
    SELECT * FROM dbo.Clients
END
GO
PRINT N'Creating [dbo].[Huxley]'
GO
CREATE TABLE [dbo].[Huxley]
(
[ID] [int] NOT NULL,
[Abbreviation] [nvarchar] (5) NOT NULL,
[Name] [nvarchar] (100) NOT NULL,
[Twitter] [nchar] (10) NULL
)
GO

