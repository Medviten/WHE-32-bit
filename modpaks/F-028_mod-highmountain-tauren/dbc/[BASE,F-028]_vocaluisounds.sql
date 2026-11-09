-- vocaluisounds: the retail error voice lines of retail race 28 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @HighmountainTauren;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @HighmountainTauren,   95934,   95513, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @HighmountainTauren,   95943,   95522, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @HighmountainTauren,   95921,   95500, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @HighmountainTauren,   95923,   95502, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @HighmountainTauren,   95919,   95498, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @HighmountainTauren,   95937,   95516, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @HighmountainTauren,   95948,   95527, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @HighmountainTauren,   95947,   95526, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @HighmountainTauren,   95933,   95512, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @HighmountainTauren,   95951,   95530, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @HighmountainTauren,   95924,   95503, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @HighmountainTauren,   95935,   95514, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @HighmountainTauren,   95945,   95524, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @HighmountainTauren,   95925,   95504, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @HighmountainTauren,   95918,   95497, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @HighmountainTauren,   95942,   95521, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @HighmountainTauren,   95941,   95520, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @HighmountainTauren,   95940,   95519, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @HighmountainTauren,   95916,   95495, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @HighmountainTauren,   95916,   95495, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @HighmountainTauren,   95916,   95495, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @HighmountainTauren,   95917,   95496, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @HighmountainTauren,   95936,   95515, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @HighmountainTauren,   95936,   95515, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @HighmountainTauren,   95935,   95514, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @HighmountainTauren,   95931,   95510, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @HighmountainTauren,   95941,   95520, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @HighmountainTauren,   95941,   95520, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @HighmountainTauren,   95922,   95501, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @HighmountainTauren,   95914,   95493, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @HighmountainTauren,   95950,   95529, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @HighmountainTauren,   95920,   95499, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @HighmountainTauren,   95931,   95510, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @HighmountainTauren,   95947,   95526, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @HighmountainTauren,   95949,   95528, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @HighmountainTauren,   95928,   95507, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @HighmountainTauren,   95929,   95508, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @HighmountainTauren,   95915,   95494, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @HighmountainTauren,   95928,   95507, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @HighmountainTauren,   95930,   95509, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @HighmountainTauren,   95941,   95520, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @HighmountainTauren,   95935,   95514, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @HighmountainTauren,   95947,   95526, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @HighmountainTauren,   95927,   95506, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @HighmountainTauren,   95935,   95514, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @HighmountainTauren,   95932,   95511, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @HighmountainTauren,   95946,   95525, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @HighmountainTauren,   95944,   95523, 0, 0);

-- Tauren rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @HighmountainTauren, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @HighmountainTauren AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Tauren AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
