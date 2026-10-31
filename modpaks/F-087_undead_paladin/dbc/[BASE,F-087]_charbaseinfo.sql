-- [F-087] undead_paladin: charbaseinfo: 1 insert (F-002_mod-arac adds it too, with every other combination)

DELETE FROM `charbaseinfo` WHERE `race` = @Undead AND `class` = @Paladin;
INSERT INTO `charbaseinfo` (`race`, `class`) VALUES (@Undead, @Paladin);
