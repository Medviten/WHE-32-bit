-- vocaluisounds: the retail error voice lines of retail race 84 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @HordeEarthen;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @HordeEarthen,  262391,  262315, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @HordeEarthen,  262399,  262324, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @HordeEarthen,  262411,  262336, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @HordeEarthen,  262413,  262338, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @HordeEarthen,  262409,  262334, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @HordeEarthen,  262394,  262318, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @HordeEarthen,  262404,  262329, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @HordeEarthen,  262403,  262328, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @HordeEarthen,  262390,  262314, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @HordeEarthen,  262407,  262332, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @HordeEarthen,  262414,  262339, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @HordeEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @HordeEarthen,  262401,  262326, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @HordeEarthen,  262415,  262340, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @HordeEarthen,  262408,  262333, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @HordeEarthen,  262398,  262323, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @HordeEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @HordeEarthen,  262397,  262322, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @HordeEarthen,  262385,  262309, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @HordeEarthen,  262385,  262309, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @HordeEarthen,  262385,  262309, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @HordeEarthen,  262386,  262310, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @HordeEarthen,  262393,  262317, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @HordeEarthen,  262415,  262340, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @HordeEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @HordeEarthen,  262416,  262341, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @HordeEarthen,  262388,  262312, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @HordeEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @HordeEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @HordeEarthen,  262412,  262337, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @HordeEarthen,  262383,  262307, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @HordeEarthen,  262406,  262331, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @HordeEarthen,  262410,  262335, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @HordeEarthen,  262388,  262312, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @HordeEarthen,  262403,  262328, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @HordeEarthen,  262405,  262330, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @HordeEarthen,  262418,  262343, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @HordeEarthen,  262419,  262344, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @HordeEarthen,  262384,  262308, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @HordeEarthen,  262418,  262343, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @HordeEarthen,  262387,  262311, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @HordeEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @HordeEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @HordeEarthen,  262403,  262328, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @HordeEarthen,  262417,  262342, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @HordeEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @HordeEarthen,  262389,  262313, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @HordeEarthen,  262402,  262327, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @HordeEarthen,  262400,  262325, 0, 0);

-- Dwarf rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @HordeEarthen, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @HordeEarthen AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Dwarf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
