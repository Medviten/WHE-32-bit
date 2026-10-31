-- [F-086] travel_form: creaturedisplayinfo: 7 inserts, 0 updates, 0 deletes

DELETE FROM `creaturedisplayinfo` WHERE `id` IN (@DruidTravelAllianceDisplay, @DruidTravelHordeDisplay, @DruidTravelZandalariTrollDisplay, @DruidTravelKulTiranBlueDisplay, @DruidTravelKulTiranBrownDisplay, @DruidTravelKulTiranGreenDisplay, @DruidTravelKulTiranWhiteDisplay);
INSERT INTO `creaturedisplayinfo` (`id`, `model_id`, `sound_id`, `extended_display_info_id`, `creature_model_scale`, `creature_model_alpha`, `texture_variation_1`, `texture_variation_2`, `texture_variation_3`, `portrait_texture_name`, `blood_level`, `blood_id`, `npc_sound_id`, `praticle_color_id`, `creature_geoset_data`, `obj_effect_package_id`) VALUES
(@DruidTravelAllianceDisplay, @DruidTravelAllianceModel, 0, 0, 1, 255, 'DruidTravelAlliance', 'DruidTravelAlliance', 'DruidTravelAlliance', '', 1, 0, 0, 0, 0, 0),
(@DruidTravelHordeDisplay,    @DruidTravelHordeModel,    0, 0, 1, 255, 'DruidTravelHorde',    'DruidTravelHorde',    'DruidTravelHorde',    '', 1, 0, 0, 0, 0, 0),
(@DruidTravelZandalariTrollDisplay,       @DruidTravelZandalariTrollModel,    0, 0,   1, 255, 'druidtravelzandalaritroll', '', '', '', 1, 0, 0, 0, 0, 0),
(@DruidTravelKulTiranBlueDisplay,   @DruidTravelKulTiranModel,    0,                           0,                    1, 255, 'druidtravelkultiran_blue',    '',                      '', '',  1, 0, 0, 0, 0, 0),
(@DruidTravelKulTiranBrownDisplay,  @DruidTravelKulTiranModel,    0,                           0,                    1, 255, 'druidtravelkultiran_brown',   '',                      '', '',  1, 0, 0, 0, 0, 0),
(@DruidTravelKulTiranGreenDisplay,  @DruidTravelKulTiranModel,    0,                           0,                    1, 255, 'druidtravelkultiran_green',   '',                      '', '',  1, 0, 0, 0, 0, 0),
(@DruidTravelKulTiranWhiteDisplay,  @DruidTravelKulTiranModel,    0,                           0,                    1, 255, 'druidtravelkultiran_white',   '',                      '', '',  1, 0, 0, 0, 0, 0);
