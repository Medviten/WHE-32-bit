-- charbaseinfo: the classes of @FelOrcHome

DELETE FROM `charbaseinfo` WHERE `race` = @FelOrc;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @FelOrc, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @FelOrcHome) AS `home`;
