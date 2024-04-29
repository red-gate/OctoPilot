SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE   PROCEDURE [dbo].[GetAllWidgets]
AS
BEGIN
--comment
	SELECT RecordID,
           Description,
		   color	
	FROM Widgets
END
GO
