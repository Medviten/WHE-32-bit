-- I-377 Raging Ember model: Draenor fire elemental (retail creature/fireelementaldraenor,
-- FDID 1025028). The Asset Library carries a 3.3.5 conversion (MD20 v264, 37 anims), so it
-- ships as a native model in PATCH-Z (zep-goblin-start source-assets
-- Creature\FireElementalDraenor\), no WarcraftXL runtime downport needed. Four of its 13
-- textures were missing from the library copy and were fetched from retail by FDID
-- (1025099/1025100/1025104/1025105). Row fields follow stock fire elemental model 160;
-- geo box from the M2 vertex box.
DELETE FROM `creaturemodeldata` WHERE `id` = 900204;
INSERT INTO `creaturemodeldata` SET
  `id` = 900204,
  `flags` = 11,
  `model_path` = 'Creature\\FireElementalDraenor\\FireElementalDraenor.mdx',
  `size_class` = 1,
  `model_scale` = 1,
  `blood_id` = 4294967295,
  `footprint_texture_id` = 4294967295,
  `footprint_texture_length` = 18,
  `footprint_texture_width` = 12,
  `footprint_particle_scale` = 1,
  `foley_material_id` = 0,
  `footstep_shake_size` = 0,
  `death_thud_shake_size` = 0,
  `sound_data` = 158,
  `collision_width` = 0.6111,
  `collision_height` = 2.031,
  `mount_height` = 0,
  `geo_box_min_x` = -3.03,
  `geo_box_min_y` = -2.65,
  `geo_box_min_z` = -0.37,
  `geo_box_max_x` = 3.71,
  `geo_box_max_y` = 2.55,
  `geo_box_max_z` = 6.15,
  `world_effect_scale` = 1,
  `attached_effect_scale` = 1,
  `missile_collision_radius` = 0,
  `missile_collision_push` = 0,
  `missile_collision_raise` = 0;
