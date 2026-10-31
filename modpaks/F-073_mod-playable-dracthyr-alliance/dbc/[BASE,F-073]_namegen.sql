-- namegen: the random names of @AllianceDracthyrKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @AllianceDracthyr;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @AllianceDracthyr, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @AllianceDracthyrKin ORDER BY `id`) AS `kin`;
