DELETE FROM `playercreateinfo` WHERE `race` = @Undead AND `class` = @Paladin;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@Undead,   @Paladin,     @EasternKingdoms, @TirisfalGlades, @UndeadStartX,   @UndeadStartY,   @UndeadStartZ,   @UndeadStartO);
