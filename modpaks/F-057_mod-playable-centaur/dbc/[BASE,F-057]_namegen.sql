-- namegen: the random names of @CentaurKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Centaur;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Centaur, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @CentaurKin ORDER BY `id`) AS `kin`;
