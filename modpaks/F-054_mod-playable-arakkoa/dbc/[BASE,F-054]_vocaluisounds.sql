-- vocaluisounds: the error voice lines of @ArakkoaKin (kin)

DELETE FROM `vocaluisounds` WHERE `race_id` = @Arakkoa;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @Arakkoa, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT * FROM `vocaluisounds` WHERE `race_id` = @ArakkoaKin ORDER BY `id`) AS `kin`;
