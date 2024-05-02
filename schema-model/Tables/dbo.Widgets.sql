CREATE TABLE [dbo].[Widgets]
(
[RecordID] [int] NOT NULL IDENTITY(1, 1),
[Description] [varchar] (50) NULL,
[Twitter] [varchar] (50) NULL,
[RedgateID] [nchar] (10) NULL,
[Cen_Reg_Num] [int] NULL
)
GO
ALTER TABLE [dbo].[Widgets] ADD CONSTRAINT [PK_Widgets] PRIMARY KEY NONCLUSTERED ([RecordID])
GO
