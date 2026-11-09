-- vocaluisounds: the retail error voice lines of retail race 32 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @KulTiran;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @KulTiran,  127105,  127011, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @KulTiran,  127114,  127020, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @KulTiran,  127092,  126998, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @KulTiran,  127094,  127000, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @KulTiran,  127090,  126996, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @KulTiran,  127108,  127014, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @KulTiran,  127119,  127025, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @KulTiran,  127118,  127024, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @KulTiran,  127104,  127010, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @KulTiran,  127122,  127028, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @KulTiran,  127095,  127001, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @KulTiran,  127106,  127012, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @KulTiran,  127116,  127022, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @KulTiran,  127096,  127002, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @KulTiran,  127089,  126995, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @KulTiran,  127113,  127019, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @KulTiran,  127111,  127017, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @KulTiran,  127112,  127018, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @KulTiran,  127087,  126993, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @KulTiran,  127087,  126993, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @KulTiran,  127087,  126993, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @KulTiran,  127088,  126994, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @KulTiran,  127107,  127013, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @KulTiran,  127096,  127002, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @KulTiran,  127106,  127012, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @KulTiran,  127097,  127003, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @KulTiran,  127102,  127008, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @KulTiran,  127111,  127017, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @KulTiran,  127111,  127017, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @KulTiran,  127093,  126999, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @KulTiran,  127085,  126991, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @KulTiran,  127121,  127027, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @KulTiran,  127091,  126997, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @KulTiran,  127102,  127008, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @KulTiran,  127118,  127024, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @KulTiran,  127120,  127026, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @KulTiran,  127099,  127005, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @KulTiran,  127100,  127006, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @KulTiran,  127086,  126992, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @KulTiran,  127099,  127005, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @KulTiran,  127101,  127007, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @KulTiran,  127111,  127017, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @KulTiran,  127106,  127012, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @KulTiran,  127118,  127024, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @KulTiran,  127098,  127004, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @KulTiran,  127106,  127012, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @KulTiran,  127103,  127009, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @KulTiran,  127117,  127023, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @KulTiran,  127115,  127021, 0, 0);

-- Human rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @KulTiran, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @KulTiran AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Human AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
