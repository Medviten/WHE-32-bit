-- vocaluisounds: the error voice lines of @NorthrendSkeletonKin (kin)

DELETE FROM `vocaluisounds` WHERE `race_id` = @NorthrendSkeleton;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @NorthrendSkeleton, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT * FROM `vocaluisounds` WHERE `race_id` = @NorthrendSkeletonKin ORDER BY `id`) AS `kin`;
