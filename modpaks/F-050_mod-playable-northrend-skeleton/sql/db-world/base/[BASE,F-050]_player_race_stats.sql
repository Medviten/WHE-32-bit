-- Stats of @NorthrendSkeletonHome
DELETE FROM `player_race_stats` WHERE `Race` = @NorthrendSkeleton;
INSERT INTO `player_race_stats` (`Race`, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`)
SELECT @NorthrendSkeleton, `Strength`, `Agility`, `Stamina`, `Intellect`, `Spirit`
FROM (SELECT * FROM `player_race_stats` WHERE `Race` = @NorthrendSkeletonHome) AS `home`;
