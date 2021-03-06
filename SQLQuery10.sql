USE [Data program]
GO

/****** Object:  Table [dbo].[WBS]    Script Date: 7/12/2022 2:57:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('tempdb..WBS') IS NOT NULL
CREATE TABLE [dbo].[WBS](
	[WBS_ID] [int] NOT NULL UNIQUE,
	[Cont_ID] [int] NOT NULL UNIQUE FOREIGN KEY REFERENCES Contracts(Cont_ID),
	[WBS] [varchar](max) NULL,
	[Loc_ID] [int] NULL,
 CONSTRAINT [PK_WBS] PRIMARY KEY CLUSTERED 
(
	[WBS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SELECT * FROM WBS;

