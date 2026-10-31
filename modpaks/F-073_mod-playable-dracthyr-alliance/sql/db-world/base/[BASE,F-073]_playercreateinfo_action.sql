-- Action bars of @AllianceDracthyrHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @AllianceDracthyr;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @AllianceDracthyr, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @AllianceDracthyrHome) AS `home`;
