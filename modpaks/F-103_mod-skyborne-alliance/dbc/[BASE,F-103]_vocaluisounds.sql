-- vocaluisounds: the Forever error voice lines of Forever race 95 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @AllianceSkyborne;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @AllianceSkyborne,  357283,  356834, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @AllianceSkyborne,  357290,  356841, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @AllianceSkyborne,  357302,  356853, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @AllianceSkyborne,  357304,  356855, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @AllianceSkyborne,  357300,  356851, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @AllianceSkyborne,  357286,  356837, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @AllianceSkyborne,  357295,  356846, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @AllianceSkyborne,  357294,  356845, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @AllianceSkyborne,  357282,  356833, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @AllianceSkyborne,  357298,  356849, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @AllianceSkyborne,  357305,  356856, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @AllianceSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @AllianceSkyborne,  357292,  356843, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @AllianceSkyborne,  357306,  356857, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @AllianceSkyborne,  357299,  356850, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @AllianceSkyborne,  357289,  356840, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @AllianceSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @AllianceSkyborne,  357288,  356839, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @AllianceSkyborne,  357277,  356828, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @AllianceSkyborne,  357277,  356828, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @AllianceSkyborne,  357277,  356828, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @AllianceSkyborne,  357278,  356829, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @AllianceSkyborne,  357285,  356836, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @AllianceSkyborne,  357306,  356857, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @AllianceSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @AllianceSkyborne,  357307,  356858, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @AllianceSkyborne,  357280,  356831, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @AllianceSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @AllianceSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @AllianceSkyborne,  357303,  356854, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @AllianceSkyborne,  357275,  356826, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @AllianceSkyborne,  357297,  356848, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @AllianceSkyborne,  357301,  356852, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @AllianceSkyborne,  357280,  356831, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @AllianceSkyborne,  357294,  356845, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @AllianceSkyborne,  357296,  356847, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @AllianceSkyborne,  357309,  356860, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @AllianceSkyborne,  357310,  356861, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @AllianceSkyborne,  357276,  356827, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @AllianceSkyborne,  357309,  356860, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @AllianceSkyborne,  357279,  356830, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @AllianceSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @AllianceSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @AllianceSkyborne,  357294,  356845, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @AllianceSkyborne,  357308,  356859, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @AllianceSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @AllianceSkyborne,  357281,  356832, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @AllianceSkyborne,  357293,  356844, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @AllianceSkyborne,  357291,  356842, 0, 0);

-- BloodElf rows for what Forever lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @AllianceSkyborne, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @AllianceSkyborne AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @BloodElf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
