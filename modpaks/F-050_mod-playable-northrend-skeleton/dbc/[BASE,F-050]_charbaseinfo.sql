-- charbaseinfo: the classes of @NorthrendSkeletonHome

DELETE FROM `charbaseinfo` WHERE `race` = @NorthrendSkeleton;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @NorthrendSkeleton, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @NorthrendSkeletonHome) AS `home`;
