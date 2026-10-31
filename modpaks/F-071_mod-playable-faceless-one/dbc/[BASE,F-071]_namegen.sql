-- namegen: the random names of @FacelessOneKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @FacelessOne;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @FacelessOne, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @FacelessOneKin ORDER BY `id`) AS `kin`;
