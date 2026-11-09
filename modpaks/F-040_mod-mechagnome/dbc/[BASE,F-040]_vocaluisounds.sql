-- vocaluisounds: the retail error voice lines of retail race 37 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @Mechagnome;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @Mechagnome,  143866,  144226, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @Mechagnome,  143875,  144235, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @Mechagnome,  143853,  144213, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @Mechagnome,  143855,  144215, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @Mechagnome,  143851,  144211, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @Mechagnome,  143869,  144229, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @Mechagnome,  143880,  144240, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @Mechagnome,  143879,  144239, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @Mechagnome,  143865,  144225, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @Mechagnome,  143883,  144243, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @Mechagnome,  143856,  144216, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @Mechagnome,  143867,  144227, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @Mechagnome,  143877,  144237, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @Mechagnome,  143857,  144217, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @Mechagnome,  143850,  144210, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @Mechagnome,  143874,  144234, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @Mechagnome,  143872,  144232, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @Mechagnome,  143848,  144208, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @Mechagnome,  143848,  144208, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @Mechagnome,  143848,  144208, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @Mechagnome,  143848,  144208, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @Mechagnome,  143849,  144209, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @Mechagnome,  143868,  144228, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @Mechagnome,  143857,  144217, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @Mechagnome,  143867,  144227, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @Mechagnome,  143858,  144218, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @Mechagnome,  143863,  144223, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @Mechagnome,  143872,  144232, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @Mechagnome,  143872,  144232, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @Mechagnome,  143854,  144214, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @Mechagnome,  143846,  144206, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @Mechagnome,  143882,  144242, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @Mechagnome,  143852,  144212, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @Mechagnome,  143863,  144223, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @Mechagnome,  143879,  144239, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @Mechagnome,  143881,  144241, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @Mechagnome,  143860,  144220, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @Mechagnome,  143861,  144221, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @Mechagnome,  143847,  144207, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @Mechagnome,  143860,  144220, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @Mechagnome,  143862,  144222, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @Mechagnome,  143872,  144232, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @Mechagnome,  143867,  144227, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @Mechagnome,  143879,  144239, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @Mechagnome,  143859,  144219, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @Mechagnome,  143867,  144227, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @Mechagnome,  143864,  144224, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @Mechagnome,  143879,  144239, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @Mechagnome,  143875,  144235, 0, 0);

-- Gnome rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @Mechagnome, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @Mechagnome AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Gnome AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
