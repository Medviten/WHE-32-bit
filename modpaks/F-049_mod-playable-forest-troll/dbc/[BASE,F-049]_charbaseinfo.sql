-- charbaseinfo: the classes of @ForestTrollHome

DELETE FROM `charbaseinfo` WHERE `race` = @ForestTroll;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @ForestTroll, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @ForestTrollHome) AS `home`;
