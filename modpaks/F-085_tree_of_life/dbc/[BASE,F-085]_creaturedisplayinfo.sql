-- [F-085] tree_of_life: creaturedisplayinfo: 6 inserts, 0 updates, 0 deletes

/* Cataclysm Tree of Life colors */
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@DruidTreeFormGreenDisplay, @DruidTreeFormRedDisplay, @DruidTreeFormPurpleDisplay, @DruidTreeFormOrangeDisplay);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidTreeFormGreenDisplay,    3805,   0, 0, 1.5, 255, 'DruidTreeFormGreen',    '',                       '', '', -1, 0, 0, 599, 0, 0),
(@DruidTreeFormRedDisplay,      3805,   0, 0, 1.5, 255, 'DruidTreeFormRed',      '',                       '', '', -1, 0, 0, 600, 0, 0),
(@DruidTreeFormPurpleDisplay,   3805,   0, 0, 1.5, 255, 'DruidTreeFormPurple',   '',                       '', '', -1, 0, 0, 601, 0, 0),
(@DruidTreeFormOrangeDisplay,   3805,   0, 0, 1.5, 255, 'DruidTreeFormOrange',   '',                       '', '', -1, 0, 0, 602, 0, 0);

/* Zandalari Troll oak (Battle for Azeroth) */
DELETE FROM `creaturedisplayinfo` WHERE `id` = @DruidTreeZandalariTrollDisplay;
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidTreeZandalariTrollDisplay,         @DruidTreeFormModel,                0, 0, 1.5, 255, 'DruidTreeFormZandalari', '', '', '', -1, 0, 0, 602, 0, 0);

/* Kul Tiran oak (Battle for Azeroth) */
DELETE FROM `creaturedisplayinfo` WHERE `id` = @DruidTreeKulTiranDisplay;
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidTreeKulTiranDisplay,         @DruidTreeFormModel,          0,                           0,                  1.5, 255, 'druidtreeformkultiran', '',  '',                      '', -1,  0, 0, 602, 0, 0);
