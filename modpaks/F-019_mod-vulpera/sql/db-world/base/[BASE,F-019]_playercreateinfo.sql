DELETE FROM `playercreateinfo` WHERE `race` = @Vulpera;
INSERT INTO `playercreateinfo` (`race`,`class`,`map`,`zone`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@Vulpera, @Warrior,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Vulpera, @Paladin,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO), -- ARAC
(@Vulpera, @Hunter,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Vulpera, @Rogue,       @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Vulpera, @Priest,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Vulpera, @Shaman,      @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Vulpera, @Mage,        @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Vulpera, @Warlock,     @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO),
(@Vulpera, @Druid,       @Kalimdor,  @Mulgore,        @TaurenStartX, @TaurenStartY, @TaurenStartZ, @TaurenStartO), -- ARAC
(@Vulpera, @DeathKnight, @Northrend, @ScarletEnclave, @DKStartX,     @DKStartY,     @DKStartZ,     @DKStartO);
