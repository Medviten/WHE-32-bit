-- namegen: the random names of @KyrianKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Kyrian;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Kyrian, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @KyrianKin ORDER BY `id`) AS `kin`;
