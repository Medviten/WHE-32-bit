DELETE FROM `playercreateinfo` WHERE `race` = @Taunka;
INSERT INTO `playercreateinfo` (`race`,`class`,`map`,`zone`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@Taunka, @Warrior,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @Paladin,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO), -- ARAC
(@Taunka, @Hunter,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @Rogue,       @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @Priest,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @Shaman,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @Mage,        @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @Warlock,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @Druid,       @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Taunka, @DeathKnight, @Northrend, @ScarletEnclave, @DKStartX,     @DKStartY,     @DKStartZ,     @DKStartO);
