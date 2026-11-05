-- namegen: the random names of @HordeHaranirKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @HordeHaranir;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @HordeHaranir, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @HordeHaranirKin ORDER BY `id`) AS `kin`;
