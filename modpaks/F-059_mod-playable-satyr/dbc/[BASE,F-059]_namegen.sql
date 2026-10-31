-- namegen: the random names of @SatyrKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Satyr;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Satyr, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @SatyrKin ORDER BY `id`) AS `kin`;
