-- vocaluisounds: the retail error voice lines of retail race 36 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @MagharOrc;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @MagharOrc,  110373,  110298, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @MagharOrc,  110382,  110307, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @MagharOrc,  110360,  110285, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @MagharOrc,  110362,  110287, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @MagharOrc,  110358,  110283, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @MagharOrc,  110376,  110301, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @MagharOrc,  110387,  110312, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @MagharOrc,  110386,  110311, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @MagharOrc,  110372,  110297, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @MagharOrc,  110390,  110315, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @MagharOrc,  110363,  110288, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @MagharOrc,  110374,  110299, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @MagharOrc,  110384,  110309, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @MagharOrc,  110364,  110289, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @MagharOrc,  110357,  110282, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @MagharOrc,  110381,  110306, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @MagharOrc,  110379,  110304, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @MagharOrc,  110380,  110305, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @MagharOrc,  110355,  110280, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @MagharOrc,  110355,  110280, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @MagharOrc,  110355,  110280, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @MagharOrc,  110356,  110281, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @MagharOrc,  110375,  110300, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @MagharOrc,  110364,  110289, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @MagharOrc,  110374,  110299, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @MagharOrc,  110365,  110290, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @MagharOrc,  110370,  110295, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @MagharOrc,  110379,  110304, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @MagharOrc,  110379,  110304, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @MagharOrc,  110361,  110286, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @MagharOrc,  110353,  110278, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @MagharOrc,  110389,  110314, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @MagharOrc,  110359,  110284, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @MagharOrc,  110370,  110295, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @MagharOrc,  110386,  110311, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @MagharOrc,  110388,  110313, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @MagharOrc,  110367,  110292, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @MagharOrc,  110368,  110293, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @MagharOrc,  110354,  110279, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @MagharOrc,  110367,  110292, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @MagharOrc,  110369,  110294, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @MagharOrc,  110379,  110304, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @MagharOrc,  110374,  110299, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @MagharOrc,  110386,  110311, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @MagharOrc,  110366,  110291, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @MagharOrc,  110374,  110299, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @MagharOrc,  110371,  110296, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @MagharOrc,  110385,  110310, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @MagharOrc,  110383,  110308, 0, 0);

-- Orc rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @MagharOrc, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @MagharOrc AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Orc AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
