-- Action bars of @ForestTrollHome
DELETE FROM `playercreateinfo_action` WHERE `race` = @ForestTroll;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT @ForestTroll, `class`, `button`, `action`, `type`
FROM (SELECT * FROM `playercreateinfo_action` WHERE `race` = @ForestTrollHome) AS `home`;
