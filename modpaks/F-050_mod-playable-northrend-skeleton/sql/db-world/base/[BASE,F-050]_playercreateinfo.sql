-- Start positions of @NorthrendSkeletonHome
DELETE FROM `playercreateinfo` WHERE `race` = @NorthrendSkeleton;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT @NorthrendSkeleton, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM (SELECT * FROM `playercreateinfo` WHERE `race` = @NorthrendSkeletonHome) AS `home`;
