-- namegen: the random names of @HordeDracthyrKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @HordeDracthyr;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @HordeDracthyr, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @HordeDracthyrKin ORDER BY `id`) AS `kin`;
