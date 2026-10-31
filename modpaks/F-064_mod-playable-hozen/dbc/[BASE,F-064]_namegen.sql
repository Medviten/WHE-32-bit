-- namegen: the random names of @HozenKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Hozen;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Hozen, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @HozenKin ORDER BY `id`) AS `kin`;
