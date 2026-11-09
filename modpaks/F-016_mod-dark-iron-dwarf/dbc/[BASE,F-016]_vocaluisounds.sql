-- vocaluisounds: the retail error voice lines of retail race 34 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @DarkIronDwarf;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @DarkIronDwarf,  101936,  101862, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @DarkIronDwarf,  101945,  101871, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @DarkIronDwarf,  101923,  101849, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @DarkIronDwarf,  101925,  101851, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @DarkIronDwarf,  101921,  101847, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @DarkIronDwarf,  101939,  101865, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @DarkIronDwarf,  101950,  101876, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @DarkIronDwarf,  101949,  101875, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @DarkIronDwarf,  101935,  101861, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @DarkIronDwarf,  101953,  101879, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @DarkIronDwarf,  101926,  101852, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @DarkIronDwarf,  101937,  101863, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @DarkIronDwarf,  101947,  101873, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @DarkIronDwarf,  101927,  101853, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @DarkIronDwarf,  101920,  101846, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @DarkIronDwarf,  101944,  101870, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @DarkIronDwarf,  101942,  101868, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @DarkIronDwarf,  101943,  101869, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @DarkIronDwarf,  101918,  101844, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @DarkIronDwarf,  101918,  101844, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @DarkIronDwarf,  101918,  101844, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @DarkIronDwarf,  101919,  101845, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @DarkIronDwarf,  101938,  101864, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @DarkIronDwarf,  101927,  101853, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @DarkIronDwarf,  101937,  101863, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @DarkIronDwarf,  101928,  101854, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @DarkIronDwarf,  101933,  101859, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @DarkIronDwarf,  101942,  101868, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @DarkIronDwarf,  101942,  101868, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @DarkIronDwarf,  101924,  101850, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @DarkIronDwarf,  101916,  101842, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @DarkIronDwarf,  101952,  101878, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @DarkIronDwarf,  101922,  101848, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @DarkIronDwarf,  101933,  101859, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @DarkIronDwarf,  101949,  101875, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @DarkIronDwarf,  101951,  101877, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @DarkIronDwarf,  101930,  101856, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @DarkIronDwarf,  101931,  101857, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @DarkIronDwarf,  101917,  101843, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @DarkIronDwarf,  101930,  101856, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @DarkIronDwarf,  101932,  101858, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @DarkIronDwarf,  101942,  101868, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @DarkIronDwarf,  101937,  101863, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @DarkIronDwarf,  101949,  101875, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @DarkIronDwarf,  101929,  101855, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @DarkIronDwarf,  101937,  101863, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @DarkIronDwarf,  101934,  101860, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @DarkIronDwarf,  101948,  101874, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @DarkIronDwarf,  101946,  101872, 0, 0);

-- Dwarf rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @DarkIronDwarf, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @DarkIronDwarf AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Dwarf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
