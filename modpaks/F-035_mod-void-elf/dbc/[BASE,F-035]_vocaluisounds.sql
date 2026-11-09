-- vocaluisounds: the retail error voice lines of retail race 29 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @VoidElf;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @VoidElf,   95639,   95809, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @VoidElf,   95648,   95818, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @VoidElf,   95626,   95796, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @VoidElf,   95628,   95798, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @VoidElf,   95624,   95794, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @VoidElf,   95642,   95812, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @VoidElf,   95653,   95825, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @VoidElf,   95652,   95824, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @VoidElf,   95638,   95808, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @VoidElf,   95656,   95830, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @VoidElf,   95629,   95799, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @VoidElf,   95640,   95810, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @VoidElf,   95650,   95820, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @VoidElf,   95630,   95800, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @VoidElf,   95623,   95793, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @VoidElf,   95647,   95817, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @VoidElf,   95646,   95816, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @VoidElf,   95645,   95815, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @VoidElf,   95621,   95791, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @VoidElf,   95621,   95791, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @VoidElf,   95621,   95791, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @VoidElf,   95622,   95792, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @VoidElf,   95641,   95811, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @VoidElf,   95630,   95800, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @VoidElf,   95640,   95810, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @VoidElf,   95631,   95801, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @VoidElf,   95636,   95806, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @VoidElf,   95646,   95816, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @VoidElf,   95646,   95816, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @VoidElf,   95627,   95797, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @VoidElf,   95619,   95790, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @VoidElf,   95655,   95829, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @VoidElf,   95625,   95795, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @VoidElf,   95636,   95806, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @VoidElf,   95652,   95824, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @VoidElf,   95654,   95827, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @VoidElf,   95633,   95803, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @VoidElf,   95634,   95804, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @VoidElf,   95620,   95789, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @VoidElf,   95633,   95803, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @VoidElf,   95635,   95805, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @VoidElf,   95646,   95816, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @VoidElf,   95640,   95810, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @VoidElf,   95652,   95824, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @VoidElf,   95632,   95802, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @VoidElf,   95640,   95810, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @VoidElf,   95637,   95807, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @VoidElf,   95651,   95821, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @VoidElf,   95649,   95819, 0, 0);

-- BloodElf rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @VoidElf, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @VoidElf AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @BloodElf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
