ALTER TABLE [dbo].[FactFootballTeamScore]  DROP  CONSTRAINT [FK_FactFootballTeamScore_dates]
GO

ALTER TABLE [dbo].[FactFootballTeamScore] DROP CONSTRAINT [FK_FactFootballTeamScore_football_location]
GO

ALTER TABLE [dbo].[FactFootballTeamScore] DROP CONSTRAINT [FK_FactFootballTeamScore_home_team]
GO

ALTER TABLE [dbo].[FactFootballTeamScore] DROP CONSTRAINT [FK_FactFootballTeamScore_away_team]
GO

ALTER TABLE [dbo].[FactFootballTeamScore] DROP CONSTRAINT [FK_FactFootballTeamScore_football_tournament]
GO


TRUNCATE TABLE [dbo].[dates];
TRUNCATE TABLE [dbo].[FactFootballTeamScore];
TRUNCATE TABLE [dbo].[football_location];
TRUNCATE TABLE [dbo].[football_hometeam];
TRUNCATE TABLE [dbo].[football_awayteam];
TRUNCATE TABLE [dbo].[football_tournament];
GO

ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_dates] FOREIGN KEY
([date_id])
REFERENCES [dbo].[dates] ([date_id])
GO
ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_dates]
GO


ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_football_location] FOREIGN KEY 
([football_location_id])
REFERENCES [dbo].[football_location] ([football_location_id])
GO
ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_football_location]
GO


ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_football_tournament] FOREIGN KEY
([football_tournament_id])
REFERENCES  [dbo].[football_tournament]([football_tournament_id])
GO
ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_football_tournament]
GO

ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_home_team] FOREIGN KEY
([home_team_id])
REFERENCES [dbo].[football_hometeam] ([football_hometeam_id])
GO
ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_home_team]
GO


ALTER TABLE [dbo].[FactFootballTeamScore]  WITH CHECK ADD  CONSTRAINT [FK_FactFootballTeamScore_away_team] FOREIGN KEY
([away_team_id])
REFERENCES [dbo].[football_awayteam] ([football_awayteam_id])
GO
ALTER TABLE [dbo].[FactFootballTeamScore] CHECK CONSTRAINT [FK_FactFootballTeamScore_away_team]
GO
