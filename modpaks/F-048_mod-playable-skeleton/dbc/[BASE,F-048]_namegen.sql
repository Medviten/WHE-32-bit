-- namegen: the random names of @SkeletonKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @Skeleton;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @Skeleton, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @SkeletonKin ORDER BY `id`) AS `kin`;
