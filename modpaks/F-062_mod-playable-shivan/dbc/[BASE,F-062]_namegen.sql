-- namegen: the random names of @ShivanKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Shivan;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Shivan, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @ShivanKin ORDER BY `id`) AS `kin`;
