-- vocaluisounds: the retail error voice lines of retail race 27 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @Nightborne;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @Nightborne,   96359,   96291, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @Nightborne,   96366,   96298, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @Nightborne,   96346,   96278, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @Nightborne,   96348,   96280, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @Nightborne,   96344,   96276, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @Nightborne,   96362,   96294, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @Nightborne,   96371,   96167, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @Nightborne,   96370,   96302, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @Nightborne,   96358,   96290, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @Nightborne,   96374,   96306, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @Nightborne,   96349,   96281, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @Nightborne,   96360,   96292, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @Nightborne,   96368,   96300, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @Nightborne,   96350,   96282, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @Nightborne,   96343,   96275, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @Nightborne,   96365,   96297, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @Nightborne,   96364,   96296, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @Nightborne,   96363,   96295, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @Nightborne,   96341,   96273, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @Nightborne,   96341,   96273, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @Nightborne,   96341,   96273, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @Nightborne,   96342,   96274, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @Nightborne,   96361,   96293, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @Nightborne,   96350,   96282, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @Nightborne,   96360,   96292, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @Nightborne,   96351,   96283, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @Nightborne,   96356,   96288, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @Nightborne,   96364,   96296, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @Nightborne,   96364,   96296, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @Nightborne,   96347,   96279, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @Nightborne,   96339,   96271, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @Nightborne,   96373,   96305, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @Nightborne,   96345,   96277, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @Nightborne,   96356,   96288, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @Nightborne,   96370,   96302, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @Nightborne,   96372,   96304, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @Nightborne,   96353,   96285, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @Nightborne,   96354,   96286, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @Nightborne,   96340,   96272, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @Nightborne,   96353,   96285, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @Nightborne,   96355,   96287, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @Nightborne,   96364,   96296, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @Nightborne,   96360,   96292, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @Nightborne,   96370,   96302, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @Nightborne,   96352,   96284, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @Nightborne,   96360,   96292, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @Nightborne,   96357,   96289, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @Nightborne,   96369,   96301, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @Nightborne,   96367,   96299, 0, 0);

-- BloodElf rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @Nightborne, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @Nightborne AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @BloodElf AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
