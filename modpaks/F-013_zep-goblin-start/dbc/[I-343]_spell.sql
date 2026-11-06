-- I-343 round 2: seat-specific ride spells for the Old Friends bomber (vehicle 657).
--
-- AzerothCore resolves the seat from the CONTROL_VEHICLE effect's calculated amount:
--   AuraEffect::HandleAuraControlVehicle (SpellAuraEffects.cpp:3803)
--       caster->_EnterVehicle(vehicleKit, m_amount - 1, aurApp);
--   SpellEffectInfo::CalcValue           (SpellInfo.cpp:431)
--       amount = BasePoints, +1 when DieSides == 1, +rand(1,DieSides) above that.
-- So amount 0 -> seat -1 (first free), amount 2 -> seat 1, amount 3 -> seat 2.
--
-- Round 1 used stock 46598 "Ride Vehicle Hardcoded" (0/0 -> amount 0 -> first free)
-- for BOTH the player and Sassy, because the donor's own 73137 is not in 3.3.5a.
-- Vehicle::AddPassenger with seatId -1 (Vehicle.cpp:368) only hands out a seat with
-- CanEnterOrExit() or IsUsableByOverride(), and on vehicle 657 that is seat 0 alone
-- (7566 flagsB 0x02000000 USABLE_FORCED_4; 7567/7575 have neither). Two consequences,
-- both of them the reported bug:
--   * the player took seat 0 — the pilot's ReclinedMount recliner — instead of the
--     rope-ladder seat the quest is about;
--   * Sassy's 46598 then found NO free eligible seat and returned false, so she never
--     boarded at all and was left standing at the lair.
--
-- Fixed by giving the player an explicit seat. 46598 stays exactly as it is for Sassy:
-- with the player out of seat 0 it is the only seat -1 can pick, so she always lands
-- in the pilot's chair regardless of boarding order.

-- ============================================================
-- 91604 — ride seat 1 (the rope ladder)
-- ============================================================
-- Custom id: 73137 is the donor's constant but our attributes are NOT its retail
-- attributes, so claiming its id would put a fabricated row on a real retail id.
-- 91604 is free in the DBC, in every zpak dbc file and in the world DB's spell_dbc
-- shadow.
--
-- Cloned from stock 46598 field-for-field — that is the row already proven to work
-- through this exact SmartAI CROSS_CAST path — with only the seat changed:
-- BasePoints 2 / DieSides 0 -> amount 2 -> seat 1 (VehicleSeat 7567), matching donor
-- 73137's own SpellEffect row (effect 6 / aura 236 / BasePoints 2 / DieSides 0 /
-- target 25, plus a dummy on self). Deliberately NOT copying 98707's attribute set:
-- it carries aura_interrupt_flags 0x80000 and a much wider attribute mask, and an
-- interrupt flag on a spell the player must hold for the whole flight is the I-257
-- trap. 46598 has aura_interrupt_flags 0.

DELETE FROM `spell` WHERE id = 91604;
INSERT INTO `spell` SET
  `id` = 91604,
  `attributes` = 65792,
  `attributes_ex_1` = 268436480,
  `attributes_ex_2` = 4,
  `attributes_ex_3` = 0,
  `attributes_ex_4` = 4,
  `attributes_ex_5` = 0,
  `attributes_ex_6` = 0,
  `attributes_ex_7` = 0,
  `cast_time_index` = 1,
  `duration_index` = 21,
  `range_index` = 152,
  `power_type` = 0,
  `speed` = 0,
  `spell_visual_1` = 0,
  `spell_icon_id` = 332,
  `active_icon_id` = 0,
  `school_mask` = 1,
  `spell_name_enus` = 'Ride Vehicle Hardcoded - Seat 2',
  `spell_desc_enus` = '',
  `spell_level` = 0,
  `base_level` = 0,
  `max_level` = 0,
  `proc_chance` = 101,
  `equipped_item_class` = -1,
  `damage_class` = 0,
  `spell_priority` = 50,
  `start_recovery_category` = 133,
  `aura_interrupt_flags` = 0,
  `channel_interrupt_flags` = 0,
  `interrupt_flags` = 0,
  `effect_1` = 6,
  `effect_apply_aura_name_1` = 236,
  `effect_amplitude_1` = 0,
  `effect_base_points_1` = 2,
  `effect_die_sides_1` = 0,
  `effect_item_type_1` = 0,
  `effect_mechanic_1` = 0,
  `effect_misc_value_a_1` = 0,
  `effect_misc_value_b_1` = 0,
  `effect_radius_index_1` = 0,
  `effect_trigger_spell_1` = 0,
  `effect_implicit_target_a_1` = 25,
  `effect_implicit_target_b_1` = 0,
  `effect_real_points_per_level_1` = 0,
  `effect_damage_multiplier_1` = 1,
  `effect_spell_class_mask_a_1` = 0,
  `effect_spell_class_mask_b_1` = 0,
  `effect_spell_class_mask_c_1` = 0,
  `effect_2` = 6,
  `effect_apply_aura_name_2` = 4,
  `effect_amplitude_2` = 0,
  `effect_base_points_2` = 0,
  `effect_die_sides_2` = 0,
  `effect_item_type_2` = 0,
  `effect_mechanic_2` = 0,
  `effect_misc_value_a_2` = 0,
  `effect_misc_value_b_2` = 0,
  `effect_radius_index_2` = 0,
  `effect_trigger_spell_2` = 0,
  `effect_implicit_target_a_2` = 1,
  `effect_implicit_target_b_2` = 0,
  `effect_real_points_per_level_2` = 0,
  `effect_damage_multiplier_2` = 1,
  `effect_spell_class_mask_a_2` = 0,
  `effect_spell_class_mask_b_2` = 0,
  `effect_spell_class_mask_c_2` = 0;

-- ============================================================
-- 98707 "Ride Camera - Seat 3" — off-by-one on the seat index
-- ============================================================
-- Stock/AUTO row (zz [AUTO,F-011]_spell.sql), so a single consolidated UPDATE.
--
-- The generator forces `effect_die_sides = max(source, 1)` so the client's $s token
-- renders, without decrementing BasePoints. 4.3.4 stores the value directly, so the
-- Cata row (BasePoints 3 / DieSides 0 -> amount 3 -> seat 2, which is what the donor
-- script's own comment says: "SPELL_RIDE_SEAT_3 = 98707, // seat 3-1 = 2") was emitted
-- as 3/1 -> amount 4 -> seat 3. Vehicle 657 has no seat 3, so the back-seat swap would
-- have silently failed even with the control flag cleared.
--
-- Same class as the 71648 / 72889 entries already in spells.py EFFECT_OVERRIDE, and
-- fixed there too so a regen keeps it — this row is the bridge until then.
UPDATE `spell` SET
  `effect_die_sides_1` = 0
WHERE id = 98707;
