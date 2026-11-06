-- I-310 round 5: the Precious Cargo (14242) Gyrochoppa flies itself.
--
-- Same shape as the two Bastia rides (I-349) and the same donor pattern: the whole ride
-- was a C++ script the port never carried — npc_gyro_precious_cargo_vehicle,
-- Neltharion lost_isles.cpp:721 — so 36143 shipped as a chopper you had to pilot.
-- The donor: passive + rooted on summon, MoveSmoothPath GyroCargoPath[12] 1500 ms after
-- the player boards, and at the last point a camera shake, an explosion, a whisper, then
-- eject and despawn — it CRASHES next to the Vengeance Wake, it does not land.
--
-- Generator side (already landed, so a re-run keeps this working):
--   * creatures.py AI_NAME_PORTS += 36143 -> SmartAI (the donor template's AIName is
--     empty; its behaviour WAS the ScriptName, and a blank AIName means these rows never
--     run). Also takes it off the I-313 "donor C++ not ported" WARN.
--
-- Seat 5706 loses VEHICLE_SEAT_FLAG_CAN_CONTROL (0x800) in dbc/[I-310]_vehicleseat.sql,
-- which owns that row: Vehicle::AddPassenger (Vehicle.cpp:433) charms the vehicle when a
-- PLAYER takes a control seat, and SmartAI::UpdateAI early-returns while
-- !IsAIControlled(), so an AI-driven path on a control seat never moves. Round 4's two
-- reasons for adopting the Oculus drake profile are untouched: CAN_ENTER_OR_EXIT
-- 0x2000000 (the SERVER checks it in HandleRequestVehicleExit) and CAN_CAST 0x20000000
-- (the vehicle bar, hence the Leave Vehicle button — the core serves that bar on
-- cast-capable seats without CAN_CONTROL too, Vehicle.cpp:454, I-311).
--
-- Round 2's flight recipe still does the work: creature_template_movement Flight=1 makes
-- Creature::CanFly() true, so WaypointMovementGenerator::StartMove calls init.SetFly() on
-- every leg, and the addon aura 59553 is what reaches the client. SET_FLY below adds the
-- DisableGravity that keeps the chopper from sagging between waypoints.
--
-- `waypoints` (SmartWaypointMgr), NOT `waypoint_data` — action 53 resolves pathID through
-- the former only, and it has NO reload command: worldserver restart, not
-- `.reload smart_scripts`.

-- ============================================================
-- 1. The flight
-- ============================================================
-- GyroCargoPath[12] verbatim, map 648 -> map 1 (X-533.3333, Y-12800.0, Z unchanged).
-- 968 yd; at speed_flight 3.0 (round 3, ~21 yd/s) that is about 46 s in the air.
--
-- Sampled against our heightmap (cli/lib/terrain_reader.py, map 1): point 1 is +3.6 over
-- the beach beside the parked chopper 36127 (5.8 yd away), and every later point is 12 to
-- 88 yd over an ocean floor that falls to -33. A real flight path, unlike the Bastia
-- ground runs — which is why this one keeps the flight recipe.
--
-- The last point (438.35, -8996.69, 14.74) is ~15 yd above the water and 53 yd from the
-- precious cargo 36145, i.e. the crash site beside the Vengeance Wake. The rider is
-- dropped there on purpose. Note the core's dismount parachute (VEHICLE_SPELL_PARACHUTE
-- 45472, Vehicle.cpp:560) DOES fire here because the chopper is flying — which is correct
-- for a crash at altitude and is why it is not stripped the way I-343 strips it.

DELETE FROM `waypoints` WHERE entry = 361430;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
  (361430, 1, 309.9057, -9465.9600, 10.0800, 'precious cargo 1/12'),
  (361430, 2, 277.3457, -9458.8700, 15.7500, 'precious cargo 2/12'),
  (361430, 3, 239.4457, -9437.0100, 24.1000, 'precious cargo 3/12'),
  (361430, 4, 236.5067, -9388.6300, 26.5400, 'precious cargo 4/12'),
  (361430, 5, 269.9087, -9333.2700, 25.3000, 'precious cargo 5/12'),
  (361430, 6, 377.1937, -9272.2500, 23.9100, 'precious cargo 6/12'),
  (361430, 7, 484.8967, -9241.7500, 20.3900, 'precious cargo 7/12'),
  (361430, 8, 617.3067, -9183.4800, 20.8200, 'precious cargo 8/12'),
  (361430, 9, 668.5867, -9047.3800, 51.8400, 'precious cargo 9/12'),
  (361430, 10, 584.8567, -9019.0300, 64.0000, 'precious cargo 10/12'),
  (361430, 11, 473.8367, -9010.6800, 34.7800, 'precious cargo 11/12'),
  (361430, 12, 438.3487, -8996.6900, 14.7400, 'precious cargo 12/12');

-- ============================================================
-- 2. Gyrochoppa 36143
-- ============================================================
-- Rooting is dropped: MovementType is 0 (idle) and the react state is passive, so the
-- chopper holds position until the escort starts and SET_ROOT would need a second row to
-- undo it. `target_type` 1 (SELF) on ESCORT_START keeps the player out of
-- SMART_ESCORT_TARGETS, so the escort never waits on or paces itself to the rider.
--
-- Deliberately NOT ported from the donor:
--   * `summoner->RemoveAura(49416)` in IsSummonedBy. 49416 is Generic Quest Invisibility
--     Detection 1, and on this server it is granted by the round-1 spell_area row that
--     makes the choppas visible in the first place — Player::UpdateAreaDependentAuras
--     would put it straight back, and stripping it is a way to hide NPCs the rider may
--     still need. Whatever the donor wanted it for, it is not safe to copy here.
--   * `RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK)` before the despawn — it stops
--     the wreck being re-clicked in the 100 ms before it disappears. Nothing to port.

DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid = 36143;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (36143, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - the chopper is a ferry, not a fighter (REACT_PASSIVE)'),
  (36143, 0, 1, 0, 27, 0, 100, 0, 0, 0, 0, 0, 80, 3614300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - rider aboard -> fly the run'),
  (36143, 0, 2, 0, 28, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - rider got off -> despawn'),
  (36143, 0, 3, 0, 58, 0, 100, 0, 0, 361430, 0, 0, 80, 3614301, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - reached the Vengeance Wake -> crash');

-- The trip. Actionlist rows run in id order and event_param1/2 are the delay BEFORE each
-- row, so 1500 is the donor's EVENT_GYRO_CARGO_1 schedule. SET_FLY params are
-- (fly, speed, disableGravity); speed stays 0 so it does not override round 3's
-- speed_flight 3.0. The FORCE_DESPAWN is a stall net, not a ride timer — the earliest
-- armed despawn wins, so the crash sequence still ends a normal flight.

DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid = 3614300;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (3614300, 9, 0, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 60, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - lift off (CanFly + disable gravity)'),
  (3614300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 2, 361430, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - fly the run (forcedMovement 2 = RUN)'),
  (3614300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 600000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - stall net, never strand a rider');

-- The crash, in the donor's order: whisper, explosion, camera shake, then 500 ms later
-- eject and go. creature_text 36143 group 0 "Find the Precious Cargo!" is Type 42 =
-- CHAT_MSG_RAID_BOSS_WHISPER, so the TALK row MUST resolve a player or it has nobody to
-- whisper — target 29 SMART_TARGET_VEHICLE_PASSENGER seat 0 is the rider, and the rider
-- is still aboard for another half second. CROSS_CAST (86) keeps the donor's casting
-- direction for the shake: caster = the passenger (param3 = target type 29), spell target
-- = the chopper (the row's own target fields).

DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid = 3614301;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (3614301, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - Find the Precious Cargo! (boss whisper to the rider)'),
  (3614301, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 71495, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - Explosion Visual'),
  (3614301, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 86, 45849, 0, 29, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - the rider shakes the camera at the chopper (donor direction)'),
  (3614301, 9, 3, 0, 0, 0, 100, 0, 500, 500, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - Eject All Passengers into the drink'),
  (3614301, 9, 4, 0, 0, 0, 100, 0, 200, 200, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Precious Cargo - and the wreck is gone');

-- ============================================================
-- 3. The re-fly gossip is beach-only now
-- ============================================================
-- Round 4 added the "Fire up the Gyrochoppa!" option (menu 510033, gated 14242 REWARDED
-- + 14445 not rewarded) and a second parked 36127 on the Wake's deck so a rider stranded
-- on the boat could summon a chopper again. That option casts the SAME 68386 and summons
-- the SAME 36143, so with the run now on rails it flies the one-way beach -> ship path
-- wherever you board it. From the beach clicker that is exactly right. From the deck it is
-- a ~1500 yd round trip: deck, back to the beach start, out to the ship again, ending
-- where it began.
--
-- The option is therefore hidden on the boat. Keyed on the AREA, not on the deck spawn's
-- guid: 4783 "Alliance Beachhead" is the beach, 4784 "Vengeance Wake" is the deck, the
-- crash point and the cargo 36145 — one area covering the whole ship, so a NEGATIVE match
-- on 4784 hides it everywhere on the boat and nowhere else. Guid-keyed overrides in the
-- 11xxxxxx band are the thing that rots (I-318), and this needs no guid at all.
--
-- The deck 36127 stays: it is still the parked prop that tells you where the choppa
-- lives, it just no longer offers a ride. The designed way off the boat is unchanged —
-- 68408's Cyclone of the Elements on 14243 accept.
--
-- The two AUTO-owned rows for this option (14242 REWARDED, 14445 NOT) are untouched; this
-- is an additional AND in the same ElseGroup, and zz_[AUTO,F-011]_70_conditions.sql sorts
-- before this file so the group-wide DELETE up there always runs first.

DELETE FROM `conditions`
 WHERE SourceTypeOrReferenceId = 15 AND SourceGroup = 510033 AND SourceEntry = 0
   AND ConditionTypeOrReference = 23 AND ConditionValue1 = 4784;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
  (15, 510033, 0, 0, 0, 23, 0, 4784, 0, 0, 1, 0, 0, '', '[I-310] no chopper ride from the Vengeance Wake deck - the run is one-way');
