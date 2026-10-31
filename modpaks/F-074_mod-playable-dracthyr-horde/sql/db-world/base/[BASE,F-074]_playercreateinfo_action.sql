-- Action bars of @HordeDracthyrHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @HordeDracthyr;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @HordeDracthyr, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @HordeDracthyrHome) AS `home`;
