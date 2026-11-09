-- vocaluisounds: the Forever error voice lines of Forever race 96 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @HordeSkyborne;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @HordeSkyborne,  357283,  356834, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @HordeSkyborne,  357290,  356841, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @HordeSkyborne,  357302,  356853, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @HordeSkyborne,  357304,  356855, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @HordeSkyborne,  357300,  356851, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @HordeSkyborne,  357286,  356837, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @HordeSkyborne,  357295,  356846, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @HordeSkyborne,  357294,  356845, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @HordeSkyborne,  357282,  356833, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @HordeSkyborne,  357298,  356849, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @HordeSkyborne,  357305,  356856, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @HordeSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @HordeSkyborne,  357292,  356843, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @HordeSkyborne,  357306,  356857, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @HordeSkyborne,  357299,  356850, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @HordeSkyborne,  357289,  356840, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @HordeSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @HordeSkyborne,  357288,  356839, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @HordeSkyborne,  357277,  356828, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @HordeSkyborne,  357277,  356828, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @HordeSkyborne,  357277,  356828, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @HordeSkyborne,  357278,  356829, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @HordeSkyborne,  357285,  356836, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @HordeSkyborne,  357306,  356857, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @HordeSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @HordeSkyborne,  357307,  356858, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @HordeSkyborne,  357280,  356831, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @HordeSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @HordeSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @HordeSkyborne,  357303,  356854, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @HordeSkyborne,  357275,  356826, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @HordeSkyborne,  357297,  356848, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @HordeSkyborne,  357301,  356852, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @HordeSkyborne,  357280,  356831, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @HordeSkyborne,  357294,  356845, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @HordeSkyborne,  357296,  356847, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @HordeSkyborne,  357309,  356860, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @HordeSkyborne,  357310,  356861, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @HordeSkyborne,  357276,  356827, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @HordeSkyborne,  357309,  356860, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @HordeSkyborne,  357279,  356830, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @HordeSkyborne,  357287,  356838, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @HordeSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @HordeSkyborne,  357294,  356845, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @HordeSkyborne,  357308,  356859, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @HordeSkyborne,  357284,  356835, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @HordeSkyborne,  357281,  356832, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @HordeSkyborne,  357293,  356844, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @HordeSkyborne,  357291,  356842, 0, 0);

-- BloodElf rows for what Forever lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @HordeSkyborne, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @HordeSkyborne AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @BloodElf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
