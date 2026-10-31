-- namegen: the random names of @ForestTrollKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @ForestTroll;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @ForestTroll, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @ForestTrollKin ORDER BY `id`) AS `kin`;
