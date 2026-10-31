-- charbaseinfo: the classes of @SkeletonHome

DELETE FROM `charbaseinfo` WHERE `race` = @Skeleton;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Skeleton, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @SkeletonHome) AS `home`;
