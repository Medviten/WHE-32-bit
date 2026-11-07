-- charbaseinfo: the classes of @HordeSkyborneHome

DELETE FROM `charbaseinfo` WHERE `race` = @HordeSkyborne;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @HordeSkyborne, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @HordeSkyborneHome) AS `home`;
