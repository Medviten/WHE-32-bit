-- charbaseinfo: the classes of @VenthyrHome

DELETE FROM `charbaseinfo` WHERE `race` = @Venthyr;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Venthyr, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @VenthyrHome) AS `home`;
