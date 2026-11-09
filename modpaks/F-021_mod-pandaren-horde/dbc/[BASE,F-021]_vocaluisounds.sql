-- vocaluisounds: the retail error voice lines of retail race 26 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @HordePandaren;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @HordePandaren,   28849,   29902, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @HordePandaren,   28856,   29909, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @HordePandaren,   28840,   29893, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @HordePandaren,   28839,   29892, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @HordePandaren,   28838,   29891, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @HordePandaren,   28833,   29886, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @HordePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @HordePandaren,   28848,   29901, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @HordePandaren,   28866,   29919, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @HordePandaren,   28842,   29895, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @HordePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @HordePandaren,   28858,   29911, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @HordePandaren,   28853,   29906, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @HordePandaren,   28837,   29890, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @HordePandaren,   28834,   29887, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @HordePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @HordePandaren,   28861,   29913, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @HordePandaren,   28835,   29888, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @HordePandaren,   28835,   29888, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @HordePandaren,   28835,   29888, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @HordePandaren,   28836,   29889, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @HordePandaren,   28852,   29905, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @HordePandaren,   28853,   29906, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @HordePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @HordePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @HordePandaren,   28846,   29899, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @HordePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @HordePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @HordePandaren,   28841,   29894, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @HordePandaren,   28830,   29884, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @HordePandaren,   28831,   29885, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @HordePandaren,   28862,   29915, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @HordePandaren,   28846,   29899, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @HordePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @HordePandaren,   28865,   29918, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @HordePandaren,   28844,   29897, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @HordePandaren,   28855,   29908, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @HordePandaren,   28833,   29886, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @HordePandaren,   28844,   29897, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @HordePandaren,   28845,   29898, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @HordePandaren,   28860,   29914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @HordePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @HordePandaren,   28863,   29916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @HordePandaren,   28843,   29896, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @HordePandaren,   28851,   29904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @HordePandaren,   28847,   29900, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @HordePandaren,   28859,   29912, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @HordePandaren,   28857,   29910, 0, 0);

-- Tauren rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @HordePandaren, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @HordePandaren AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Tauren AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
