-- vocaluisounds: the retail error voice lines of retail race 70 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @HordeDracthyr;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @HordeDracthyr,  212558,  212647, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @HordeDracthyr,  212567,  212656, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @HordeDracthyr,  212580,  212669, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @HordeDracthyr,  212582,  212671, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @HordeDracthyr,  212578,  212667, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @HordeDracthyr,  212561,  212650, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @HordeDracthyr,  212573,  212662, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @HordeDracthyr,  212572,  212661, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @HordeDracthyr,  212557,  212646, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @HordeDracthyr,  212576,  212665, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @HordeDracthyr,  212584,  212673, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @HordeDracthyr,  212559,  212648, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @HordeDracthyr,  212570,  212659, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @HordeDracthyr,  212585,  212674, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @HordeDracthyr,  212577,  212666, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @HordeDracthyr,  212566,  212655, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @HordeDracthyr,  212564,  212653, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @HordeDracthyr,  212565,  212654, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @HordeDracthyr,  212551,  212641, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @HordeDracthyr,  212551,  212641, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @HordeDracthyr,  212551,  212641, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @HordeDracthyr,  212552,  212642, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @HordeDracthyr,  212560,  212649, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @HordeDracthyr,  212585,  212674, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @HordeDracthyr,  212559,  212648, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @HordeDracthyr,  212586,  212675, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @HordeDracthyr,  212555,  212644, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @HordeDracthyr,  212564,  212653, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @HordeDracthyr,  212564,  212653, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @HordeDracthyr,  212581,  212670, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @HordeDracthyr,  212549,  212639, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @HordeDracthyr,  212575,  212664, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @HordeDracthyr,  212579,  212668, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @HordeDracthyr,  212555,  212644, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @HordeDracthyr,  212572,  212661, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @HordeDracthyr,  212574,  212663, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @HordeDracthyr,  212553,  212677, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @HordeDracthyr,  212588,  212678, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @HordeDracthyr,  212550,  212640, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @HordeDracthyr,  212553,  212677, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @HordeDracthyr,  212554,  212643, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @HordeDracthyr,  212564,  212653, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @HordeDracthyr,  212559,  212648, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @HordeDracthyr,  212572,  212661, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @HordeDracthyr,  212587,  212676, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 60, @HordeDracthyr,  212583,  212672, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @HordeDracthyr,  212559,  212648, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @HordeDracthyr,  212556,  212645, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @HordeDracthyr,  212571,  212660, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @HordeDracthyr,  212568,  212657, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 65, @HordeDracthyr,  212569,  212658, 0, 0);

-- Orc rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @HordeDracthyr, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @HordeDracthyr AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Orc AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
