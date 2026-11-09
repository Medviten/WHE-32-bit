-- vocaluisounds: the retail error voice lines of retail race 30 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @LightforgedDraenei;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @LightforgedDraenei,   96223,   96155, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @LightforgedDraenei,   96230,   96162, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @LightforgedDraenei,   96210,   96142, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @LightforgedDraenei,   96212,   96144, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @LightforgedDraenei,   96208,   96140, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @LightforgedDraenei,   96226,   96158, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @LightforgedDraenei,   96235,   96167, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @LightforgedDraenei,   96234,   96166, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @LightforgedDraenei,   96222,   96154, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @LightforgedDraenei,   96238,   96170, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @LightforgedDraenei,   96213,   96145, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @LightforgedDraenei,   96224,   96156, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @LightforgedDraenei,   96232,   96164, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @LightforgedDraenei,   96214,   96146, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @LightforgedDraenei,   96207,   96139, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @LightforgedDraenei,   96229,   96161, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @LightforgedDraenei,   96228,   96160, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @LightforgedDraenei,   96227,   96159, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @LightforgedDraenei,   96205,   96137, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @LightforgedDraenei,   96205,   96137, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @LightforgedDraenei,   96205,   96137, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @LightforgedDraenei,   96206,   96138, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @LightforgedDraenei,   96225,   96157, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @LightforgedDraenei,   96214,   96146, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @LightforgedDraenei,   96224,   96156, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @LightforgedDraenei,   96215,   96147, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @LightforgedDraenei,   96220,   96152, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @LightforgedDraenei,   96228,   96160, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @LightforgedDraenei,   96228,   96160, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @LightforgedDraenei,   96211,   96143, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @LightforgedDraenei,   96203,   96135, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @LightforgedDraenei,   96237,   96169, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @LightforgedDraenei,   96209,   96141, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @LightforgedDraenei,   96220,   96152, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @LightforgedDraenei,   96234,   96166, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @LightforgedDraenei,   96236,   96168, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @LightforgedDraenei,   96217,   96149, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @LightforgedDraenei,   96218,   96150, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @LightforgedDraenei,   96204,   96136, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @LightforgedDraenei,   96217,   96149, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @LightforgedDraenei,   96219,   96151, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @LightforgedDraenei,   96228,   96160, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @LightforgedDraenei,   96224,   96156, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @LightforgedDraenei,   96234,   96166, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @LightforgedDraenei,   96216,   96148, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @LightforgedDraenei,   96224,   96156, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @LightforgedDraenei,   96221,   96153, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @LightforgedDraenei,   96233,   96165, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @LightforgedDraenei,   96231,   96163, 0, 0);

-- Draenei rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @LightforgedDraenei, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @LightforgedDraenei AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Draenei AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
