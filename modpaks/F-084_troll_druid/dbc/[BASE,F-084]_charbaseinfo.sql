-- [F-084] troll_druid: charbaseinfo: 1 insert (F-002_mod-arac adds it too, with every other combination)

DELETE FROM `charbaseinfo` WHERE `race` = @Troll AND `class` = @Druid;
INSERT INTO `charbaseinfo` (`race`, `class`) VALUES (@Troll, @Druid);
