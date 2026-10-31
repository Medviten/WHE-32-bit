-- creaturedisplayinfo: 18 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @ZandalariTrollMaleDisplay,             @ZandalariTrollFemaleDisplay,
    @DruidAquaticZandalariTrollTealDisplay, @DruidAquaticZandalariTrollDarkDisplay, @DruidAquaticZandalariTrollGreenDisplay, @DruidAquaticZandalariTrollLightDisplay,
    @DruidBearZandalariTrollBlueDisplay,    @DruidBearZandalariTrollDarkDisplay,    @DruidBearZandalariTrollGreenDisplay,    @DruidBearZandalariTrollWhiteDisplay,
    @DruidCatZandalariTrollBlackDisplay,    @DruidCatZandalariTrollBlueDisplay,     @DruidCatZandalariTrollGreenDisplay,     @DruidCatZandalariTrollWhiteDisplay,
    @DruidFlightZandalariTrollDisplay,
    @DruidMoonkinZandalariTrollDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@ZandalariTrollMaleDisplay,              @ZandalariTrollMaleModel, 0, @ZandalariTrollMaleDisplayExtra, '1', 255, '', '', '', '', 3, 0, 0, 0, 0, 0),
(@ZandalariTrollFemaleDisplay,            @ZandalariTrollFemaleModel, 0, @ZandalariTrollFemaleDisplayExtra, '1', 255, '', '', '', '', 3, 0, 0, 0, 0, 0),
(@DruidBearZandalariTrollBlueDisplay,     @DruidBearZandalariTrollModel,      0, 0,   1, 255, 'druidbearzandalaritroll_blue', '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidBearZandalariTrollDarkDisplay,     @DruidBearZandalariTrollModel,      0, 0,   1, 255, 'druidbearzandalaritroll_dark', '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidBearZandalariTrollGreenDisplay,    @DruidBearZandalariTrollModel,      0, 0,   1, 255, 'druidbearzandalaritroll_green', '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidBearZandalariTrollWhiteDisplay,    @DruidBearZandalariTrollModel,      0, 0,   1, 255, 'druidbearzandalaritroll_white', '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidCatZandalariTrollBlackDisplay,     @DruidCatZandalariTrollModel,       0, 0,   1, 255, 'druidcatzandalaritroll_black', '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatZandalariTrollBlueDisplay,      @DruidCatZandalariTrollModel,       0, 0,   1, 255, 'druidcatzandalaritroll_blue', '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatZandalariTrollGreenDisplay,     @DruidCatZandalariTrollModel,       0, 0,   1, 255, 'druidcatzandalaritroll_green', '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidCatZandalariTrollWhiteDisplay,     @DruidCatZandalariTrollModel,       0, 0,   1, 255, 'druidcatzandalaritroll_white', '', '', '', -1, 0, 0, 0, 0, 0),
(@DruidFlightZandalariTrollDisplay,       @DruidFlightZandalariTrollModel,    0, 0, 0.1, 255, 'druidflightzandalaritroll', '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidMoonkinZandalariTrollDisplay,      @DruidMoonkinZandalariTrollModel, 204, 0, 0.9, 255, 'druidowlbearzandalariepic2_body', 'druidowlbearzandalariepic2_armor', 'armorreflectgold5', '', -1, 0, 0, 0, 0, 0),
(@DruidAquaticZandalariTrollTealDisplay,  @DruidAquaticZandalariTrollModel,   0, 0, 0.5, 255, 'druidaquaticzandalari_teal', '', '', '', 0, 0, 0, 0, 0, 0),
(@DruidAquaticZandalariTrollDarkDisplay,  @DruidAquaticZandalariTrollModel,   0, 0, 0.5, 255, 'druidaquaticzandalari_dark', '', '', '', 0, 0, 0, 0, 0, 0),
(@DruidAquaticZandalariTrollGreenDisplay, @DruidAquaticZandalariTrollModel,   0, 0, 0.5, 255, 'druidaquaticzandalari_green', '', '', '', 0, 0, 0, 0, 0, 0),
(@DruidAquaticZandalariTrollLightDisplay, @DruidAquaticZandalariTrollModel,   0, 0, 0.5, 255, 'druidaquaticzandalari_light', '', '', '', 0, 0, 0, 0, 0, 0);

-- Racial mount
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@ZandalariTrollMount1Display);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@ZandalariTrollMount1Display, @ZandalariTrollMount1Model, 0, 0, '0.5', 255, 'triceratopszandalari', 'triceratopsmountzandalari', '', '', 1, 0, 0, 0, 0, 0);
