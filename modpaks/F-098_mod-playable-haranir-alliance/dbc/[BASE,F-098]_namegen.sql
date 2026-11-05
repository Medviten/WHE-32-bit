-- namegen: the random names of @AllianceHaranirKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @AllianceHaranir;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @AllianceHaranir, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @AllianceHaranirKin ORDER BY `id`) AS `kin`;
