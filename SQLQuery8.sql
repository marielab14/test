USE [Data program]
GO

/****** Object:  Table [dbo].[Resources]    Script Date: 7/12/2022 2:57:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('tempdb..Resources') IS NOT NULL

CREATE TABLE [dbo].[Resources](
	[Res_ID] [int] NOT NULL,
	[WBS_ID] [int] NULL FOREIGN KEY REFERENCES WBS(WBS_ID),
	[Role_ID] [int] NULL FOREIGN KEY REFERENCES Roles(Role_ID),
	[Name] [varchar](max) NULL,
	[Ent_ID] [varchar](max) NULL,
	[LCR] [varchar](max) NULL,
	[CLevel] [int] NULL,
	[Gender] [varchar](max) NULL,
	[MU] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[Source] [varchar](max) NULL,
	[Join_Date] [date] NULL,
	[Current_Contract] [varchar](max) NULL,
	[Prev_Contract] [varchar](max) NULL,
	[Speciality] [varchar](max) NULL,
	[Status] [varchar](max) NULL,
 CONSTRAINT [PK_Resources] PRIMARY KEY CLUSTERED 
(
	[Res_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
Go

SELECT * FROM Resources;
