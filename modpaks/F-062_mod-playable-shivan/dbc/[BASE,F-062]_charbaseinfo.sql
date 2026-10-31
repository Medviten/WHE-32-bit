-- charbaseinfo: the classes of @ShivanHome

DELETE FROM `charbaseinfo` WHERE `race` = @Shivan;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Shivan, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @ShivanHome) AS `home`;
