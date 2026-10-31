-- Action bars of @MantidHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Mantid;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Mantid, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @MantidHome) AS `home`;
