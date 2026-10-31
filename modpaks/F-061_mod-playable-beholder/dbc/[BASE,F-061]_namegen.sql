-- namegen: the random names of @BeholderKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Beholder;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Beholder, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @BeholderKin ORDER BY `id`) AS `kin`;
