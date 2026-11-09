-- vocaluisounds: the retail error voice lines of retail race 85 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @AllianceEarthen;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @AllianceEarthen,  262391,  262315, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @AllianceEarthen,  262399,  262324, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @AllianceEarthen,  262411,  262336, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @AllianceEarthen,  262413,  262338, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @AllianceEarthen,  262409,  262334, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @AllianceEarthen,  262394,  262318, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @AllianceEarthen,  262404,  262329, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @AllianceEarthen,  262403,  262328, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @AllianceEarthen,  262390,  262314, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @AllianceEarthen,  262407,  262332, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @AllianceEarthen,  262414,  262339, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @AllianceEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @AllianceEarthen,  262401,  262326, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @AllianceEarthen,  262415,  262340, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @AllianceEarthen,  262408,  262333, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @AllianceEarthen,  262398,  262323, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @AllianceEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @AllianceEarthen,  262397,  262322, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @AllianceEarthen,  262385,  262309, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @AllianceEarthen,  262385,  262309, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @AllianceEarthen,  262385,  262309, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @AllianceEarthen,  262386,  262310, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @AllianceEarthen,  262393,  262317, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @AllianceEarthen,  262415,  262340, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @AllianceEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @AllianceEarthen,  262416,  262341, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @AllianceEarthen,  262388,  262312, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @AllianceEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @AllianceEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @AllianceEarthen,  262412,  262337, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @AllianceEarthen,  262383,  262307, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @AllianceEarthen,  262406,  262331, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @AllianceEarthen,  262410,  262335, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @AllianceEarthen,  262388,  262312, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @AllianceEarthen,  262403,  262328, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @AllianceEarthen,  262405,  262330, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @AllianceEarthen,  262418,  262343, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @AllianceEarthen,  262419,  262344, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @AllianceEarthen,  262384,  262308, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @AllianceEarthen,  262418,  262343, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @AllianceEarthen,  262387,  262311, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @AllianceEarthen,  262396,  262321, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @AllianceEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @AllianceEarthen,  262403,  262328, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @AllianceEarthen,  262417,  262342, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @AllianceEarthen,  262392,  262316, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @AllianceEarthen,  262389,  262313, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @AllianceEarthen,  262402,  262327, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @AllianceEarthen,  262400,  262325, 0, 0);

-- Dwarf rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @AllianceEarthen, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @AllianceEarthen AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Dwarf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
