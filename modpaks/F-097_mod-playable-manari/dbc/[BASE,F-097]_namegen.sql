-- namegen: the random names of @ManariKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Manari;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Manari, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @ManariKin ORDER BY `id`) AS `kin`;
