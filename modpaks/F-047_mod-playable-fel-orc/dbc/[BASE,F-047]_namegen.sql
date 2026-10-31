-- namegen: the random names of @FelOrcKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @FelOrc;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @FelOrc, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @FelOrcKin ORDER BY `id`) AS `kin`;
