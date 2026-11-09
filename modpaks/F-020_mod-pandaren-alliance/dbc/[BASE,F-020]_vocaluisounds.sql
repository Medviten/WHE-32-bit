-- vocaluisounds: the retail error voice lines of retail race 25 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @AlliancePandaren;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @AlliancePandaren,   28849,   29902, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @AlliancePandaren,   28856,   29909, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @AlliancePandaren,   28840,   29893, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @AlliancePandaren,   28839,   29892, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @AlliancePandaren,   28838,   29891, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @AlliancePandaren,   28850,   29903, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @AlliancePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @AlliancePandaren,   28848,   29901, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @AlliancePandaren,   28866,   29919, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @AlliancePandaren,   28842,   29895, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @AlliancePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @AlliancePandaren,   28858,   29911, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @AlliancePandaren,   28853,   29906, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @AlliancePandaren,   28837,   29890, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @AlliancePandaren,   28834,   29887, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @AlliancePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @AlliancePandaren,   28861,   29913, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @AlliancePandaren,   28835,   29888, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @AlliancePandaren,   28835,   29888, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @AlliancePandaren,   28835,   29888, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @AlliancePandaren,   28836,   29889, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @AlliancePandaren,   28852,   29905, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @AlliancePandaren,   28853,   29906, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @AlliancePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @AlliancePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @AlliancePandaren,   28846,   29899, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @AlliancePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @AlliancePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @AlliancePandaren,   28841,   29894, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @AlliancePandaren,   28830,   29884, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @AlliancePandaren,   28831,   29885, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @AlliancePandaren,   28862,   29915, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @AlliancePandaren,   28846,   29899, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @AlliancePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @AlliancePandaren,   28844,   29897, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @AlliancePandaren,   28855,   29908, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @AlliancePandaren,   28833,   29886, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @AlliancePandaren,   28844,   29897, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @AlliancePandaren,   28845,   29898, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @AlliancePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @AlliancePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @AlliancePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @AlliancePandaren,   28843,   29896, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @AlliancePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @AlliancePandaren,   28847,   29900, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @AlliancePandaren,   28859,   29912, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @AlliancePandaren,   28857,   29910, 0, 0);

-- Human rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @AlliancePandaren, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @AlliancePandaren AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Human AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
