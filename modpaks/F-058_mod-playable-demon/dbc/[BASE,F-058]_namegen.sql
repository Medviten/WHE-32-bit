-- namegen: the random names of @DemonKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Demon;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Demon, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @DemonKin ORDER BY `id`) AS `kin`;
