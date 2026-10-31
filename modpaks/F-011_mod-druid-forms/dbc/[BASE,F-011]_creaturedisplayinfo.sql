-- [F-011] mod-druid-forms: creaturedisplayinfo: 28 inserts, 0 updates, 0 deletes

-- New entries
/* Cataclysm Druid forms: Troll (Worgen ones are in F-024) */
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

/* Cataclysm Druid forms (not conflicting) */
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @DruidCatSkinPurpleDisplay, @DruidTreeFormGreenDisplay, @DruidTreeFormRedDisplay, @DruidTreeFormPurpleDisplay, @DruidTreeFormOrangeDisplay, @DruidOwlBearBlackSkinDisplay, @DruidOwlBearRedSkinDisplay, @StormCrowDruidSkinDisplay, @EpicDruidFlightTrollDisplay, @DruidFlightTrollDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidCatSkinPurpleDisplay,    1231,   0, 0, 0.9, 255, 'DruidCatSkinPurple',    'DruidCatSkinPurple',     '', '',  1, 1, 0,   0, 0, 0),
(@DruidTreeFormGreenDisplay,    3805,   0, 0, 1.5, 255, 'DruidTreeFormGreen',    '',                       '', '', -1, 0, 0, 599, 0, 0),
(@DruidTreeFormRedDisplay,      3805,   0, 0, 1.5, 255, 'DruidTreeFormRed',      '',                       '', '', -1, 0, 0, 600, 0, 0),
(@DruidTreeFormPurpleDisplay,   3805,   0, 0, 1.5, 255, 'DruidTreeFormPurple',   '',                       '', '', -1, 0, 0, 601, 0, 0),
(@DruidTreeFormOrangeDisplay,   3805,   0, 0, 1.5, 255, 'DruidTreeFormOrange',   '',                       '', '', -1, 0, 0, 602, 0, 0),
(@DruidOwlBearBlackSkinDisplay, 2199, 204, 0, 0.9, 255, 'DruidOwlBearBlackSkin', 'DruidOwlBearBlackSkin2', '', '', -1, 0, 0,   0, 0, 0),
(@DruidOwlBearRedSkinDisplay,   2199, 204, 0, 0.9, 255, 'DruidOwlBearRedSkin',   'DruidOwlBearRedSkin2',   '', '', -1, 0, 0,   0, 0, 0),
(@StormCrowDruidSkinDisplay,    2540,   0, 0,   1, 255, 'StormCrowDruidSkin',    '',                       '', '',  1, 0, 0,   0, 0, 0),
(@EpicDruidFlightTrollDisplay,  3846,   0, 0,   1, 255, 'EpicDruidFlightTroll1', 'EpicDruidFlightTroll2',  '', '',  1, 0, 0,   0, 0, 0),
(@DruidFlightTrollDisplay,      3846,   0, 0,   1, 255, 'DruidFlightTroll1',     'DruidFlightTroll2',      '', '',  1, 0, 0,   0, 0, 0);

/* Mists of Pandaria Druid forms */
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@DruidTravelAllianceDisplay, @DruidTravelHordeDisplay); -- New travel forms
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidTravelAllianceDisplay, @DruidTravelAllianceModel, 0, 0, 1, 255, 'DruidTravelAlliance', 'DruidTravelAlliance', 'DruidTravelAlliance', '', 1, 0, 0, 0, 0, 0),
(@DruidTravelHordeDisplay,    @DruidTravelHordeModel,    0, 0, 1, 255, 'DruidTravelHorde',    'DruidTravelHorde',    'DruidTravelHorde',    '', 1, 0, 0, 0, 0, 0);

/* Makeshift Druid Forms */
-- IDs from config.sql ("Pseudo-druid Forms"); the trailing comments are the IDs these rows had in High Elf's DBCs
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @DruidBearSkinBlackDiseased, @DruidBearSkinDrkBrownDiseased, @DruidBearSkinBrownDiseased, @DruidBearSkinWhiteDiseased, @DruidEntSkinDiseased, @DruidBearSkinBlackDiseased2,
    @DruidSharkSkinPurple, @DruidEntSkinDead, @DruidLasherOrchidSkinGreen, @DruidLasherOrchidSkinBrown, @DruidLasherOrchidSkinPurple
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidBearSkinBlackDiseased, 83, 0, 0, '1.0000000000000000', 255, 'BearSkinBlackDiseased', '', '', '', 2, 0, 0, 0, 0, 0), -- 94137
(@DruidBearSkinDrkBrownDiseased, 83, 0, 0, '1.0000000000000000', 255, 'BearSkinDrkBrownDiseased', '', '', '', 2, 0, 0, 0, 0, 0), -- 94138
(@DruidBearSkinBrownDiseased, 83, 0, 0, '1.0000000000000000', 255, 'BearSkinBrownDiseased', '', '', '', 4, 0, 0, 0, 0, 0), -- 94139
(@DruidBearSkinWhiteDiseased, 83, 0, 0, '1.0000000000000000', 255, 'BearSkinWhiteDiseased', '', '', '', -1, 0, 0, 0, 0, 0), -- 94140
(@DruidEntSkinDiseased, 141, 0, 0, '1.0000000000000000', 255, 'EntSkinDiseased', '', '', '', -1, 0, 0, 0, 0, 0), -- 94141
(@DruidBearSkinBlackDiseased2, 83, 0, 0, '1.0000000000000000', 255, 'BearSkinBlackDiseased', '', '', '', 2, 0, 0, 0, 0, 0), -- 94142
(@DruidSharkSkinPurple, 193, 0, 0, '0.8000000119209290', 255, 'SharkSkinPurple', '', '', '', 2, 0, 0, 0, 0, 0), -- 94143
(@DruidEntSkinDead, 141, 0, 0, '1.0000000000000000', 255, 'EntSkinDead', '', '', '', 2, 0, 0, 0, 0, 0), -- 94144
(@DruidLasherOrchidSkinGreen, 2380, 0, 0, '0.6000000238418579', 255, 'LasherOrchidSkinGreen', '', '', '', -1, 0, 0, 0, 0, 0), -- 94145
(@DruidLasherOrchidSkinBrown, 2380, 0, 0, '0.6000000238418579', 255, 'LasherOrchidSkinBrown', '', '', '', -1, 0, 0, 0, 0, 0), -- 94146
(@DruidLasherOrchidSkinPurple, 2380, 0, 0, '0.6000000238418579', 255, 'LasherOrchidSkinPurple', '', '', '', -1, 0, 0, 0, 0, 0); -- 94147
