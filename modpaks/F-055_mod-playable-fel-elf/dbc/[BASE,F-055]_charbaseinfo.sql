-- charbaseinfo: the classes of @FelElfHome

DELETE FROM `charbaseinfo` WHERE `race` = @FelElf;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @FelElf, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @FelElfHome) AS `home`;
