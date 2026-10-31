-- namegen: the random names of @SlimeGiantKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @SlimeGiant;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @SlimeGiant, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @SlimeGiantKin ORDER BY `id`) AS `kin`;
