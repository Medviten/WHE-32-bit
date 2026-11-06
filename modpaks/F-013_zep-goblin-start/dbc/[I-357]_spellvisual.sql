-- I-357 -- re-ships the two Gallywix Labor Mine missile visuals with the one repaired
-- slot each. Every other column is the [AUTO,F-011] emitter output, unchanged, and matches
-- the 4.3.4 row field-for-field (Cata SpellVisual indices 1..26 are identical to ours).
--
-- Loads after [AUTO,F-011]_spellvisual.sql ('A' < 'I' inside '[' ), so a re-gen of the
-- AUTO file cannot reintroduce the zeros. See [I-357]_spellvisualeffectname.sql for the
-- 90108 / 90109 rows and why the slot was zeroed.

-- Spell 73583 "Kaja'Cola Zero-One" (item 84332), q25122 Morale Boost.
-- Cast kit 172 is anim-only + sound 7140; the missile is the whole visual.
DELETE FROM `spellvisual` WHERE id = 15509;
INSERT INTO `spellvisual` SET
  `id` = 15509,
  `precast_kit` = 0,
  `cast_kit` = 172,
  `impact_kit` = 0,
  `state_kit` = 0,
  `state_done_kit` = 0,
  `channel_kit` = 0,
  `has_missile` = 1,
  `missile_model` = 90108,   -- was 0: emitter could not resolve Cata effectname 6094
  `missile_path_type` = 0,
  `missile_dest_attachment` = 0,
  `missile_sound` = 7140,
  `anim_event_sound_id` = 0,
  `flags` = 33,
  `caster_impact_kit` = 0,
  `target_impact_kid` = 0,
  `missile_attachment` = 4294967295,
  `missile_follow_ground_height` = 0,
  `missile_follow_drop_speed` = 300,
  `missile_follow_approach` = 750,
  `missile_follow_ground_flags` = 4,
  `missile_motion` = 38,
  `missile_targeting_kit` = 0,
  `instant_area_kit` = 0,
  `impact_area_kit` = 0,
  `persistent_area_kit` = 0,
  `missile_cast_offset_x` = 0,
  `missile_cast_offset_y` = 0,
  `missile_cast_offset_z` = 0,
  `missile_impact_offset_x` = 0,
  `missile_impact_offset_y` = 0,
  `missile_impact_offset_z` = 0;

-- Spell 73702 "Blastshadow's Soulstone", q25123 Throw It On the Ground!
-- Precast 171 / cast 172 / impact 8551 all exist stock; again only the missile was lost.
DELETE FROM `spellvisual` WHERE id = 15525;
INSERT INTO `spellvisual` SET
  `id` = 15525,
  `precast_kit` = 171,
  `cast_kit` = 172,
  `impact_kit` = 8551,
  `state_kit` = 0,
  `state_done_kit` = 0,
  `channel_kit` = 0,
  `has_missile` = 1,
  `missile_model` = 90109,   -- was 0: emitter could not resolve Cata effectname 6478
  `missile_path_type` = 0,
  `missile_dest_attachment` = 1,
  `missile_sound` = 7140,
  `anim_event_sound_id` = 0,
  `flags` = 33,
  `caster_impact_kit` = 0,
  `target_impact_kid` = 0,
  `missile_attachment` = 4294967295,
  `missile_follow_ground_height` = 0,
  `missile_follow_drop_speed` = 300,
  `missile_follow_approach` = 750,
  `missile_follow_ground_flags` = 4,
  `missile_motion` = 38,
  `missile_targeting_kit` = 0,
  `instant_area_kit` = 0,
  `impact_area_kit` = 0,
  `persistent_area_kit` = 0,
  `missile_cast_offset_x` = 0,
  `missile_cast_offset_y` = 0,
  `missile_cast_offset_z` = 0,
  `missile_impact_offset_x` = 0,
  `missile_impact_offset_y` = 0,
  `missile_impact_offset_z` = 0;
