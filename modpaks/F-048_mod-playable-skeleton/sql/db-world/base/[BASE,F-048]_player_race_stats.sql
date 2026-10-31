-- Stats of @SkeletonHome
DELETE FROM `player_race_stats` WHERE `Race` = @Skeleton;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @Skeleton, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @SkeletonHome) AS `home`;
