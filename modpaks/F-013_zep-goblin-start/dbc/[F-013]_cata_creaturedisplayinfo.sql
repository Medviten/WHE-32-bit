-- creaturedisplayinfo rows ported from Cataclysm 4.0.6a (build 13623) by tools/races/cata406_dbc_port.py,
-- for F-013 (see its readme). Regenerate them with it rather than editing them here.

-- 29681 Creature\GNOMESPIDERTANK\GnomeSpiderTank02.mdx (GnomeSpiderTankSkinBlack)
DELETE FROM `creaturedisplayinfo` WHERE `id` = 29681;
INSERT INTO `creaturedisplayinfo` SET
  `id` = 29681,
  `model_id` = 2788,
  `sound_id` = 0,
  `extended_display_info_id` = 0,
  `creature_model_scale` = 1.75,
  `creature_model_alpha` = 255,
  `texture_variation_1` = 'GnomeSpiderTankSkinBlack',
  `texture_variation_2` = '',
  `texture_variation_3` = '',
  `portrait_texture_name` = '',
  `blood_level` = -1,
  `blood_id` = 0,
  `npc_sound_id` = 0,
  `praticle_color_id` = 0,
  `creature_geoset_data` = 0,
  `obj_effect_package_id` = 0;
