-- namegen: the random names of @ArakkoaKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Arakkoa;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Arakkoa, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @ArakkoaKin ORDER BY `id`) AS `kin`;
