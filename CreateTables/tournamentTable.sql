USE [international_footballResults]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[football_tournament](
	[football_tournament_id] [int] IDENTITY(1,1) NOT NULL,
	[football_tournament] [varchar](255) NULL,
 CONSTRAINT [PK_football_tournament] PRIMARY KEY CLUSTERED 
(
	[football_tournament_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO