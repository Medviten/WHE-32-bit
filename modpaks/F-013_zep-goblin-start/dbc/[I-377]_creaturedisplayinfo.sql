-- I-377 Raging Ember display -> model 900204 (Draenor fire elemental). Textures are
-- hard-coded in the M2 (all type 0), so no texture variations. Sound/blood/particle colour
-- from stock fire elemental display 1405.
DELETE FROM `creaturedisplayinfo` WHERE `id` = 900343;
INSERT INTO `creaturedisplayinfo` SET
  `id` = 900343,
  `model_id` = 900204,
  `sound_id` = 0,
  `extended_display_info_id` = 0,
  `creature_model_scale` = 1,
  `creature_model_alpha` = 255,
  `texture_variation_1` = '',
  `texture_variation_2` = '',
  `texture_variation_3` = '',
  `portrait_texture_name` = '',
  `blood_level` = 1,
  `blood_id` = 0,
  `npc_sound_id` = 0,
  `praticle_color_id` = 330,
  `creature_geoset_data` = 0,
  `obj_effect_package_id` = 0;
