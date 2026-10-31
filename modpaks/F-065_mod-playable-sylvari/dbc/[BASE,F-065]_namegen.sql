-- namegen: the random names of @SylvariKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Sylvari;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Sylvari, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @SylvariKin ORDER BY `id`) AS `kin`;
