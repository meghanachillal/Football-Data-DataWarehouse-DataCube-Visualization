USE [international_footballResults]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dates](
	[date_id] [int] IDENTITY(1,1) NOT NULL,
	[year] [varchar](255) NULL,
	[month] [varchar](255) NULL,
	[day] [varchar](255) NULL,
	[date] [varchar](255) NULL,
 CONSTRAINT [PK_dates] PRIMARY KEY CLUSTERED 
(
	[date_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


