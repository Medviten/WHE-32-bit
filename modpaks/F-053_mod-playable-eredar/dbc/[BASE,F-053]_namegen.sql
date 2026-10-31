-- namegen: the random names of @EredarKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Eredar;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Eredar, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @EredarKin ORDER BY `id`) AS `kin`;
