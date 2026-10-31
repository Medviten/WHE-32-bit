-- namegen: the random names of @NorthrendSkeletonKin (kin)

DELETE FROM `namegen` WHERE `race_id` = @NorthrendSkeleton;
SET @NameGenID = (SELECT COALESCE(MAX(id), 0) FROM `namegen`);
INSERT INTO `namegen` (`id`, `name`, `race_id`, `sex`)
SELECT @NameGenID := @NameGenID +1, `name`, @NorthrendSkeleton, `sex`
FROM (SELECT * FROM `namegen` WHERE `race_id` = @NorthrendSkeletonKin ORDER BY `id`) AS `kin`;
