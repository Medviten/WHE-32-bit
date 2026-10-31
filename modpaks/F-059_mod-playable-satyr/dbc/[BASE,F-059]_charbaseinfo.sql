-- charbaseinfo: the classes of @SatyrHome

DELETE FROM `charbaseinfo` WHERE `race` = @Satyr;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Satyr, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @SatyrHome) AS `home`;
