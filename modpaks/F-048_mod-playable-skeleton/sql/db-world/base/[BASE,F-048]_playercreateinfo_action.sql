-- Action bars of @SkeletonHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Skeleton;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Skeleton, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @SkeletonHome) AS `home`;
