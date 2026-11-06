-- I-346 quest 25058 "Mine Disposal, the Goblin Way" — detonation visual, part 1 of 2.
--
-- Impact kit for SpellVisual 15420 (spell 42807 "Detonate", the land-mine explosion).
-- Ported from the 4.3.4 row for 14262. 14262 is free in our 3.3.5a spellvisualkit.
--
-- Cata SpellVisualKit has 39 fields to our 38: 4.0 inserted `AnimKitID` at index 3, so
-- every Cata field from index 3 on is ours + 1 (reference_cata_spellvisual_port). Applied:
--   Cata @1 startAnimId -1, @2 animId 121, @5 chestEffect 4663, @16 soundId 3642,
--   @17 shakeId 3, @18-21 charProc -1.
--
-- Every payload already exists in 3.3.5a with the SAME id and content — nothing to pack:
--   * effectname 4663 'Cannon Impact (x4)' -> `Spells\Canon_Impact_Dust.mdx`, scale 4.0
--     (byte-identical to the 4.3.4 row);
--   * soundentries 3642 `KnockDown.wav` — 4.3.4 writes `KnockDown.ogg`, the same clip in a
--     different container (compare the STEM, not the filename);
--   * animationdata 121 present.
-- The one exception is camerashake 3, which 3.3.5a does not have: dropped to 0, the same
-- call the emitter makes for Cata-only shakes on I-323.
DELETE FROM `spellvisualkit` WHERE id = 14262;
INSERT INTO `spellvisualkit` SET
  `id` = 14262,
  `start_anim_id` = 4294967295,
  `anim_id` = 121,
  `head_effect` = 0,
  `chest_effect` = 4663,
  `base_effect` = 0,
  `left_hand_effect` = 0,
  `right_hand_effect` = 0,
  `breath_effect` = 0,
  `left_weapon_effect` = 0,
  `right_weapon_effect` = 0,
  `special_effect_1` = 0,
  `special_effect_2` = 0,
  `special_effect_3` = 0,
  `world_effect` = 0,
  `sound_id` = 3642,
  `shake_id` = 0,
  `char_proc_1` = 4294967295,
  `char_proc_2` = 4294967295,
  `char_proc_3` = 4294967295,
  `char_proc_4` = 4294967295,
  `char_param_0_1` = 0,
  `char_param_0_2` = 0,
  `char_param_0_3` = 0,
  `char_param_0_4` = 0,
  `char_param_1_1` = 0,
  `char_param_1_2` = 0,
  `char_param_1_3` = 0,
  `char_param_1_4` = 0,
  `char_param_2_1` = 0,
  `char_param_2_2` = 0,
  `char_param_2_3` = 0,
  `char_param_2_4` = 0,
  `char_param_3_1` = 0,
  `char_param_3_2` = 0,
  `char_param_3_3` = 0,
  `char_param_3_4` = 0,
  `flags` = 0;
