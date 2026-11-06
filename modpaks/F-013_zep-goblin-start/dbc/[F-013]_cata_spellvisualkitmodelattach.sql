-- spellvisualkitmodelattach rows ported from Cataclysm 4.0.6a (build 13623) by tools/races/cata406_dbc_port.py,
-- for F-013 (see its readme). Regenerate them with it rather than editing them here.

-- 3701 <- kit 13997
DELETE FROM `spellvisualkitmodelattach` WHERE `id` = 3701;
INSERT INTO `spellvisualkitmodelattach` SET
  `id` = 3701,
  `parent_spell_vis_kit_id` = 13997,
  `spell_vis_effect_name_id` = 3828,
  `attachment_id` = 4294967295,
  `offset_x` = 0,
  `offset_y` = 0,
  `offset_z` = 0,
  `yaw` = 0,
  `pitch` = 0,
  `roll` = 0;

-- 4110 <- kit 14361
DELETE FROM `spellvisualkitmodelattach` WHERE `id` = 4110;
INSERT INTO `spellvisualkitmodelattach` SET
  `id` = 4110,
  `parent_spell_vis_kit_id` = 14361,
  `spell_vis_effect_name_id` = 3637,
  `attachment_id` = 19,
  `offset_x` = 0,
  `offset_y` = 0,
  `offset_z` = 0,
  `yaw` = 0,
  `pitch` = 1.5708,
  `roll` = 0;
