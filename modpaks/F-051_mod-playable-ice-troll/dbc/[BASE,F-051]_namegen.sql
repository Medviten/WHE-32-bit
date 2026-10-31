-- namegen: the random names of @IceTrollKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @IceTroll;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @IceTroll, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @IceTrollKin ORDER BY `id`) AS `kin`;
