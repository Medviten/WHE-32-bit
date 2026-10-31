-- namegen: the random names of @VenthyrKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Venthyr;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Venthyr, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @VenthyrKin ORDER BY `id`) AS `kin`;
