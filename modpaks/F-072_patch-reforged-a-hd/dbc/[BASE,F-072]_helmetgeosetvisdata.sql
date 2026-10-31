-- helmetgeosetvisdata: 1 inserts, 9 updates, 0 deletes

-- Race masks are +1 in this DBC (human is @HumanHelmetMask = 2, orc is 4, ...); 0xFFFFFFFF & ~x = every race but x
-- New entries
DELETE FROM `helmetgeosetvisdata` WHERE `id` = 377;
INSERT INTO `helmetgeosetvisdata` (`id`, `hide_geoset_1`, `hide_geoset_2`, `hide_geoset_3`, `hide_geoset_4`, `hide_geoset_5`, `hide_geoset_6`, `hide_geoset_7`) VALUES (377, 0xFFFFFFFF & ~@TaurenHelmetMask, 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @GoblinHelmetMask), 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @TaurenHelmetMask | @GoblinHelmetMask), 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @TrollHelmetMask | @GoblinHelmetMask), (@HumanHelmetMask | @OrcHelmetMask | @DwarfHelmetMask | @NightElfHelmetMask | @UndeadHelmetMask | @TaurenHelmetMask | @GnomeHelmetMask | @TrollHelmetMask | @GoblinHelmetMask | @BloodElfHelmetMask | @DraeneiHelmetMask), 0, 0xFFFFFFFF);

-- Changed values
UPDATE `helmetgeosetvisdata` SET `hide_geoset_3` = 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @TaurenHelmetMask | @GoblinHelmetMask), `hide_geoset_4` = 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @TrollHelmetMask | @GoblinHelmetMask) WHERE `id` = 247;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_3` = 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @TaurenHelmetMask | @GoblinHelmetMask), `hide_geoset_4` = 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @TrollHelmetMask | @GoblinHelmetMask), `hide_geoset_5` = (@HumanHelmetMask | @OrcHelmetMask | @DwarfHelmetMask | @NightElfHelmetMask | @UndeadHelmetMask | @TaurenHelmetMask | @GnomeHelmetMask | @TrollHelmetMask | @GoblinHelmetMask | @BloodElfHelmetMask | @DraeneiHelmetMask) WHERE `id` = 248;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_4` = (@OrcHelmetMask | @DwarfHelmetMask | @GnomeHelmetMask | @DraeneiHelmetMask) WHERE `id` = 305;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_3` = (@HumanHelmetMask | @OrcHelmetMask | @DwarfHelmetMask | @NightElfHelmetMask | @UndeadHelmetMask | @TaurenHelmetMask | @GnomeHelmetMask | @TrollHelmetMask | @BloodElfHelmetMask | @DraeneiHelmetMask) WHERE `id` = 306;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_4` = (@OrcHelmetMask | @DwarfHelmetMask | @BloodElfHelmetMask) WHERE `id` = 307;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_4` = (@HumanHelmetMask | @OrcHelmetMask | @DwarfHelmetMask | @TaurenHelmetMask | @GnomeHelmetMask | @TrollHelmetMask | @GoblinHelmetMask) WHERE `id` = 325;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_3` = (@HumanHelmetMask | @OrcHelmetMask | @DwarfHelmetMask | @GnomeHelmetMask | @BloodElfHelmetMask | @DraeneiHelmetMask) WHERE `id` = 345;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_4` = (@HumanHelmetMask | @OrcHelmetMask | @DwarfHelmetMask | @BloodElfHelmetMask) WHERE `id` = 367;
UPDATE `helmetgeosetvisdata` SET `hide_geoset_2` = 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @GoblinHelmetMask), `hide_geoset_3` = 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @GoblinHelmetMask), `hide_geoset_4` = 0xFFFFFFFF & ~(@NightElfHelmetMask | @UndeadHelmetMask | @GoblinHelmetMask) WHERE `id` = 368;
