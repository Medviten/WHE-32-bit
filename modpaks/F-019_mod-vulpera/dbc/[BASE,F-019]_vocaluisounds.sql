-- vocaluisounds: the retail error voice lines of retail race 35 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @Vulpera;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @Vulpera,  144076,  143984, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @Vulpera,  144085,  143993, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @Vulpera,  144063,  143971, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @Vulpera,  144065,  143973, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @Vulpera,  144061,  143969, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @Vulpera,  144079,  143987, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @Vulpera,  144090,  143998, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @Vulpera,  144089,  143997, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @Vulpera,  144075,  143983, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @Vulpera,  144093,  144001, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @Vulpera,  144066,  143974, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @Vulpera,  144077,  143985, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @Vulpera,  144087,  143995, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @Vulpera,  144067,  143975, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @Vulpera,  144060,  143968, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @Vulpera,  144084,  143992, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @Vulpera,  144082,  143990, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @Vulpera,  144083,  143991, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @Vulpera,  144058,  143966, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @Vulpera,  144058,  143966, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @Vulpera,  144058,  143966, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @Vulpera,  144059,  143967, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @Vulpera,  144078,  143986, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @Vulpera,  144067,  143975, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @Vulpera,  144077,  143985, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @Vulpera,  144068,  143976, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @Vulpera,  144073,  143981, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @Vulpera,  144082,  143990, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @Vulpera,  144082,  143990, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @Vulpera,  144064,  143972, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @Vulpera,  144056,  143964, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @Vulpera,  144092,  144000, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @Vulpera,  144062,  143970, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @Vulpera,  144073,  143981, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @Vulpera,  144089,  143997, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @Vulpera,  144091,  143999, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @Vulpera,  144070,  143978, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @Vulpera,  144071,  143979, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @Vulpera,  144057,  143965, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @Vulpera,  144070,  143978, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @Vulpera,  144072,  143980, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @Vulpera,  144082,  143990, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @Vulpera,  144077,  143985, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @Vulpera,  144089,  143997, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @Vulpera,  144069,  143977, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @Vulpera,  144077,  143985, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @Vulpera,  144074,  143982, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @Vulpera,  144088,  143996, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @Vulpera,  144086,  143994, 0, 0);

-- Tauren rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @Vulpera, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @Vulpera AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Tauren AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
