-- I-343: quest 25023 "Old Friends" — the Flying Bomber escape from Volcanoth's Lair.
--
-- The lair has no walk-out. With 24958 fixed (I-342) the player kills Volcanoth and is
-- then sealed in, because the whole escape lived in two donor C++ scripts that the port
-- never carried: npc_sassy_quest_giver_volcanoth and npc_flying_bomber_old_friends
-- (Neltharion lost_isles.cpp:1528-1795).
--
-- Generator side (already landed, so a re-run keeps this working):
--   * _summons.py CPP_SUMMONS  += 38918 Flying Bomber, 38869 Sassy Hardwrench (2)
--     — script-summoned, so the effect-28 walk could never see them and they arrived
--       with no creature_template at all. Collecting them also pulled Cata Vehicle 657
--       (+3 VehicleSeat rows), spell 73149 "Old Friends: Flying Bomber's Rope Ladder",
--       both display rows and 38869's 8 creature_text groups.
--   * creatures.py AI_NAME_PORTS += 38928 / 38918 / 38869 -> SmartAI.
--   * smartai.py SPELL_ID_COLLISIONS: donor 80808 -> 98707 (see below).
--
-- What is left is the part the donor dump genuinely does not contain. Its own
-- smart_scripts twin of the bomber (38918 ids 0-7, actionlists 3891801/3891802) IS in
-- the dump and now ships via zz_[AUTO,F-011]_65 — but it is a fragment:
--   * it drives waypoint path 389180, and `waypoints` has ZERO rows for 389180;
--   * it calls actionlist 3891800, which does not exist;
--   * it never starts the path (the C++ twin used MoveSmoothPath over two hardcoded
--     arrays), so nothing moves;
--   * 38928 and 38869 have no rows at all — their behaviour WAS the C++.
-- This file supplies exactly those pieces.

-- ROUND 2 (rider posture). Reported as "we are meant to be holding onto a rope hanging
-- off the plane but we sat as a passenger". Three separate defects, none of them the
-- flight itself:
--   * the player was in the pilot's seat and Sassy was in no seat at all — section 2;
--   * the rope ladder has never been drawn, because the two DBC rows that carry the
--     model were not ported — dbc/[I-343]_spellvisualeffectname.sql and
--     dbc/[I-343]_spellvisualkitmodelattach.sql;
--   * the seat swap round 1 dropped is restored — section 5.
-- Round 2 also swaps which aircraft model the bomber wears (I-356), which is why the
-- ladder's attach offset is re-based; see the spellvisualkitmodelattach file.

-- ============================================================
-- 1. The flight path
-- ============================================================
-- Reconstructed from OldFriendsPath[32] + OldFriendsPath2[16] (lost_isles.cpp:1530
-- and :1567), map 648 -> map 1 (X-533.3333, Y-12800.0, Z unchanged).
--
-- OldFriendsPath2[0] is byte-identical to OldFriendsPath[31] — the second array
-- restarts from where the first ended — so the combined path drops that duplicate and
-- is 47 points, not 48. That is not a guess: it is what makes the donor's OWN event
-- point ids line up. C++ MovementInform fires at path1 points 25/28/31 and path2
-- points 9/15; the shipped SAI rows fire at 26/29/32/41/47. With the duplicate dropped,
-- path1[k] -> point k+1 and path2[k] -> point 32+k, and all five land exactly.
-- Points 1-32 = the climb out of the lair; 33-47 = the Town-In-A-Box flyby, ending
-- ~30 yd from Thrall's spawn, who is questender for 25023.
--
-- `waypoints` (SmartWaypointMgr), NOT `waypoint_data` — action 53 resolves pathID
-- through the former only (I-274). It has NO reload command: SmartWaypointMgr::LoadFromDB
-- runs once at startup, so this needs a worldserver restart, not .reload smart_scripts.

DELETE FROM `waypoints` WHERE entry = 389180;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
  (389180, 1, 628.2867, -11708.6000, 131.9800, 'lair escape 1/32'),
  (389180, 2, 607.5467, -11673.3300, 161.3200, 'lair escape 2/32'),
  (389180, 3, 588.5067, -11653.6900, 161.4600, 'lair escape 3/32'),
  (389180, 4, 550.5167, -11632.1000, 155.8900, 'lair escape 4/32'),
  (389180, 5, 523.9867, -11615.7500, 150.5600, 'lair escape 5/32'),
  (389180, 6, 496.1167, -11592.3100, 143.0700, 'lair escape 6/32'),
  (389180, 7, 471.7767, -11560.9500, 132.3400, 'lair escape 7/32'),
  (389180, 8, 458.7807, -11513.4100, 118.7000, 'lair escape 8/32'),
  (389180, 9, 470.3267, -11458.7700, 108.4300, 'lair escape 9/32'),
  (389180, 10, 483.8667, -11414.5000, 102.7200, 'lair escape 10/32'),
  (389180, 11, 493.6467, -11361.5300, 109.3800, 'lair escape 11/32'),
  (389180, 12, 487.9067, -11301.5400, 124.7400, 'lair escape 12/32'),
  (389180, 13, 463.3437, -11262.2300, 141.2900, 'lair escape 13/32'),
  (389180, 14, 434.6467, -11241.4100, 152.8800, 'lair escape 14/32'),
  (389180, 15, 400.1617, -11223.4500, 167.2900, 'lair escape 15/32'),
  (389180, 16, 373.0837, -11216.2800, 173.1400, 'lair escape 16/32'),
  (389180, 17, 324.8067, -11210.2800, 179.0200, 'lair escape 17/32'),
  (389180, 18, 277.3657, -11212.0600, 171.7600, 'lair escape 18/32'),
  (389180, 19, 252.6587, -11208.9100, 166.9700, 'lair escape 19/32'),
  (389180, 20, 220.3607, -11204.7000, 157.7800, 'lair escape 20/32'),
  (389180, 21, 203.1507, -11175.7500, 145.6700, 'lair escape 21/32'),
  (389180, 22, 200.3017, -11151.2100, 135.4700, 'lair escape 22/32'),
  (389180, 23, 197.2177, -11116.3800, 128.9000, 'lair escape 23/32'),
  (389180, 24, 190.6267, -11050.8900, 124.6000, 'lair escape 24/32'),
  (389180, 25, 181.9257, -11025.3900, 124.2000, 'lair escape 25/32'),
  (389180, 26, 230.4867, -10917.3700, 124.0200, 'lair escape 26/32'),
  (389180, 27, 251.6847, -10823.8800, 117.2300, 'lair escape 27/32'),
  (389180, 28, 311.4927, -10694.9200, 104.1700, 'lair escape 28/32'),
  (389180, 29, 362.4437, -10638.7800, 91.0280, 'lair escape 29/32'),
  (389180, 30, 383.9407, -10510.8900, 47.1440, 'lair escape 30/32'),
  (389180, 31, 402.5807, -10434.7500, 42.9370, 'lair escape 31/32'),
  (389180, 32, 409.5487, -10335.5600, 40.5270, 'lair escape 32/32'),
  (389180, 33, 410.8337, -10296.2400, 38.6230, 'town flyby 1/15'),
  (389180, 34, 325.6027, -10234.2800, 37.6540, 'town flyby 2/15'),
  (389180, 35, 250.0667, -10245.7300, 37.2470, 'town flyby 3/15'),
  (389180, 36, 188.8157, -10303.1600, 44.1930, 'town flyby 4/15'),
  (389180, 37, 235.6807, -10391.4100, 59.9730, 'town flyby 5/15'),
  (389180, 38, 310.9617, -10440.4200, 66.2460, 'town flyby 6/15'),
  (389180, 39, 507.2267, -10522.1300, 75.4030, 'town flyby 7/15'),
  (389180, 40, 638.7667, -10554.9100, 92.2720, 'town flyby 8/15'),
  (389180, 41, 696.2267, -10568.4200, 100.0300, 'town flyby 9/15'),
  (389180, 42, 793.2367, -10515.6400, 108.6700, 'town flyby 10/15'),
  (389180, 43, 866.9867, -10443.4100, 114.2300, 'town flyby 11/15'),
  (389180, 44, 942.6267, -10353.4800, 120.9700, 'town flyby 12/15'),
  (389180, 45, 1000.6267, -10247.2600, 123.1300, 'town flyby 13/15'),
  (389180, 46, 1036.3267, -10170.5800, 118.2200, 'town flyby 14/15'),
  (389180, 47, 1049.7467, -10107.8100, 89.8040, 'town flyby 15/15');

-- ============================================================
-- 2. Sassy Hardwrench 38928 — hand the quest over, put the player on the bomber
-- ============================================================
-- Donor OnQuestAccept: RemoveAura(49416); dismount; player->SummonCreature(38918);
-- player->CastSpell(bomber, 73137).
--
-- SUMMON_CREATURE flags = 2 (SmartActionSummonCreatureFlags::PreferUnit) is load-bearing:
-- it makes the summoner the INVOKER (the player) instead of Sassy. The shipped bomber
-- rows and both actionlists resolve the player through SMART_TARGET_OWNER_OR_SUMMONER
-- (23), so without PreferUnit every one of them would target Sassy and the flight would
-- strip auras off, and re-seat, the wrong unit. Position still comes from the target
-- (SELF = Sassy), matching the donor's creature->GetPosition().
--
-- 73137 is not in 3.3.5a. ROUND 1 substituted stock 46598 "Ride Vehicle Hardcoded"
-- (base points 0 -> seat -1 -> first free seat), which was wrong twice over, and both
-- halves were the reported bug:
--
--   * -1 is not "the next seat", it is "the first seat AddPassenger is allowed to hand
--     out", and on vehicle 657 that is seat 0 ALONE (Vehicle.cpp:368 requires
--     CanEnterOrExit() or IsUsableByOverride(); 7566 has flagsB 0x02000000
--     USABLE_FORCED_4, 7567 and 7575 have neither). So the player took seat 0 — the
--     pilot's ReclinedMount recliner — instead of the rope-ladder seat, which is the
--     whole point of this quest beat.
--   * and then Sassy's own 46598 found no eligible free seat, returned false, and she
--     never boarded at all: she was left standing at the lair while the bomber flew off.
--
-- Round 2 gives the player an explicit seat with 91604 (dbc/[I-343]_spell.sql: 46598
-- cloned with base points 2 -> amount 2 -> seat 1 = VehicleSeat 7567, the hanging seat,
-- matching donor 73137's own base points). 46598 stays as-is for Sassy in actionlist
-- 3891800: with the player out of seat 0 it is the only seat -1 can pick, so she lands
-- in the pilot's chair whatever the boarding order. Seat 1 also needed its CAN_CONTROL
-- bit cleared or the player charms the bomber and the escort dies —
-- dbc/[I-343]_vehicleseat.sql.

DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid = 38928;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (38928, 0, 0, 1, 19, 0, 100, 0, 25023, 0, 0, 0, 12, 38918, 8, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - summon the Flying Bomber (summoner = the player)'),
  (38928, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 86, 91604, 2, 7, 0, 0, 0, 19, 38918, 15, 0, 0, 0, 0, 0, 0, 'Old Friends - player grabs the rope ladder (seat 1)');

-- ============================================================
-- 3. Actionlist 3891800 — everything the donor did in IsSummonedBy
-- ============================================================
-- Called by the shipped row (38918 id 0, SMART_EVENT_PASSENGER_BOARDED). Actionlist
-- rows run in id order and event_param1/2 are the delay BEFORE each row, so the times
-- below are the donor's absolute schedule expressed as deltas: barks at 1s / 6s / 9s
-- / 22s and the path start at 1s (EVENT_BOMBER_OLD_FRIEND_1).
--
-- SET_FLY (60) is the piece with no donor counterpart and no substitute: the C++ used
-- MoveSmoothPath, which does not care about gravity, but a `waypoints` path does.
-- creature_template_movement gives 38918 Flight=1 (so CanFly() is true), and SET_FLY
-- adds the SetDisableGravity that makes IsFlying() true — without it the bomber tries
-- to walk the path and the climb out of the lair fails.
--
-- Barks go through SET_DATA onto 38869 rather than TALK, matching the donor's own
-- shipped rows for the later points (ids 2/3/5 do exactly this).

DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid = 3891800;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (3891800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 60, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - take off (CanFly + disable gravity)'),
  (3891800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 73149, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - drop the rope ladder'),
  (3891800, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 38869, 8, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - summon Sassy'),
  (3891800, 9, 3, 0, 0, 0, 100, 0, 200, 200, 0, 0, 86, 46598, 2, 19, 38869, 15, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - Sassy boards'),
  (3891800, 9, 4, 0, 0, 0, 100, 0, 800, 800, 0, 0, 45, 1, 5, 0, 0, 0, 0, 19, 38869, 30, 0, 0, 0, 0, 0, 0, 'Old Friends - Sassy line 0 (t=1s)'),
  (3891800, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 2, 389180, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - fly the path (forcedMovement 2 = RUN)'),
  (3891800, 9, 6, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 45, 1, 6, 0, 0, 0, 0, 19, 38869, 30, 0, 0, 0, 0, 0, 0, 'Old Friends - Sassy line 1 (t=6s)'),
  (3891800, 9, 7, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 45, 1, 7, 0, 0, 0, 0, 19, 38869, 30, 0, 0, 0, 0, 0, 0, 'Old Friends - Sassy line 2 (t=9s)'),
  (3891800, 9, 8, 0, 0, 0, 100, 0, 13000, 13000, 0, 0, 45, 1, 8, 0, 0, 0, 0, 19, 38869, 30, 0, 0, 0, 0, 0, 0, 'Old Friends - Sassy line 3 (t=22s)');

-- ============================================================
-- 4. Sassy Hardwrench (2) 38869 — the passenger's lines
-- ============================================================
-- SET_DATA field 1: values 1-4 are the donor's own (shipped rows 38918 ids 2/3/5 and
-- actionlist 3891801 id 0); 5-8 are added here for the four boarding lines the C++ fired
-- with TalkWithDelay. creature_text groups 0-7 for 38869 ship from zz_[AUTO,F-011]_17.

DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid = 38869;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (38869, 0, 0, 0, 38, 0, 100, 0, 1, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hang on - we have to get you out of here'),
  (38869, 0, 1, 0, 38, 0, 100, 0, 1, 6, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'OH MY GOSH BEHIND YOU'),
  (38869, 0, 2, 0, 38, 0, 100, 0, 1, 7, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WE ARE ON FIRE'),
  (38869, 0, 3, 0, 38, 0, 100, 0, 1, 8, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'YEEEEE HAAAAA'),
  (38869, 0, 4, 0, 38, 0, 100, 0, 1, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'coming up on the Town-In-A-Box (point 26)'),
  (38869, 0, 5, 0, 38, 0, 100, 0, 1, 2, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'where is everyone (point 29)'),
  (38869, 0, 6, 0, 38, 0, 100, 0, 1, 3, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'get in the back seat (point 32)'),
  (38869, 0, 7, 0, 38, 0, 100, 0, 1, 4, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'we are toast if we do not get off this island (point 41)');

-- ============================================================
-- 5. The seat swap at point 32 — restored, with the cast target corrected
-- ============================================================
-- Round 1 deleted this row. Vehicle 657's seats:
--
--   seat 0  7566  flags 0x00000002              ReclinedMount            <- Sassy, pilot
--   seat 1  7567  flags 0x401088A4 | CAN_CONTROL  Fall + upper anim 215  <- the ladder
--   seat 2  7575  flags 0x401088AF | CAN_CONTROL  ReclinedMountPassenger <- the back seat
--
-- Vehicle::AddPassenger (Vehicle.cpp:433) charms the vehicle when a PLAYER takes a
-- CAN_CONTROL (0x800) seat, and SmartAI::OnCharmed (SmartAI.cpp:1067) calls EndPath(true)
-- while escorting, so the swap killed the flight two thirds of the way across. Round 2
-- clears 0x800 on both 7567 and 7575 (dbc/[I-343]_vehicleseat.sql) because the player now
-- needs seat 1 for the ladder anyway, which unblocks this row as a side effect. The gate
-- is on unit->IsPlayer(), so Sassy in seat 0 was never the problem.
--
-- Restoring it is not optional flavour: row id 1 below strips the rope-ladder aura at this
-- same point, exactly as the donor does. Without the swap the player would spend the last
-- third of the flight hanging in mid-air off a ladder that is no longer drawn.
--
-- The AUTO row is re-inserted rather than un-deleted because its cast TARGET is wrong.
-- zz_[AUTO,F-011]_65 ships `(3891801, 9, 2, ..., 86, 98707, 2, 23, ..., 23, ...)`: caster
-- target 23 (OWNER_OR_SUMMONER = the player) is right, but the row's own target_type 23
-- points the cast at the player too. 98707's effect target is 25 TARGET_UNIT_TARGET_ANY
-- and HandleAuraControlVehicle returns immediately unless the target IsVehicle(), so as
-- shipped it is a no-op. The cast target has to be the bomber: target_type 1 (SELF).
--
-- No eject first, unlike the donor's C++. Casting a seat spell while already aboard the
-- same vehicle takes Unit::_EnterVehicle's `seatId >= 0 && seatId != GetTransSeat()`
-- branch (Unit.cpp:15757) straight into ChangeSeat — no dismount, so no window in which
-- the player is in free fall at 90 yd if anything goes wrong, and no need to despawn and
-- re-summon Sassy the way the donor did to get her back into her chair.
--
-- ChangeSeat does call RemovePassenger internally, which fires SMART_EVENT_PASSENGER_REMOVED
-- (38918 rows 7 and 8) mid-swap. Both are safe: row 7 strips 98707 from the PLAYER, and the
-- only 98707 aura on the player is its effect-2 dummy — the CONTROL_VEHICLE aura that holds
-- the seat lives on the bomber. Row 8 strips the parachute the core hands out on the
-- dismount half of the swap, which is exactly what it is there for. The player keeps his
-- now-stale 91604 aura for the rest of the flight; removing it would call _ExitVehicle and
-- throw him out, so it is deliberately left alone and goes away with the final eject.

DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid = 3891801 AND id = 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (3891801, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 86, 98707, 2, 23, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - get in the back seat (player changes to seat 2)');

-- ============================================================
-- 6. Bomber flight state
-- ============================================================
-- AUTO-owned row -> one consolidated UPDATE. SPELL_AURA_FLY at spawn is the half of the
-- flying-vehicle recipe (I-310) that reaches the client; SET_FLY in the actionlist is
-- the server half. Applied at spawn, so a worldserver restart is required — nothing
-- reloads creature_template_addon.

UPDATE `creature_template_addon` SET
  `auras` = '59553'
WHERE entry = 38918;


-- ============================================================
-- 7. Sassy is INVISIBLE at the lair — the reason nobody could hand 24958 in
-- ============================================================
-- Reported as "I log in to the cave and there is nothing here, just a dead Volcanoth".
-- Nothing to do with the flight, and no trigger was missed: `character_queststatus` had
-- 24958 at status 1 (COMPLETE) with mobcount1 = 1, so the I-342 kill credit fired and the
-- quest was simply never HANDED IN. 38928 Sassy Hardwrench is the only questender for
-- 24958 and the only queststarter for 25023 — and she cannot be seen.
--
-- `creature_template_addon` 38928 carries **49414 "Generic Quest Invisibility 1"**
-- (SPELL_AURA_MOD_INVISIBILITY, misc 7), ported verbatim from Neltharion, which has the
-- same aura on her. A player sees through it only with the matching detection aura
-- **49416 "Generic Quest Invisibility Detection 1"** (SPELL_AURA_MOD_INVISIBILITY_DETECT,
-- misc 7), and nothing grants it here. Confirmed on the live character: auras 696 / 66987
-- / 91120, no 49416.
--
-- The stock `spell_area` row for zone 4720 gates 49416 on quests **14241 "Get to the
-- Gyrochoppa!" -> 14445 "Farewell, For Now"** — both real quests in our world DB, but both
-- LATER in the chain than Volcanoth. So the detection arrives long after the point where
-- it was needed, and the lair beat has been unreachable for as long as it has existed.
-- Nobody hit it before because nobody could kill Volcanoth (I-342).
--
-- Same class as I-246 / I-242 round 2 (homie pickup NPCs hidden by 49414/49415/60921).
-- Fixed the same way — a spell_area detection row in the stock 74/11 "while on quest"
-- shape, NOT phasing. A sweep of every quest-invisible spawn within 500 yd of the lair
-- returns exactly one row, so Sassy is the whole of it.
--
--   quest_start_status 74 = COMPLETE|INCOMPLETE|REWARDED  -> visible from the moment
--                                                            24958 is in the log
--   quest_end_status   27 = NONE|COMPLETE|INCOMPLETE|AVAILABLE -> until 25023 is rewarded
--
-- Player::AddQuest and Player::CompleteQuest both call UpdateZoneDependentAuras /
-- UpdateAreaDependentAuras, so this lands the moment the quest state moves. A character
-- ALREADY sitting on a completed 24958 gets it on the next login or zone re-entry.

DELETE FROM `spell_area` WHERE spell = 49416 AND area = 4720 AND quest_start = 24958;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
  (49416, 4720, 24958, 25023, 0, 0, 2, 1, 74, 27);


-- ============================================================
-- 8. Strip the parachute the core hands out on dismount
-- ============================================================
-- Reported after the first successful ride: a parachute aura left on the player at the
-- end, pointless because the bomber sets down on the ground.
--
-- It is not ours and not the donor's — it is AzerothCore itself. Vehicle::RemovePassenger
-- (Vehicle.cpp:560):
--
--     // only for flyable vehicles
--     if (wasFlying && !_me->GetInstanceId() && unit->IsPlayer() && ...)
--         _me->CastSpell(unit, VEHICLE_SPELL_PARACHUTE, true);   // 45472
--
-- `wasFlying` is `_me->IsFlying()` cached at the top of the function, and our bomber is
-- still flying at that moment: actionlist 3891800 gave it SET_FLY, which sets
-- DisableGravity, and nothing turns that off before 3891802 casts Eject All Passengers.
-- So every rider gets 45472.
--
-- Stock 45472 "Parachute" is 60s (duration_index 3) with `aura_interrupt_flags` = **0** —
-- verified identical in original_dbc, so that is genuine Blizzard data, not something the
-- port zeroed, and it is used by every flying vehicle on the server. Nothing strips it on
-- landing; it simply runs the full minute. Hence "persistent".
--
-- Fixed here rather than on the spell: 45472 is stock and server-wide. The core fires
-- SMART_EVENT_PASSENGER_REMOVED at Vehicle.cpp:567, six lines AFTER the cast, so a strip
-- on that event is ordering-guaranteed by the core itself. Same event and same shape as
-- the AUTO row 7 that strips 98707, so this is an additive id 8 rather than a rewrite.
--
-- Deliberately NOT fixed by turning flight off before the eject (SET_FLY 0): that would
-- prevent the cast, but it changes how the bomber descends on the last leg to repair a
-- cosmetic aura, and the drop from the final waypoint (z 89.8) to the ground Thrall stands
-- on (z ~82.3) is well inside the no-damage band either way.

DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid = 38918 AND id = 8;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (38918, 0, 8, 0, 28, 0, 100, 0, 0, 0, 0, 0, 28, 45472, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Friends - drop the core parachute, the bomber lands on the ground');
