-- charbaseinfo: the classes of @CultistHome

DELETE FROM `charbaseinfo` WHERE `race` = @Cultist;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @Cultist, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @CultistHome) AS `home`;
