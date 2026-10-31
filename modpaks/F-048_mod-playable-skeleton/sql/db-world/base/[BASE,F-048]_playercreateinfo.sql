-- Start positions of @SkeletonHome
DELETE FROM `playercreateinfo` WHERE `race` = @Skeleton;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @Skeleton, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @SkeletonHome) AS `home`;
