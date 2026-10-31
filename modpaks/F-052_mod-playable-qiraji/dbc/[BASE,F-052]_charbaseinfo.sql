-- charbaseinfo: the classes of @QirajiHome

DELETE FROM `charbaseinfo` WHERE `race` = @Qiraji;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Qiraji, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @QirajiHome) AS `home`;
