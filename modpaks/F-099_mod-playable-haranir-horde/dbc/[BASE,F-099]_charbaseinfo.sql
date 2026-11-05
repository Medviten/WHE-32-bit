-- charbaseinfo: the classes of @HordeHaranirHome

DELETE FROM `charbaseinfo` WHERE `race` = @HordeHaranir;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @HordeHaranir, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @HordeHaranirHome) AS `home`;
