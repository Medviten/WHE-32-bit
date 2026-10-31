-- charbaseinfo: the classes of @SlimeGiantHome

DELETE FROM `charbaseinfo` WHERE `race` = @SlimeGiant;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @SlimeGiant, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @SlimeGiantHome) AS `home`;
