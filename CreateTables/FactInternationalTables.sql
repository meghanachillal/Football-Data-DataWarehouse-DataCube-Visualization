USE [international_footballResults]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactFootballTeamScore](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[football_location_id] [int] NOT NULL,
	[date_id] [int] NOT NULL,
	[home_team_id] [int] NOT NULL,
	[away_team_id] [int] NOT NULL,
	[hometeam_score] [int] NULL,
	[awayteam_score] [int] NULL,
	[football_tournament_id] [int] NOT NULL
 CONSTRAINT [PK_FootballTeamScore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/*** FOREIGN KEY FOR dates tables ***/
ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_dates] FOREIGN KEY([date_id])
REFERENCES [dbo].[dates] ([date_id])
GO

ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_dates]
GO

/*** FOREIGN KEY FOR football_location tables ***/
ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_football_location] FOREIGN KEY([football_location_id])
REFERENCES [dbo].[football_location] ([football_location_id])
GO

ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_football_location]
GO


/*** FOREIGN KEY FOR football_tournament tables ***/
ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_football_tournament] FOREIGN KEY([football_tournament_id])
REFERENCES [dbo].[football_tournament] ([football_tournament_id])
GO

ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_football_tournament]
GO


/*** FOREIGN KEY FOR home football_team tables ***/
ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_home_team] FOREIGN KEY([home_team_id])
REFERENCES [dbo].[football_hometeam] ([football_hometeam_id])
GO

ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_home_team]
GO


/*** FOREIGN KEY FOR away football_team tables ***/
ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_away_team] FOREIGN KEY([away_team_id])
REFERENCES [dbo].[football_awayteam] ([football_awayteam_id])
GO

ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_away_team]
GO


