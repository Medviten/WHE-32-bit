-- I-242 Honk Horn (66298) + Radio (66299) — direct spell-effect audio delivery.
--
-- History: Cata's originals target 95 (TARGET_UNIT_TARGET_PASSENGER, needs an
-- explicit passenger target -> "invalid target" from the 3.3.5a vehicle bar) and
-- rely on a retail creature script for the actual audio. A first fix retargeted to
-- caster(1) and played audio via SmartAI on-spellhit; in-game that stayed silent
-- while the pure-effect Punch It (66300) works on the same bar — so the audio now
-- rides the proven spell-effect path and the SmartAI hop is retired.
--
-- Both effects target 96 (TARGET_UNIT_PASSENGER_0 = seat 0 = the driver, resolved
-- server-side via GetVehicleKit()->GetPassenger(0)):
--   66298 eff1 = 131 SPELL_EFFECT_PLAYER_NOTIFICATION, misc 22491 (honk ogg)
--   66299 eff1 = 132 SPELL_EFFECT_PLAY_MUSIC,          misc 23406 (radio track)
-- AC's EffectPlaySound/EffectPlayMusic require a PLAYER target — passenger 0 is
-- exactly that. Known compromise: only the driver hears them (retail broadcasts
-- to nearby players via script).
--
-- Stock-row rule: the 66298/66299 INSERTs are owned by dbc/[AUTO,F-011]_spell.sql —
-- one consolidated UPDATE per id here.
UPDATE `spell` SET
  effect_implicit_target_a_1 = 96,
  effect_implicit_target_a_2 = 96
WHERE id = 66298;

UPDATE `spell` SET
  effect_1 = 132,
  effect_misc_value_a_1 = 23406,
  effect_implicit_target_a_1 = 96
WHERE id = 66299;

-- ---------------------------------------------------------------------------
-- I-242 round 7: "homie picked up" marker auras (900901-900903)
-- ---------------------------------------------------------------------------
-- One per homie, held by the PLAYER. Two jobs, same spell:
--   1. the roadside marker casts it at the Hot Rod as the pickup ping, and the
--      Hot Rod re-casts it on its charmer (the driver) -- the only exact way to
--      reach the driver from the marker's script, since SMART_TARGET_ACTION_INVOKER
--      resolves to the vehicle and only CALL_KILLEDMONSTER unwraps the charmer;
--   2. it then gates that homie's `spell_area` detection row via a negative
--      `aura_spell`, so 49416/49417/60922 is stripped and never re-autocast --
--      i.e. the marker on the roadside goes invisible for THAT player only,
--      which is what retail does (kezan.cpp removes the detect aura by hand).
--
-- Inert by design: APPLY_AURA / SPELL_AURA_DUMMY, permanent (duration_index 21),
-- range "Anywhere" (13) so neither hop can range-fail. attributes 384 =
-- DO_NOT_DISPLAY | DO_NOT_LOG, the same pair the stock Generic Quest
-- Invisibility spells use, so nothing shows on the buff bar or in the combat log.
-- Permanent -> saved to character_aura, so a pickup survives relogging; cleared
-- on quest accept by Megs 34874 (see zz_[I-242]_hotrod_homies_flavor.sql) so an
-- abandon + retake starts clean.
--
-- IDs verified free in dbc.spell, acore_world.spell_dbc and every zpak dbc/ file.

DELETE FROM `spell` WHERE id IN (900901, 900902, 900903);

INSERT INTO `spell` SET
  `id` = 900901,
  `attributes` = 384,
  `cast_time_index` = 1,
  `duration_index` = 21,
  `range_index` = 13,
  `proc_chance` = 101,
  `equipped_item_class` = -1,
  `school_mask` = 1,
  `spell_icon_id` = 1,
  `spell_name_enus` = 'Rolling with my Homies: Izzy Picked Up',
  `effect_1` = 6,
  `effect_apply_aura_name_1` = 4,
  `effect_base_points_1` = 0,
  `effect_die_sides_1` = 1,
  `effect_implicit_target_a_1` = 25;

INSERT INTO `spell` SET
  `id` = 900902,
  `attributes` = 384,
  `cast_time_index` = 1,
  `duration_index` = 21,
  `range_index` = 13,
  `proc_chance` = 101,
  `equipped_item_class` = -1,
  `school_mask` = 1,
  `spell_icon_id` = 1,
  `spell_name_enus` = 'Rolling with my Homies: Gobber Picked Up',
  `effect_1` = 6,
  `effect_apply_aura_name_1` = 4,
  `effect_base_points_1` = 0,
  `effect_die_sides_1` = 1,
  `effect_implicit_target_a_1` = 25;

INSERT INTO `spell` SET
  `id` = 900903,
  `attributes` = 384,
  `cast_time_index` = 1,
  `duration_index` = 21,
  `range_index` = 13,
  `proc_chance` = 101,
  `equipped_item_class` = -1,
  `school_mask` = 1,
  `spell_icon_id` = 1,
  `spell_name_enus` = 'Rolling with my Homies: Ace Picked Up',
  `effect_1` = 6,
  `effect_apply_aura_name_1` = 4,
  `effect_base_points_1` = 0,
  `effect_die_sides_1` = 1,
  `effect_implicit_target_a_1` = 25;
