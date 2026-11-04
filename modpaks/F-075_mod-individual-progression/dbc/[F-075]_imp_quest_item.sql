-- Grell Finger, the quest item of sql/db-world/base/[F-075]_worgen_imp_quest.sql, and its display
DELETE FROM `item` WHERE `id` = 90000;
INSERT INTO `item` (`id`, `class`, `subclass`, `sound_override_subclass`, `material`, `display_id`, `inventory_type`, `sheath`) VALUES
(90000, 12, 0, -1, -1, 75787, 0, 0);

DELETE FROM `itemdisplayinfo` WHERE `id` = 75787;
INSERT INTO `itemdisplayinfo` (`id`, `left_model`, `right_model`, `left_model_texture`, `right_model_texture`, `icon_1`, `icon_2`, `geoset_group_1`, `geoset_group_2`, `geoset_group_3`, `flags`, `spell_visual_id`, `group_sound_index`, `helmet_geoset_male`, `helmet_geoset_female`, `upper_arm_texture`, `lower_arm_texture`, `hands_texture`, `upper_torso_texture`, `lower_torso_texture`, `upper_leg_texture`, `lower_leg_texture`, `foot_texture`, `item_visual`, `particle_colour_id`) VALUES
(75787, '', '', '', '', 'Inv_wand_12', '', 0, 0, 1, 0, 0, 15, 0, 0, '', '', '', '', '', '', '', '', 0, 0);
