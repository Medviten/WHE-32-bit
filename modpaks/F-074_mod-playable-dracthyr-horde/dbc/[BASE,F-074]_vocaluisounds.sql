-- vocaluisounds: the error voice lines of @HordeDracthyrKin (kin)

DELETE FROM `vocaluisounds` WHERE `race_id` = @HordeDracthyr;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @HordeDracthyr, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT * FROM `vocaluisounds` WHERE `race_id` = @HordeDracthyrKin ORDER BY `id`) AS `kin`;
