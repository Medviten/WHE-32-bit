-- Action bars of @VenthyrHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @Venthyr;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @Venthyr, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @VenthyrHome) AS `home`;
