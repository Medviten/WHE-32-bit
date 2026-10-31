-- charbaseinfo: the classes of @BeholderHome

DELETE FROM `charbaseinfo` WHERE `race` = @Beholder;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Beholder, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @BeholderHome) AS `home`;
