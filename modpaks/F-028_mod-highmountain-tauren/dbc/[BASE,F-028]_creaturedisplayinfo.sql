-- creaturedisplayinfo: 14 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `creaturedisplayinfo` WHERE `id` IN (
    @HighmountainTaurenMaleDisplay,           @HighmountainTaurenFemaleDisplay,         @HighmountainTaurenMount1Display,
    @DruidBearHighmountainTaurenBlackDisplay, @DruidBearHighmountainTaurenBrownDisplay, @DruidBearHighmountainTaurenSilverDisplay, @DruidBearHighmountainTaurenWhiteDisplay, @DruidBearHighmountainTaurenYellowDisplay,
    @DruidCatHighmountainTaurenBlackDisplay,  @DruidCatHighmountainTaurenBrownDisplay,  @DruidCatHighmountainTaurenRedDisplay,     @DruidCatHighmountainTaurenWhiteDisplay,
    @DruidMoonkinHighmountainTaurenDisplay,
    @DruidFlightHighmountainTaurenDisplay
);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@HighmountainTaurenMaleDisplay,             @HighmountainTaurenMaleModel,            0, @HighmountainTaurenMaleDisplayExtra,   '1', 255, '',                            '',                               '',                  '',  3, 0, 0, 0, 0, 0),
(@HighmountainTaurenFemaleDisplay,           @HighmountainTaurenFemaleModel,          0, @HighmountainTaurenFemaleDisplayExtra, '1', 255, '',                            '',                               '',                  '',  3, 0, 0, 0, 0, 0),
(@HighmountainTaurenMount1Display,            @HighmountainTaurenMount1Model,           0,                                     0,   1, 255, 'hmmoosemount',                'hmmoosemount_saddle',            '',                  '',  1, 0, 0, 0, 0, 0),
/* Battle for Azeroth Druid forms (random ID because I couldn't open the DB2 files) */
(@DruidFlightHighmountainTaurenDisplay,      @DruidFlightHighmountainTaurenModel,     0,                                     0,   1, 255, 'druidflighthmtauren_brown',   'druidflighthmtauren_brown',      '',                  '',  1, 0, 0, 0, 0, 0),
(@DruidBearHighmountainTaurenBlackDisplay,   @DruidBearHighmountainTaurenModel,    3022,                                     0,   1, 255, 'druidbearhmtauren_black',     '',                               '',                  '',  1, 0, 0, 0, 0, 0),
(@DruidBearHighmountainTaurenBrownDisplay,   @DruidBearHighmountainTaurenModel,    3022,                                     0,   1, 255, 'druidbearhmtauren_brown',     '',                               '',                  '',  1, 0, 0, 0, 0, 0),
(@DruidBearHighmountainTaurenSilverDisplay,  @DruidBearHighmountainTaurenModel,    3022,                                     0,   1, 255, 'druidbearhmtauren_silver',    '',                               '',                  '',  1, 0, 0, 0, 0, 0),
(@DruidBearHighmountainTaurenWhiteDisplay,   @DruidBearHighmountainTaurenModel,    3022,                                     0,   1, 255, 'druidbearhmtauren_white',     '',                               '',                  '',  1, 0, 0, 0, 0, 0),
(@DruidBearHighmountainTaurenYellowDisplay,  @DruidBearHighmountainTaurenModel,    3022,                                     0,   1, 255, 'druidbearhmtauren_yellow',    '',                               '',                  '',  1, 0, 0, 0, 0, 0),
(@DruidCatHighmountainTaurenBlackDisplay,    @DruidCatHighmountainTaurenModel,        0,                                     0,   1, 255, 'druidcathmtauren_1black',     'druidcathmtauren_2hornsblack',   '',                  '', -1, 0, 0, 0, 0, 0),
(@DruidCatHighmountainTaurenBrownDisplay,    @DruidCatHighmountainTaurenModel,        0,                                     0,   1, 255, 'druidcathmtauren_1brown',     'druidcathmtauren_2hornsbrown',   '',                  '', -1, 0, 0, 0, 0, 0),
(@DruidCatHighmountainTaurenRedDisplay,      @DruidCatHighmountainTaurenModel,        0,                                     0,   1, 255, 'druidcathmtauren_1red',       'druidcathmtauren_2hornsred',     '',                  '', -1, 0, 0, 0, 0, 0),
(@DruidCatHighmountainTaurenWhiteDisplay,    @DruidCatHighmountainTaurenModel,        0,                                     0,   1, 255, 'druidcathmtauren_1white',     'druidcathmtauren_2hornswhite',   '',                  '', -1, 0, 0, 0, 0, 0),
(@DruidMoonkinHighmountainTaurenDisplay,     @DruidMoonkinHighmountainTaurenModel,  204,                                     0, 0.9, 255, 'druidowlbear2_hmt',           'druidowlbear2_hmt_horns',        'druidowlbear2_ta',  '', -1, 0, 0, 0, 0, 0);

