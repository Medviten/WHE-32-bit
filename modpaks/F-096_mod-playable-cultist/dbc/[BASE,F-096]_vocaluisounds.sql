-- vocaluisounds: the error voice lines of @CultistKin (kin)

DELETE FROM `vocaluisounds` WHERE `race_id` = @Cultist;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @Cultist, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT * FROM `vocaluisounds` WHERE `race_id` = @CultistKin ORDER BY `id`) AS `kin`;
