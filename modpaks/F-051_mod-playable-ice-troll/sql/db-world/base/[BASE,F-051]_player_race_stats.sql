-- Stats of @IceTrollHome
DELETE FROM `player_race_stats` WHERE `Race` = @IceTroll;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @IceTroll, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @IceTrollHome) AS `home`;
