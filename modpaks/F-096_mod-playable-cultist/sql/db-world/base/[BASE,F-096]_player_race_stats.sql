-- Stats of @CultistHome
DELETE FROM `player_race_stats` WHERE `Race` = @Cultist;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Cultist, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @CultistHome) AS `home`;
