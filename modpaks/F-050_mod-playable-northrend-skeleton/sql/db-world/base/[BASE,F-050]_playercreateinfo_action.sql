-- Action bars of @NorthrendSkeletonHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @NorthrendSkeleton;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @NorthrendSkeleton, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @NorthrendSkeletonHome) AS `home`;
