SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE   PROCEDURE [dbo].[GetAllWidgets]
AS
BEGIN
	SELECT Cen_Reg_Num,
		RecordID,
           Description 
	FROM Widgets
END
GO
