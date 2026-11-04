-- namegen: the random names of @CultistKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Cultist;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Cultist, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @CultistKin ORDER BY `id`) AS `kin`;
