-- charbaseinfo: the classes of @HozenHome

DELETE FROM `charbaseinfo` WHERE `race` = @Hozen;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Hozen, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @HozenHome) AS `home`;
