DELETE FROM `playercreateinfo` WHERE `race` = @HighmountainTauren;
INSERT INTO `playercreateinfo` (`race`,`class`,`map`,`zone`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@HighmountainTauren, @Warrior,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @Paladin,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO), -- ARAC
(@HighmountainTauren, @Hunter,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @Rogue,       @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @Priest,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @Shaman,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @Mage,        @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @Warlock,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @Druid,       @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@HighmountainTauren, @DeathKnight, @Northrend, @ScarletEnclave, @DKStartX,     @DKStartY,     @DKStartZ,     @DKStartO);
