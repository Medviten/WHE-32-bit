-- namegen: the random names of @AllianceSkyborneKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @AllianceSkyborne;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @AllianceSkyborne, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @AllianceSkyborneKin ORDER BY `id`) AS `kin`;
