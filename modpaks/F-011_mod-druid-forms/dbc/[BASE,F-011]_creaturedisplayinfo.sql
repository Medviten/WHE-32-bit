-- [F-011] mod-druid-forms: creaturedisplayinfo: 21 inserts, 0 updates, 0 deletes

-- New entries
/* Cataclysm Druid forms (Troll ones are in F-084, Worgen ones in F-024) */
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @DruidCatSkinPurpleDisplay, @DruidOwlBearBlackSkinDisplay, @DruidOwlBearRedSkinDisplay, @StormCrowDruidSkinDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidCatSkinPurpleDisplay,    1231,   0, 0, 0.9, 255, 'DruidCatSkinPurple',    'DruidCatSkinPurple',     '', '',  1, 1, 0,   0, 0, 0),
(@DruidOwlBearBlackSkinDisplay, 2199, 204, 0, 0.9, 255, 'DruidOwlBearBlackSkin', 'DruidOwlBearBlackSkin2', '', '', -1, 0, 0,   0, 0, 0),
(@DruidOwlBearRedSkinDisplay,   2199, 204, 0, 0.9, 255, 'DruidOwlBearRedSkin',   'DruidOwlBearRedSkin2',   '', '', -1, 0, 0,   0, 0, 0),
(@StormCrowDruidSkinDisplay,    2540,   0, 0,   1, 255, 'StormCrowDruidSkin',    '',                       '', '',  1, 0, 0,   0, 0, 0);

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
