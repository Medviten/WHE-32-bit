-- charbaseinfo: the classes of @BansheeHome

DELETE FROM `charbaseinfo` WHERE `race` = @Banshee;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Banshee, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @BansheeHome) AS `home`;
