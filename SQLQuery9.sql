USE [Data program]
GO

/****** Object:  Table [dbo].[Roles]    Script Date: 7/12/2022 2:57:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('tempdb..Roles') IS NOT NULL

CREATE TABLE [dbo].[Roles](
	[Role_ID] [int] NOT NULL UNIQUE,
	[Cont_ID] [int] NOT NULL UNIQUE FOREIGN KEY REFERENCES Contracts(Cont_ID),
	[Role_Name] [varchar](max) NULL,
	[Price] [int] NULL,
	[Status] [varchar](max) NULL,
	[Loc_ID] [int] NULL,
	[Start_Date] [date] NULL,
	[End_Date] [date] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SELECT * FROM ROLES;
