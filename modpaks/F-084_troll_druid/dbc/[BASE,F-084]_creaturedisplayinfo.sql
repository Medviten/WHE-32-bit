-- [F-084] troll_druid: creaturedisplayinfo: 14 inserts, 0 updates, 0 deletes

/* Cataclysm Troll druid forms */
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @DruidBearTrollBlueDisplay, @DruidBearTrollPurpleDisplay, @DruidBearTrollRedDisplay, @DruidBearTrollWhiteDisplay, @DruidBearTrollYellowDisplay, @DruidCatTrollSkinBlackDisplay, @DruidCatTrollSkinBlueDisplay, @DruidCatTrollSkinGreenDisplay, @DruidCatTrollSkinRedDisplay, @DruidCatTrollSkinWhiteDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidBearTrollBlueDisplay,       @DruidBearTrollModel,  0, 0, 1,  255, 'DruidBearTrollBlue',       '', '', '',  1, 0, 0, 0, 0, 0),
(@DruidBearTrollPurpleDisplay,     @DruidBearTrollModel,  0, 0, 1,  255, 'DruidBearTrollPurple',     '', '', '',  1, 0, 0, 0, 0, 0),
(@DruidBearTrollRedDisplay,        @DruidBearTrollModel,  0, 0, 1,  255, 'DruidBearTrollRed',        '', '', '',  1, 0, 0, 0, 0, 0),
(@DruidBearTrollWhiteDisplay,      @DruidBearTrollModel,  0, 0, 1,  255, 'DruidBearTrollWhite',      '', '', '',  1, 0, 0, 0, 0, 0),
(@DruidBearTrollYellowDisplay,     @DruidBearTrollModel,  0, 0, 1,  255, 'DruidBearTrollYellow',     '', '', '',  1, 0, 0, 0, 0, 0),
(@DruidCatTrollSkinBlackDisplay,   @DruidCatTrollModel,   0, 0, 1,  255, 'DruidCatTrollSkinBlack',   '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatTrollSkinBlueDisplay,    @DruidCatTrollModel,   0, 0, 1,  255, 'DruidCatTrollSkinBlue',    '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatTrollSkinGreenDisplay,   @DruidCatTrollModel,   0, 0, 1,  255, 'DruidCatTrollSkinGreen',   '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatTrollSkinRedDisplay,     @DruidCatTrollModel,   0, 0, 1,  255, 'DruidCatTrollSkinRed',     '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatTrollSkinWhiteDisplay,   @DruidCatTrollModel,   0, 0, 1,  255, 'DruidCatTrollSkinWhite',   '', '', '', -1, 0, 0, 0, 0, 0);

DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @DruidFlightTrollDisplay, @EpicDruidFlightTrollDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidFlightTrollDisplay,      3846,   0, 0,   1, 255, 'DruidFlightTroll1',     'DruidFlightTroll2',      '', '',  1, 0, 0,   0, 0, 0),
(@EpicDruidFlightTrollDisplay,  3846,   0, 0,   1, 255, 'EpicDruidFlightTroll1', 'EpicDruidFlightTroll2',  '', '',  1, 0, 0,   0, 0, 0);

/* Shared with F-011_mod-druid-forms, which inserts the same rows */
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @DruidOwlBearRedSkinDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidOwlBearRedSkinDisplay,   2199, 204, 0, 0.9, 255, 'DruidOwlBearRedSkin',   'DruidOwlBearRedSkin2',   '', '', -1, 0, 0,   0, 0, 0);
