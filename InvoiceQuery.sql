USE [Data program]
GO

/****** Object:  Table [dbo].[Invoice]    Script Date: 7/26/2022 10:17:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
IF OBJECT_ID('tempdb..Roles') IS NOT NULL

CREATE TABLE [dbo].[Invoice](
	[Inv_ID] [int] NOT NULL UNIQUE,
	[Cont_ID] [int] NOT NULL FOREIGN KEY REFERENCES Contracts(Cont_ID),
	[Inv_Month] [int] NULL,
	[Inv_Amt] [int] NULL,
	[Inv_Date] [nchar](10) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[Inv_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

Select * FROM Invoice;
