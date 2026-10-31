-- namegen: the random names of @GnollKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Gnoll;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Gnoll, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @GnollKin ORDER BY `id`) AS `kin`;
