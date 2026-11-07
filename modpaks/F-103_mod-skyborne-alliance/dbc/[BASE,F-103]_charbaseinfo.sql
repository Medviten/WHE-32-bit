-- charbaseinfo: the classes of @AllianceSkyborneHome

DELETE FROM `charbaseinfo` WHERE `race` = @AllianceSkyborne;
INSERT INTO `charbaseinfo` (`race`, `class`)
SELECT @AllianceSkyborne, `class` FROM (SELECT `class` FROM `charbaseinfo` WHERE `race` = @AllianceSkyborneHome) AS `home`;
