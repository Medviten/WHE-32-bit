-- I-346 quest 25058 "Mine Disposal, the Goblin Way" — the thrown grenade had no model.
--
-- Re-ships SpellVisual 15463 (spell 73417 "Satchel of Grenades") with the one repaired
-- slot. Every other column is the [AUTO,F-011] emitter output, unchanged, and matches the
-- 4.3.4 row field-for-field (indices 1..26 are identical between the two builds).
--
-- `missile_model` was 0. `has_missile` = 1 with `missile_model` = 0 does NOT render an
-- invisible projectile as previously assumed on I-323 — the client draws its missing-model
-- placeholder, the checkered cube the user reported. 90106 is the hand-added effectname
-- for Cata 6451 `spells\torchlit.mdx`, see [I-346]_spellvisualeffectname.sql.
--
-- Loads after [AUTO,F-011]_spellvisual.sql (A < I), so a re-gen of the AUTO file does not
-- reintroduce the zero.
DELETE FROM `spellvisual` WHERE id = 15463;
INSERT INTO `spellvisual` SET
  `id` = 15463,
  `precast_kit` = 171,
  `cast_kit` = 172,
  `impact_kit` = 0,
  `state_kit` = 0,
  `state_done_kit` = 0,
  `channel_kit` = 0,
  `has_missile` = 1,
  `missile_model` = 90106,   -- was 0: emitter could not resolve Cata effectname 6451
  `missile_path_type` = 0,
  `missile_dest_attachment` = 1,
  `missile_sound` = 0,
  `anim_event_sound_id` = 0,
  `flags` = 0,
  `caster_impact_kit` = 0,
  `target_impact_kid` = 0,
  `missile_attachment` = 4294967295,
  `missile_follow_ground_height` = 0,
  `missile_follow_drop_speed` = 300,
  `missile_follow_approach` = 750,
  `missile_follow_ground_flags` = 4,
  `missile_motion` = 362,
  `missile_targeting_kit` = 0,
  `instant_area_kit` = 0,
  `impact_area_kit` = 9265,
  `persistent_area_kit` = 0,
  `missile_cast_offset_x` = 0,
  `missile_cast_offset_y` = 0,
  `missile_cast_offset_z` = 0,
  `missile_impact_offset_x` = 0,
  `missile_impact_offset_y` = 0,
  `missile_impact_offset_z` = 0;

-- =========================================================================
-- Detonation visual — SpellVisual 15420 (spell 42807 "Detonate")
-- =========================================================================
-- The land-mine explosion. Verbatim 4.3.4 row for 15420 (Cata SpellVisual indices 1..26
-- are identical to ours; the extra Cata field is appended at the end). 15420 is free in
-- our 3.3.5a spellvisual. Its only payload is impact kit 14262, see
-- [I-346]_spellvisualkit.sql — no missile, no models to pack.
DELETE FROM `spellvisual` WHERE id = 15420;
INSERT INTO `spellvisual` SET
  `id` = 15420,
  `precast_kit` = 0,
  `cast_kit` = 0,
  `impact_kit` = 14262,
  `state_kit` = 0,
  `state_done_kit` = 0,
  `channel_kit` = 0,
  `has_missile` = 0,
  `missile_model` = 0,
  `missile_path_type` = 0,
  `missile_dest_attachment` = 0,
  `missile_sound` = 0,
  `anim_event_sound_id` = 0,
  `flags` = 0,
  `caster_impact_kit` = 0,
  `target_impact_kid` = 0,
  `missile_attachment` = 4294967295,
  `missile_follow_ground_height` = 0,
  `missile_follow_drop_speed` = 300,
  `missile_follow_approach` = 750,
  `missile_follow_ground_flags` = 4,
  `missile_motion` = 0,
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
