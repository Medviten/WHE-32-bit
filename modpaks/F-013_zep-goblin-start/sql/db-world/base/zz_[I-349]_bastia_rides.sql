-- I-349: both Bastia rides run themselves — the cat carries the player, the player does
-- not steer. Quest 14240 "To the Cliffs" (Bastia 36585) and quest 25100 "Let's Ride"
-- (Bastia 39152).
--
-- Both rides were scripted C++ in the donor and neither script came across, so both
-- shipped as plain mounts: you were summoned onto a cat and left to drive.
--   npc_bastia_trip_vehicle          (Neltharion lost_isles.cpp:624)  -> 36585
--   npc_bastia_second_trip_vehicle   (Neltharion lost_isles.cpp:1871) -> 39152
-- Both do exactly the same four things: passive + rooted on summon, unroot and
-- MoveSmoothPath a hardcoded coordinate array once the player boards, MoveJump one gap
-- near the end, then eject the rider and despawn.
--
-- Generator side (already landed, so a re-run keeps this working):
--   * creatures.py AI_NAME_PORTS += 36585 / 39152 -> SmartAI. Both donor templates carry
--     an EMPTY AIName (their behaviour WAS the ScriptName), and a blank AIName means the
--     rows below never run. It also takes them off the I-313 "donor C++ not ported" WARN.
--   * missing_spells / DONOR_CUSTOM_SPELL_SUBSTITUTES brought 39152 into existence at all
--     — see I-349's first half.
--
-- The one thing this could not be done without is the SEAT. Vehicle 530's only seat, 6146,
-- carried VEHICLE_SEAT_FLAG_CAN_CONTROL (0x800), and Vehicle::AddPassenger (Vehicle.cpp:433)
-- charms the vehicle when a PLAYER takes such a seat -> SmartAI::OnCharmed sets mIsCharmed
-- -> SmartAI::UpdateAI early-returns while !IsAIControlled(). An AI-driven path on a
-- controlled seat does not move one inch. The bit is cleared in
-- dbc/[I-308]_vehicleseat.sql, which owns that row.
--
-- `waypoints` (SmartWaypointMgr), NOT `waypoint_data` — action 53 resolves pathID through
-- the former only. It has NO reload command (SmartWaypointMgr::LoadFromDB runs once at
-- startup), so this needs a worldserver restart, not `.reload smart_scripts`.

-- ============================================================
-- 1. The two paths
-- ============================================================
-- Transcribed mechanically from the donor arrays, map 648 -> map 1 (X-533.3333,
-- Y-12800.0, Z unchanged). Each donor MoveJump target is appended as an ordinary
-- waypoint: a spline is not gated on gravity or on terrain, so the cat crosses the gap
-- the same way MoveSmoothPath did, just without the arc.
--
--   365850 = BastiaPath[31] + MoveJump(1078.16, 3239.356, 81.33)          -> 32 points
--   391520 = SecondBastiaPath[42] + MoveJump(1770.78, 2293.47, 186.918)
--            + SecondBastiaPath2[22]                                       -> 65 points
--
-- Verified against our own heightmap (cli/lib/terrain_reader.py, map 1): every point of
-- both paths sits within 0.02 yd of the terrain we ship, which is independent proof that
-- the offset is right, that our ADTs match the donor's, and that these are GROUND paths —
-- no SET_FLY, no flight recipe. The handful of nodes that read high (391520 points 31-34
-- and 48-49) are the bridge decks; F-011 WMOs have no server collision, so the heightmap
-- reads the ravine floor underneath them.
--
-- Both paths end on their quest's turn-in: 365850 point 32 is 3 yd from Scout Brax
-- (36112, questender for 14240); 391520 point 65 is 4 yd from Slinky Sharpshiv (38517,
-- questender for 25100), both in the rider's own phase.

DELETE FROM `waypoints` WHERE entry = 365850;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
  (365850, 1, 327.7667, -9975.3000, 106.6300, 'to the cliffs 1/31'),
  (365850, 2, 324.9667, -9964.1100, 103.6100, 'to the cliffs 2/31'),
  (365850, 3, 333.2167, -9956.1300, 102.8100, 'to the cliffs 3/31'),
  (365850, 4, 334.5867, -9938.1200, 101.2700, 'to the cliffs 4/31'),
  (365850, 5, 344.7967, -9927.3800, 100.6900, 'to the cliffs 5/31'),
  (365850, 6, 361.6967, -9924.8300, 99.7740, 'to the cliffs 6/31'),
  (365850, 7, 382.1267, -9910.3400, 99.9960, 'to the cliffs 7/31'),
  (365850, 8, 386.2567, -9896.2400, 100.8500, 'to the cliffs 8/31'),
  (365850, 9, 402.1467, -9887.3400, 103.8200, 'to the cliffs 9/31'),
  (365850, 10, 409.3067, -9879.9300, 105.8200, 'to the cliffs 10/31'),
  (365850, 11, 412.8667, -9859.7000, 108.9700, 'to the cliffs 11/31'),
  (365850, 12, 425.8167, -9852.6800, 109.9900, 'to the cliffs 12/31'),
  (365850, 13, 463.7467, -9852.3000, 108.7700, 'to the cliffs 13/31'),
  (365850, 14, 496.8667, -9850.3800, 109.5600, 'to the cliffs 14/31'),
  (365850, 15, 509.9667, -9841.6000, 111.1400, 'to the cliffs 15/31'),
  (365850, 16, 514.4667, -9823.5400, 112.4300, 'to the cliffs 16/31'),
  (365850, 17, 527.4667, -9814.4800, 114.6100, 'to the cliffs 17/31'),
  (365850, 18, 542.2667, -9803.6300, 117.0600, 'to the cliffs 18/31'),
  (365850, 19, 539.7667, -9782.0000, 120.6400, 'to the cliffs 19/31'),
  (365850, 20, 545.7667, -9770.7900, 122.2500, 'to the cliffs 20/31'),
  (365850, 21, 556.8667, -9753.4000, 123.5200, 'to the cliffs 21/31'),
  (365850, 22, 544.9667, -9718.3600, 124.8100, 'to the cliffs 22/31'),
  (365850, 23, 535.1667, -9696.2000, 125.2800, 'to the cliffs 23/31'),
  (365850, 24, 512.3667, -9679.2200, 125.1300, 'to the cliffs 24/31'),
  (365850, 25, 492.1667, -9671.9200, 124.9900, 'to the cliffs 25/31'),
  (365850, 26, 488.7667, -9645.6900, 122.1300, 'to the cliffs 26/31'),
  (365850, 27, 491.2667, -9630.9600, 119.6200, 'to the cliffs 27/31'),
  (365850, 28, 508.7667, -9622.6600, 117.5800, 'to the cliffs 28/31'),
  (365850, 29, 522.7667, -9604.2500, 113.8700, 'to the cliffs 29/31'),
  (365850, 30, 524.7667, -9590.5800, 107.3100, 'to the cliffs 30/31'),
  (365850, 31, 526.1667, -9576.2400, 97.7780, 'to the cliffs 31/31'),
  (365850, 32, 544.8267, -9560.6440, 81.3300, 'the leap down to Scout Brax (donor MoveJump)');

DELETE FROM `waypoints` WHERE entry = 391520;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
  (391520, 1, 1180.8467, -9950.9400, 14.8606, 'climb 1/42'),
  (391520, 2, 1185.0947, -9960.8560, 19.1600, 'climb 2/42'),
  (391520, 3, 1182.7157, -9977.6780, 29.0000, 'climb 3/42'),
  (391520, 4, 1180.9587, -9994.3400, 34.5460, 'climb 4/42'),
  (391520, 5, 1163.6337, -10024.1550, 45.9200, 'climb 5/42'),
  (391520, 6, 1137.9667, -10040.0400, 62.0572, 'climb 6/42'),
  (391520, 7, 1123.4967, -10051.8500, 70.7494, 'climb 7/42'),
  (391520, 8, 1105.5667, -10063.2600, 76.9307, 'climb 8/42'),
  (391520, 9, 1086.8767, -10076.6400, 81.3722, 'climb 9/42'),
  (391520, 10, 1060.5167, -10082.6100, 83.2812, 'climb 10/42'),
  (391520, 11, 1037.9767, -10086.6700, 84.4450, 'climb 11/42'),
  (391520, 12, 1034.0767, -10095.7800, 86.5833, 'climb 12/42'),
  (391520, 13, 1029.1967, -10116.4600, 91.4772, 'climb 13/42'),
  (391520, 14, 1032.5667, -10133.0900, 94.3245, 'climb 14/42'),
  (391520, 15, 1049.0667, -10146.7700, 96.8425, 'climb 15/42'),
  (391520, 16, 1080.1167, -10161.0700, 97.9436, 'climb 16/42'),
  (391520, 17, 1142.6967, -10185.5100, 96.2468, 'climb 17/42'),
  (391520, 18, 1174.9967, -10212.5300, 97.6503, 'climb 18/42'),
  (391520, 19, 1184.7367, -10226.7700, 101.2620, 'climb 19/42'),
  (391520, 20, 1202.0967, -10236.0600, 102.4680, 'climb 20/42'),
  (391520, 21, 1219.3667, -10248.5000, 101.5150, 'climb 21/42'),
  (391520, 22, 1219.9867, -10261.1300, 104.6890, 'climb 22/42'),
  (391520, 23, 1213.3867, -10286.7400, 117.5210, 'climb 23/42'),
  (391520, 24, 1218.8267, -10292.5100, 120.7160, 'climb 24/42'),
  (391520, 25, 1238.4167, -10295.1100, 128.8860, 'climb 25/42'),
  (391520, 26, 1247.6167, -10303.9500, 136.3400, 'climb 26/42'),
  (391520, 27, 1251.2067, -10322.0300, 144.5150, 'climb 27/42'),
  (391520, 28, 1253.3967, -10336.1500, 147.2140, 'climb 28/42'),
  (391520, 29, 1243.1567, -10361.1800, 151.9120, 'climb 29/42'),
  (391520, 30, 1240.9367, -10365.5900, 152.4430, 'climb 30/42'),
  (391520, 31, 1235.4467, -10375.7400, 147.4470, 'climb 31/42'),
  (391520, 32, 1228.4067, -10388.1600, 144.9350, 'climb 32/42'),
  (391520, 33, 1219.9567, -10405.1000, 147.1860, 'climb 33/42'),
  (391520, 34, 1212.7867, -10419.1700, 155.2520, 'climb 34/42'),
  (391520, 35, 1209.5767, -10425.3900, 159.7230, 'climb 35/42'),
  (391520, 36, 1203.3367, -10438.2300, 165.5720, 'climb 36/42'),
  (391520, 37, 1201.0667, -10452.9400, 172.1160, 'climb 37/42'),
  (391520, 38, 1207.3867, -10457.2100, 173.3400, 'climb 38/42'),
  (391520, 39, 1210.6267, -10461.9600, 178.0130, 'climb 39/42'),
  (391520, 40, 1214.2667, -10472.4600, 184.8820, 'climb 40/42'),
  (391520, 41, 1214.0967, -10483.9300, 187.8050, 'climb 41/42'),
  (391520, 42, 1217.2267, -10486.9700, 186.8610, 'climb 42/42'),
  (391520, 43, 1237.4467, -10506.5300, 186.9180, 'the leap across the gap (donor MoveJump)'),
  (391520, 44, 1243.0967, -10514.7600, 188.9870, 'sky falls 1/22'),
  (391520, 45, 1253.6467, -10521.8500, 189.0790, 'sky falls 2/22'),
  (391520, 46, 1255.3567, -10526.2700, 190.1140, 'sky falls 3/22'),
  (391520, 47, 1265.9067, -10528.8800, 186.6540, 'sky falls 4/22'),
  (391520, 48, 1272.6867, -10532.1200, 179.1700, 'sky falls 5/22'),
  (391520, 49, 1279.8467, -10539.0100, 180.4800, 'sky falls 6/22'),
  (391520, 50, 1288.2267, -10546.4100, 180.7130, 'sky falls 7/22'),
  (391520, 51, 1288.7567, -10556.2500, 180.4900, 'sky falls 8/22'),
  (391520, 52, 1296.0167, -10583.4400, 183.6960, 'sky falls 9/22'),
  (391520, 53, 1308.3567, -10609.3000, 181.5170, 'sky falls 10/22'),
  (391520, 54, 1318.8667, -10636.0700, 182.4180, 'sky falls 11/22'),
  (391520, 55, 1335.3767, -10655.8500, 183.3190, 'sky falls 12/22'),
  (391520, 56, 1347.6267, -10673.4600, 185.1680, 'sky falls 13/22'),
  (391520, 57, 1361.8367, -10693.1100, 185.2920, 'sky falls 14/22'),
  (391520, 58, 1366.7667, -10716.7400, 186.2870, 'sky falls 15/22'),
  (391520, 59, 1364.4967, -10726.5400, 185.8470, 'sky falls 16/22'),
  (391520, 60, 1358.4067, -10746.9600, 190.3190, 'sky falls 17/22'),
  (391520, 61, 1350.3767, -10783.0100, 202.6380, 'sky falls 18/22'),
  (391520, 62, 1341.2167, -10803.9200, 211.5340, 'sky falls 19/22'),
  (391520, 63, 1332.1367, -10816.6900, 217.8680, 'sky falls 20/22'),
  (391520, 64, 1321.2767, -10823.7100, 221.3250, 'sky falls 21/22'),
  (391520, 65, 1299.5867, -10839.3200, 220.6030, 'sky falls 22/22');

-- ============================================================
-- 2. Bastia 36585 — quest 14240 "To the Cliffs"
-- ============================================================
-- Donor: IsSummonedBy -> REACT_PASSIVE + rooted. PassengerBoarded(player, apply) ->
-- EVENT_BASTIA_1 in 2500ms -> unroot + MoveSmoothPath. MovementInform at the last point
-- -> MoveJump + EVENT_BASTIA_2 in 4000ms -> player->ExitVehicle() + DespawnOrUnsummon.
-- PassengerBoarded(!apply) -> DespawnOrUnsummon.
--
-- Rooting is dropped: MovementType is 0 (idle) and the react state is passive, so she
-- stands still until the escort starts anyway, and SET_ROOT would have to be undone by a
-- second row for no gain.
--
-- ESCORT_START params are (forcedMovement, pathID, repeat, quest, despawnTime, reactState);
-- forcedMovement 2 = FORCED_MOVEMENT_RUN (MotionMaster.h:88). No player is in the target
-- list (target_type 1 = SELF), so nothing is stored in SMART_ESCORT_TARGETS and the escort
-- never waits on, or paces itself to, the rider — which is what we want for a ferry.

DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid = 36585;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (36585, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'To the Cliffs - Bastia is a ferry, not a fighter (REACT_PASSIVE)'),
  (36585, 0, 1, 0, 27, 0, 100, 0, 0, 0, 0, 0, 80, 3658500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'To the Cliffs - rider aboard -> run the trip'),
  (36585, 0, 2, 0, 28, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'To the Cliffs - rider got off -> despawn'),
  (36585, 0, 3, 4, 58, 0, 100, 0, 0, 365850, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'To the Cliffs - arrived at Scout Brax -> set the rider down'),
  (36585, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'To the Cliffs - and Bastia heads home');

-- Actionlist rows run in id order; event_param1/2 are the delay BEFORE each row, so the
-- 2500 is the donor's EVENT_BASTIA_1 schedule. The FORCE_DESPAWN is a stall net, not a
-- timer for the ride: the trip is ~600 yd at speed_run 1.7 (~12 yd/s) = under a minute,
-- and the earliest-armed despawn wins, so row 4 above still ends a normal ride.

DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid = 3658500;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (3658500, 9, 0, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 53, 2, 365850, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'To the Cliffs - go (forcedMovement 2 = RUN)'),
  (3658500, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 600000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'To the Cliffs - stall net, never strand a rider');

-- ============================================================
-- 3. Bastia 39152 — quest 25100 "Let's Ride"
-- ============================================================
-- Same script, longer trip: the donor splits it into two MoveSmoothPath legs either side
-- of a MoveJump, and ends with CastSpell(SPELL_EJECT_ALL_PASSENGERS) + DespawnOrUnsummon.
-- 50630 "Eject All Passengers" is that spell in 3.3.5a (effect 77 SCRIPT_EFFECT, stock).
--
-- The donor also despawns if the rider ends up more than 120 yd away, which cannot happen
-- to a passenger and has no data-driven counterpart; the PASSENGER_REMOVED row covers the
-- case it was really guarding (rider gone -> nothing to carry).
--
-- The ride is ~1200 yd at speed_run 2.0 (~14 yd/s), so about a minute and a half of
-- climbing from the beach up to Sky Falls.

DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid = 39152;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (39152, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lets Ride - Bastia is a ferry, not a fighter (REACT_PASSIVE)'),
  (39152, 0, 1, 0, 27, 0, 100, 0, 0, 0, 0, 0, 80, 3915200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lets Ride - rider aboard -> run the trip'),
  (39152, 0, 2, 0, 28, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lets Ride - rider got off -> despawn'),
  (39152, 0, 3, 4, 58, 0, 100, 0, 0, 391520, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lets Ride - arrived at Sky Falls -> set the rider down'),
  (39152, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lets Ride - and Bastia heads home');

DELETE FROM `smart_scripts` WHERE source_type = 9 AND entryorguid = 3915200;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (3915200, 9, 0, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 53, 2, 391520, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lets Ride - go (forcedMovement 2 = RUN)'),
  (3915200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 600000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lets Ride - stall net, never strand a rider');
