-- Stats of @EtherealHome
DELETE FROM `player_race_stats` WHERE `Race` = @Ethereal;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Ethereal, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @EtherealHome) AS `home`;
