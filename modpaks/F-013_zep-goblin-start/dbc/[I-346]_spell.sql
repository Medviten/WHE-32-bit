-- I-346 quest 25058 "Mine Disposal, the Goblin Way" — the detonation spell.
--
-- 42807 "Detonate" is what makes a Land Mine actually blow up. It exists in the 4.3.4
-- client and is ABSENT from stock 3.3.5a (verified against
-- `Zeppelin-Tools/Original DBC Files/dbc/Spell.dbc` — 42808 is present, 42807 is not), so
-- the id is free. Also checked free in our live `dbc.spell`, in world `spell_dbc` (no
-- serverside stub to shadow it — reference_spell_dbc_override_shadow) and across all
-- zpaks. It was never in the gen's spell scope because its only referents are GO 202463
-- (`trap.spellId`) and creature 75128's SmartAI, neither of which was ported.
--
-- Values are the 4.3.4 row verbatim. Two details worth stating because they look wrong:
--
-- 1. `effect_radius_index` comes from Cata SpellEffect field **16** (EffectRadiusMaxIndex),
--    not field 15 — Cata leaves the min index 0 and puts the real value in the max one, and
--    reading only 15 ships radius 0 = an area spell that hits nothing
--    (reference_cata_spell_radius_max_index). Here: effect 1 -> index 8 = 5 yards, which
--    matches the tooltip; effect 2 -> index 16 = 1 yard.
--
-- 2. **Effect 1 damages nobody, and that is retail.** Target b = 7
--    TARGET_UNIT_SRC_AREA_ENTRY selects units by creature entry through a SourceType-13
--    condition, and NEITHER donor carries one for 42807 — so the 87-112 fire damage lands
--    on nothing. That is the correct outcome, not a gap to close: 87-112 would one-shot a
--    level-5 goblin, and retail plainly does not kill you for grenading a mine. The
--    player-visible half of the spell is the visual plus effect 2.
--
-- Effect 2 is ACTIVATE_OBJECT with MiscValue 15 = GameObjectActions::Despawn over
-- target b = 51 TARGET_GAMEOBJECT_SRC_AREA at 1 yard — it despawns the mine it just blew
-- up. AC implements it (`SpellEffects.cpp:4328` -> `GameObject::DespawnOrUnsummon()`),
-- and for a spawned GO that respawns after `gameobject.spawntimesecs` (300s), so the
-- beach refills for the next player.
--
-- `spell_visual_1` 15420 is ported alongside in [I-346]_spellvisual.sql.
DELETE FROM `spell` WHERE id = 42807;
INSERT INTO `spell` SET
  `id` = 42807,
  `attributes` = 0,
  `attributes_ex_1` = 0,
  `attributes_ex_2` = 4,
  `attributes_ex_3` = 0,
  `attributes_ex_4` = 0,
  `attributes_ex_5` = 0,
  `attributes_ex_6` = 0,
  `attributes_ex_7` = 0,
  `cast_time_index` = 1,
  `duration_index` = 0,
  `range_index` = 1,
  `power_type` = 0,
  `speed` = 0,
  `spell_visual_1` = 15420,
  `spell_icon_id` = 1,
  `active_icon_id` = 0,
  `school_mask` = 4,
  `spell_name_enus` = 'Detonate',
  `spell_desc_enus` = 'The land mine detonates, doing $s1 Fire damage to all within 5 yards.',
  `spell_level` = 0,
  `base_level` = 0,
  `max_level` = 0,
  `proc_chance` = 101,
  `equipped_item_class` = -1,
  `damage_class` = 0,
  `max_affected_targets` = 0,
  `maximum_target_level` = 0,
  `target_creature_type` = 0,
  `targets` = 0,
  `effect_1` = 2,
  `effect_apply_aura_name_1` = 0,
  `effect_amplitude_1` = 0,
  `effect_base_points_1` = 86,
  `effect_die_sides_1` = 26,
  `effect_item_type_1` = 0,
  `effect_mechanic_1` = 0,
  `effect_misc_value_a_1` = 0,
  `effect_misc_value_b_1` = 0,
  `effect_radius_index_1` = 8,
  `effect_trigger_spell_1` = 0,
  `effect_implicit_target_a_1` = 22,
  `effect_implicit_target_b_1` = 7,
  `effect_real_points_per_level_1` = 0,
  `effect_spell_class_mask_a_1` = 0,
  `effect_spell_class_mask_b_1` = 0,
  `effect_spell_class_mask_c_1` = 0,
  `effect_2` = 86,
  `effect_apply_aura_name_2` = 0,
  `effect_amplitude_2` = 0,
  `effect_base_points_2` = 0,
  `effect_die_sides_2` = 0,
  `effect_item_type_2` = 0,
  `effect_mechanic_2` = 0,
  `effect_misc_value_a_2` = 15,
  `effect_misc_value_b_2` = 0,
  `effect_radius_index_2` = 16,
  `effect_trigger_spell_2` = 0,
  `effect_implicit_target_a_2` = 22,
  `effect_implicit_target_b_2` = 51,
  `effect_real_points_per_level_2` = 0,
  `effect_spell_class_mask_a_2` = 0,
  `effect_spell_class_mask_b_2` = 0,
  `effect_spell_class_mask_c_2` = 0;
