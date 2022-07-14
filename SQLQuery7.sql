USE [Data program]
GO

/****** Object:  Table [dbo].[Contracts]    Script Date: 7/12/2022 2:56:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('tempdb..Contracts') IS NOT NULL

CREATE TABLE [dbo].[Contracts](
	[Cont_ID] [int] NOT NULL UNIQUE,
	[Name] [varchar](max) NULL,
	[Type] [varchar](max) NULL,
	[PipeStatus] [varchar](max) NULL,
	[Res_Count] [int] NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
 CONSTRAINT [PK_Contracts] PRIMARY KEY CLUSTERED 
(
	[Cont_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SELECT * FROM Contracts;