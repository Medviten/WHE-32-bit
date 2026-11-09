-- vocaluisounds: the retail error voice lines of retail race 91 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @HordeHaranir;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @HordeHaranir,  314351,  314351, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @HordeHaranir,  314351,  314351, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @HordeHaranir,  314351,  314351, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @HordeHaranir,  314351,  314351, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @HordeHaranir,  314351,  314351, 0, 0);

-- NightElf rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @HordeHaranir, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @HordeHaranir AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @NightElf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
