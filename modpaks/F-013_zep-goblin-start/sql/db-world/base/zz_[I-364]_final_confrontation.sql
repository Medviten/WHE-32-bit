-- =============================================================================
-- I-364  "Final Confrontation" (25251) — no credit for boarding the shredder, and
--        the shredder cannot fight.
--
-- Objective 1: creature **39592 Ultimate Footbomb Uniform** x1 ("hop into the
--              shredder"). Objective 2: **39582 Trade Prince Gallywix**.
--
-- The click chain, for the record, because it is not obvious:
--   39592 (the prop, VehicleId 0, npcflag SPELLCLICK) has spellclick 56685
--   "CSA Dummy Effect 1" -> SAI event 73 ON_SPELLCLICK -> actionlist 3959200:
--     0  SET_NPC_FLAG 0                     (close the click window)
--     1  INVOKER_CAST 73991                 (the PLAYER casts it)
--     2  wait 2000, SET_NPC_FLAG 16777216   (reopen it)
--   Spell 73991 "Final Confrontation: On Interact - Summon" is SPELL_EFFECT_SUMMON
--   of **39598**, the real vehicle (VehicleId 696, seat 7638), via
--   SummonProperties 827 (control 4 = VEHICLE).
--
-- ---------------------------------------------------------------------------
-- 1. No credit for objective 1
-- ---------------------------------------------------------------------------
-- Nothing anywhere awards 39592. Actionlist 3959200 has no CALL_KILLEDMONSTER, and
-- 39598's own SAI credits only 39582 (its DATA_SET row). Our actionlist is faithful
-- to Neltharion's — same three steps, action 85 there being the 4.3.4 opcode our
-- gen remaps to AC's 134 INVOKER_CAST — so nothing was dropped in the port: the
-- credit is simply absent from the donor, exactly like I-360.
--
-- Awarded on the CLICK rather than on boarding, deliberately. The obvious
-- alternative — SMART_EVENT_PASSENGER_BOARDED on 39598 — is unreliable here because
-- seat 7638 carries VEHICLE_SEAT_FLAG_CAN_CONTROL (0x800): a PLAYER taking that seat
-- makes Vehicle::AddPassenger call SetCharmedBy(CHARM_TYPE_VEHICLE), SmartAI::
-- OnCharmed sets mIsCharmed, and SmartAI::UpdateAI early-returns while
-- !IsAIControlled(). The vehicle's script is dead the moment the rider is aboard
-- (reference_player_in_control_seat_freezes_smartai,
-- reference_sai_charmed_vehicle_event_gate). 39592 is a separate creature and is
-- never charmed, so its actionlist always runs.
--
-- Same reason its sibling credit is unreliable: 39598's DATA_SET row for 39582 can
-- only fire while nobody is driving. Left alone here — that is objective 2 and the
-- player reports it working, so it is presumably driven from Gallywix's own side.
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` = 3959200 AND `id` = 3;
INSERT INTO `smart_scripts` SET
  `entryorguid` = 3959200, `source_type` = 9, `id` = 3, `link` = 0,
  `event_type` = 0, `event_phase_mask` = 0, `event_chance` = 100, `event_flags` = 0,
  `event_param1` = 0, `event_param2` = 0, `event_param3` = 0, `event_param4` = 0,
  `event_param5` = 0, `event_param6` = 0,
  `action_type` = 33, `action_param1` = 39592, `action_param2` = 0, `action_param3` = 0,
  `action_param4` = 0, `action_param5` = 0, `action_param6` = 0,
  `target_type` = 7, `target_param1` = 0, `target_param2` = 0, `target_param3` = 0, `target_param4` = 0,
  `target_x` = 0, `target_y` = 0, `target_z` = 0, `target_o` = 0,
  `comment` = 'Ultimate Footbomb Uniform - credit objective 1 (39592) to the player who clicked';

-- ---------------------------------------------------------------------------
-- 2. The shredder cannot fight — faction flattened to 35
-- ---------------------------------------------------------------------------
-- 39598 ships faction **35**; tdb434 has **2159** (Bilgewater Cartel). Template 35 is
-- faction 31, friend_group 1, enemy_group 0 with an empty enemy list — hostile to
-- nothing, so it never initiates and is never attacked
-- (reference_faction_35_friendly_never_fights). A vehicle in it cannot take part in
-- a fight at all.
--
-- This is the I-337 faction flatten. That issue removed FACTION_REMAP and shipped the
-- FactionTemplate rows (2159, 2160, 2200, 2204, 2227, 2228, 2231, 2238), but the AUTO
-- creature_template file was never regenerated afterwards, so it still carries the old
-- remapped values -- `zz_[AUTO,F-011]_10_creature_template.sql` still says
-- `faction` = 35 for 39598. A regen would fix all of these at source; until then this
-- override does it.
--
-- Swept properly: of the 348 templates the AUTO file owns, **17** are still flattened
-- to 35/14 where tdb434 has a real faction. All six target faction templates
-- (2159, 2160, 775, 29, 190, 7) were verified present in BOTH our client DBC and the
-- server's own data/dbc/FactionTemplate.dbc, so none of these can dangle.
-- Entry-keyed, so regen-safe.
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 34957;   -- Ace (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 34958;   -- Gobber (was 35)
UPDATE `creature_template` SET `faction` = 775 WHERE `entry` = 35813;   -- Frightened Miner (was 35)
UPDATE `creature_template` SET `faction` = 29 WHERE `entry` = 36100;   -- Orc Scout (was 35)
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` = 38457;   -- Naga Hatchling (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 38802;   -- Super Booster Rocket Boots (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 39198;   -- Ace (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilian2FactionTemplate WHERE `entry` = 39199;   -- Assistant Greely (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 39200;   -- Izzy (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 39201;   -- Gobber (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 39598;   -- Ultimate Footbomb Uniform (was 35)
UPDATE `creature_template` SET `faction` = 7 WHERE `entry` = 44175;   -- Spell Practice Credit (was 35)
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` = 44588;   -- Naga Hatchling (was 35)
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` = 44589;   -- Naga Hatchling (was 35)
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` = 44590;   -- Naga Hatchling (was 35)
UPDATE `creature_template` SET `faction` = 190 WHERE `entry` = 44591;   -- Naga Hatchling (was 35)
UPDATE `creature_template` SET `faction` = @BilgewaterCivilianFactionTemplate WHERE `entry` = 48962;   -- Kezan Socialite (was 35)
