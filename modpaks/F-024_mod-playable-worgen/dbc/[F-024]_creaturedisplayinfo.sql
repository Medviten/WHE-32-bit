-- New entries
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @WorgenWildMaleDisplay,     @WorgenWildFemaleDisplay,
    @DruidBearWorgenDisplay,    @DruidBearWorgenBlackDisplay,    @DruidBearWorgenBrownDisplay,    @DruidBearWorgenTanDisplay,      @DruidBearWorgenWhiteDisplay,
    @DruidCatSkinWorgenDisplay, @DruidCatSkinWorgenBlackDisplay, @DruidCatSkinWorgenBrownDisplay, @DruidCatSkinWorgenWhiteDisplay, @DruidCatSkinWorgenYellowDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
-- Worgen racial support
(@WorgenWildMaleDisplay, @WorgenWildMaleModel, 0, @WorgenMaleDisplayExtra, 1, 255, '', '', '', '', 3, 0, 0, 0, 0, 0),
(@WorgenWildFemaleDisplay, @WorgenWildFemaleModel, 0, @WorgenFemaleDisplayExtra, 1, 255, '', '', '', '', 3, 0, 0, 0, 0, 0),

-- Cataclysm druid forms
(@DruidBearWorgenDisplay,          @DruidBearWorgenModel, 0, 0, '1.0000000000000000', 255, 'DruidBearWorgen',          '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidBearWorgenBlackDisplay,     @DruidBearWorgenModel, 0, 0, '1.0000000000000000', 255, 'DruidBearWorgenBlack',     '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidBearWorgenBrownDisplay,     @DruidBearWorgenModel, 0, 0, '1.0000000000000000', 255, 'DruidBearWorgenBrown',     '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidBearWorgenTanDisplay,       @DruidBearWorgenModel, 0, 0, '1.0000000000000000', 255, 'DruidBearWorgenTan',       '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidBearWorgenWhiteDisplay,     @DruidBearWorgenModel, 0, 0, '1.0000000000000000', 255, 'DruidBearWorgenWhite',     '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidCatSkinWorgenDisplay,       @DruidCatWorgenModel,  0, 0, '1.0000000000000000', 255, 'DruidCatSkinWorgen',       '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatSkinWorgenBlackDisplay,  @DruidCatWorgenModel,  0, 0, '1.0000000000000000', 255, 'DruidCatSkinWorgenBlack',  '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatSkinWorgenBrownDisplay,  @DruidCatWorgenModel,  0, 0, '1.0000000000000000', 255, 'DruidCatSkinWorgenBrown',  '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatSkinWorgenWhiteDisplay,  @DruidCatWorgenModel,  0, 0, '1.0000000000000000', 255, 'DruidCatSkinWorgenWhite',  '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatSkinWorgenYellowDisplay, @DruidCatWorgenModel,  0, 0, '1.0000000000000000', 255, 'DruidCatSkinWorgenYellow', '', '', '', -1, 0, 0, 0, 0, 0);

/* Druid form rows that other modpaks (e.g. F-011_mod-druid-forms) insert too, identically: this modpak needs them without F-011 */
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@EpicDruidFlightWorgenDisplay, @DruidTreeFormRedDisplay, @DruidOwlBearBlackSkinDisplay);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@EpicDruidFlightWorgenDisplay, 3845,   0, 0,   1, 255, 'EpicDruidFlightWorgen', '',                       '', '',  1, 0, 0,   0, 0, 0),
(@DruidTreeFormRedDisplay,      3805,   0, 0, 1.5, 255, 'DruidTreeFormRed',      '',                       '', '', -1, 0, 0, 600, 0, 0),
(@DruidOwlBearBlackSkinDisplay, 2199, 204, 0, 0.9, 255, 'DruidOwlBearBlackSkin', 'DruidOwlBearBlackSkin2', '', '', -1, 0, 0,   0, 0, 0);
