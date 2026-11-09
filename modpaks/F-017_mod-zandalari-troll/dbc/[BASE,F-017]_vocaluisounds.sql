-- vocaluisounds: the retail error voice lines of retail race 31 (tools/races/retail_voices.py), then the Kin's for the rest

DELETE FROM `vocaluisounds` WHERE `race_id` = @ZandalariTroll;
SET @VocalUISoundsID = (SELECT COALESCE(MAX(id), 0) FROM `vocaluisounds`);
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`) VALUES
(@VocalUISoundsID := @VocalUISoundsID +1,  0, @ZandalariTroll,  127292,  126918, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  1, @ZandalariTroll,  127301,  126928, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  2, @ZandalariTroll,  127279,  126905, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  3, @ZandalariTroll,  127281,  126907, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  4, @ZandalariTroll,  127277,  126903, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  5, @ZandalariTroll,  127295,  126921, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1,  8, @ZandalariTroll,  127306,  126932, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 10, @ZandalariTroll,  127305,  126927, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 11, @ZandalariTroll,  127291,  126917, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 12, @ZandalariTroll,  127309,  126935, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 13, @ZandalariTroll,  127282,  126908, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 14, @ZandalariTroll,  127293,  126919, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 15, @ZandalariTroll,  127303,  126930, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 17, @ZandalariTroll,  127283,  126909, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 18, @ZandalariTroll,  127276,  126902, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 20, @ZandalariTroll,  127300,  126926, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 22, @ZandalariTroll,  127298,  126925, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 25, @ZandalariTroll,  127299,  126924, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 26, @ZandalariTroll,  127274,  126900, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 27, @ZandalariTroll,  127274,  126900, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 28, @ZandalariTroll,  127274,  126900, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 29, @ZandalariTroll,  127275,  126901, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 30, @ZandalariTroll,  127294,  126920, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 31, @ZandalariTroll,  127283,  126909, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 33, @ZandalariTroll,  127293,  126919, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 35, @ZandalariTroll,  127284,  126910, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 38, @ZandalariTroll,  127289,  126915, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 39, @ZandalariTroll,  127298,  126925, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 40, @ZandalariTroll,  127298,  126925, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 41, @ZandalariTroll,  127280,  126906, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 42, @ZandalariTroll,  127272,  126898, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 43, @ZandalariTroll,  127308,  126934, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 44, @ZandalariTroll,  127278,  126904, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 45, @ZandalariTroll,  127289,  126915, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 46, @ZandalariTroll,  127305,  126927, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 47, @ZandalariTroll,  127307,  126933, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 48, @ZandalariTroll,  127286,  126912, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 49, @ZandalariTroll,  127287,  126913, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 50, @ZandalariTroll,  127273,  126899, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 51, @ZandalariTroll,  127286,  126912, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 52, @ZandalariTroll,  127288,  126914, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 54, @ZandalariTroll,  127298,  126925, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 55, @ZandalariTroll,  127293,  126919, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 57, @ZandalariTroll,  127305,  126927, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 59, @ZandalariTroll,  127285,  126911, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 61, @ZandalariTroll,  127293,  126919, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 62, @ZandalariTroll,  127290,  126916, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 63, @ZandalariTroll,  127304,  126931, 0, 0),
(@VocalUISoundsID := @VocalUISoundsID +1, 64, @ZandalariTroll,  127302,  126929, 0, 0);

-- Troll rows for what Retail lacks
INSERT INTO `vocaluisounds` (`id`, `vocal_ui_enum`, `race_id`, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`)
SELECT @VocalUISoundsID := @VocalUISoundsID +1, `vocal_ui_enum`, @ZandalariTroll, `normal_sound_id_1`, `normal_sound_id_2`, `pissed_sound_id_1`, `pissed_sound_id_2`
FROM (SELECT `k`.* FROM `vocaluisounds` `k` LEFT JOIN `vocaluisounds` `x` ON `x`.`race_id` = @ZandalariTroll AND `x`.`vocal_ui_enum` = `k`.`vocal_ui_enum`
      WHERE `k`.`race_id` = @Troll AND `x`.`id` IS NULL ORDER BY `k`.`id`) AS `kin`;
