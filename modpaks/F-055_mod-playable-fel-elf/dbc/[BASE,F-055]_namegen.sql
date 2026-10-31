-- namegen: the random names of @FelElfKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @FelElf;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @FelElf, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @FelElfKin ORDER BY `id`) AS `kin`;
