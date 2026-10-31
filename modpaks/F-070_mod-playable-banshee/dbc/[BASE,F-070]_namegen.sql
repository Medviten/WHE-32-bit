-- namegen: the random names of @BansheeKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Banshee;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Banshee, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @BansheeKin ORDER BY `id`) AS `kin`;
