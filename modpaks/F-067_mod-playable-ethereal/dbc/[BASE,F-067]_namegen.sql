-- namegen: the random names of @EtherealKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Ethereal;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Ethereal, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @EtherealKin ORDER BY `id`) AS `kin`;
