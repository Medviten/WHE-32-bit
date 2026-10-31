-- namegen: the random names of @MantidKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Mantid;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Mantid, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @MantidKin ORDER BY `id`) AS `kin`;
