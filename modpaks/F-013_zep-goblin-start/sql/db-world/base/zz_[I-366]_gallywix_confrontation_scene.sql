-- =============================================================================
-- I-366  Final Confrontation (25251) RP scene — Gallywix wanders, Thrall never
--        appears, and beating Gallywix gives no credit.
--
-- All three come out of ONE script: Gallywix's timed actionlist 3958200, fired from
-- his SMART_EVENT_HEALTH_PCT row.
--
--   step 0  SUMMON_CREATURE 39594 at (2288.4, 2424.4, 22.4)
--   step 4  ESCORT_START path 39582
--   step 5  SET_DATA(1,1) -> creature 39598 within 50y
--
-- ---------------------------------------------------------------------------
-- 1. Thrall never appears — two faults in one action
-- ---------------------------------------------------------------------------
-- (a) 39594 "Thrall, Warchief" is NOT IN our creature_template at all. It exists in
--     both donors; the F-011 port took 38935 instead, which tdb434 shows as the same
--     character with the same name, subname, faction 29 and level 88. Rather than
--     port a duplicate template, the summon is repointed at the Thrall we already
--     ship (38935, 2 spawns).
--
-- (b) The summon position is in RAW DONOR COORDINATES. Every other position in the
--     port goes through the F-011 transform X-533.3333 / Y-12800, and SAI
--     `target_x/y/z` did not. (2288.4, 2424.4) resolves to (1755.07, -10375.60) —
--     9.7y from Gallywix's own waypoint destination (1746, -10378.9), and 4.6y from
--     where tdb434's sniff records 39594 standing. Two independent sources put the
--     transformed value on the scene mark, so it is self-evidently the intended
--     spot: Thrall appears beside him. Untransformed, he was ~13,000 yards away.
--
--     SYSTEMIC: 59 smart_scripts rows in the F-011 range still carry positive
--     target_y, i.e. donor-space coordinates. This fixes the one the scene needs;
--     the emitter gap is recorded in the issue note.
-- ---------------------------------------------------------------------------
UPDATE `smart_scripts` SET
  `action_param1` = 38935,
  `target_x` = 1755.0667,
  `target_y` = -10375.6,
  `target_z` = 22.4
WHERE `source_type` = 9 AND `entryorguid` = 3958200 AND `id` = 0;

-- ---------------------------------------------------------------------------
-- 2. No credit for beating Gallywix
-- ---------------------------------------------------------------------------
-- Step 5 sets data on creature 39598 within 50y, which is meant to fire that
-- creature's SMART_EVENT_DATA_SET -> CALL_KILLEDMONSTER 39582. But 39598 is the
-- Ultimate Footbomb Uniform vehicle the PLAYER is driving, and seat 7638 carries
-- VEHICLE_SEAT_FLAG_CAN_CONTROL: Vehicle::AddPassenger calls SetCharmedBy, SmartAI::
-- OnCharmed sets mIsCharmed, and SmartAI::UpdateAI early-returns while
-- !IsAIControlled(). The vehicle's script is dead for exactly as long as the player
-- is aboard — which is the whole fight — so the credit can never fire
-- (reference_player_in_control_seat_freezes_smartai, reference_sai_charmed_vehicle_event_gate).
--
-- Step 5 is left in place: it costs nothing and still works if anyone ever fights
-- Gallywix on foot. The credit is awarded directly from Gallywix's own actionlist,
-- which is never charmed, targeting the player rather than the vehicle.
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryorguid` = 3958200 AND `id` = 11;
INSERT INTO `smart_scripts` SET
  `entryorguid` = 3958200, `source_type` = 9, `id` = 11, `link` = 0,
  `event_type` = 0, `event_phase_mask` = 0, `event_chance` = 100, `event_flags` = 0,
  `event_param1` = 0, `event_param2` = 0, `event_param3` = 0, `event_param4` = 0,
  `event_param5` = 0, `event_param6` = 0,
  `action_type` = 33, `action_param1` = 39582, `action_param2` = 0, `action_param3` = 0,
  `action_param4` = 0, `action_param5` = 0, `action_param6` = 0,
  `target_type` = 18, `target_param1` = 60, `target_param2` = 0, `target_param3` = 0, `target_param4` = 0,
  `target_x` = 0, `target_y` = 0, `target_z` = 0, `target_o` = 0,
  `comment` = 'Gallywix - credit objective 2 (39582) to players within 60y; the vehicle SET_DATA cannot fire while charmed';
