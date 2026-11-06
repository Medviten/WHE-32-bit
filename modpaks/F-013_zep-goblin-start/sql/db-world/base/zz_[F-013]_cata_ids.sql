-- Rows Zeppelin-Craft's zpak points at but doesn't have, taken from Project Neltharion's 4.3.4 world database
-- (source/sql/base/world.zip), Zeppelin's own donor. tools/races/zep_goblin_port.py copies this file into F-013, so
-- change it here, not in the modpak. Neltharion's map 648 positions move to Kalimdor the way Zeppelin moves the rest
-- of the zone: X - 533.3333, Y - 12800.
--
-- The spells and visuals these rows use are in dbc/[F-013]_cata_*.sql, made by tools/races/cata406_dbc_port.py.

-- Spawn guids: 11950124 and up are free in the block Zeppelin keeps for hand-written Lost Isles spawns, 12950000 and up
-- in Kezan's
SET @GUID := 11950124;
SET @KEZAN_GUID := 12950000;

-- ---------------------------------------------------------------------------------------------------------------
-- 44775 Generic Bunny - PRK (Large AOI): where the four "447" (14125) summons put the generator, the stove leak, the
-- bed and the Gasbot in the KTC headquarters (70198, 70241, 70249, 70252 pick the nearest one). Zeppelin drops it
-- with the other bunnies, so none of the four appeared. The generated addon row stays; its display, 22903, is the
-- Rocket Chicken in 3.3.5a, so it gets the invisible stalker too.
-- ---------------------------------------------------------------------------------------------------------------

DELETE FROM `creature_template` WHERE `entry` = 44775;
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `exp`, `faction`, `speed_walk`, `speed_run`,
  `speed_swim`, `speed_flight`, `BaseAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`,
  `AIName`, `flags_extra`) VALUES
  (44775, 'Generic Bunny - PRK (Large AOI)', 60, 60, 1, 35, 1, 1.14286, 1, 1.14286, 2000, 1, 33554688, 2048, 10, 1048576, '', 128);

DELETE FROM `creature_template_model` WHERE `CreatureID` = 44775;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
  (44775, 0, 11686, 1, 1, 0);

DELETE FROM `creature_template_movement` WHERE `CreatureId` = 44775;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`) VALUES
  (44775, 0, 0, 1);

DELETE FROM `creature` WHERE `guid` BETWEEN @KEZAN_GUID AND @KEZAN_GUID + 3;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`,
  `position_z`, `orientation`, `spawntimesecs`, `unit_flags`, `Comment`) VALUES
  (@KEZAN_GUID + 0, 44775, 1, 1, 2048, 0, -8957.2633, -11427.05, 106.663, 4.66003, 300, 33554432, '[F-013] Neltharion 12018'),
  (@KEZAN_GUID + 1, 44775, 1, 1, 2048, 0, -8935.7433, -11428.63, 106.114, 3.10665, 300, 33554432, '[F-013] Neltharion 12278'),
  (@KEZAN_GUID + 2, 44775, 1, 1, 2048, 0, -8936.6233, -11436.55, 119.42, 3.43783, 300, 33554432, '[F-013] Neltharion 12097'),
  (@KEZAN_GUID + 3, 44775, 1, 1, 2048, 0, -8957.9033, -11473.69, 101.93, 1.55861, 300, 33554432, '[F-013] Neltharion 12059');

-- ---------------------------------------------------------------------------------------------------------------
-- Wondi's Bunnies: Neltharion's invisible markers. Zeppelin drops every creature with "bunny" in its name, but kept
-- the conditions and scripts that need these ones.
--   75047 Generic Nearby Target 4: where 73991 (Final Confrontation) puts the footbomb shredder and 68286 (Weed
--         Whacker) the first Orc Hunter
--   75048 MANTAUR - Seat 2: where 68287 (Weed Whacker) puts the second Orc Hunter
--   75115 The Biggest Egg Ever - Eggs Spread Controller: Assistant Greely summons it for the egg event; it throws eggs
--   75123 Valves - Water Steam Impact: the valves of Mechashark X-Steam (24817) steam when 73838 hits them
-- They use the stock invisible stalker, 11686: their Neltharion display, 16480, is an Imp in 3.3.5a.
-- ---------------------------------------------------------------------------------------------------------------

DELETE FROM `creature_template` WHERE `entry` IN (75047, 75048, 75115, 75123);
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `minlevel`, `maxlevel`, `exp`, `faction`, `speed_walk`,
  `speed_run`, `speed_swim`, `speed_flight`, `rank`, `DamageModifier`, `unit_class`, `unit_flags`, `type`,
  `type_flags`, `AIName`, `flags_extra`) VALUES
  (75047, 'Wondi''s Bunny - Generic Nearby Target 4', 'WORLD', 85, 85, 2, 35, 1, 1.14286, 1, 1.14286, 1, 100.5, 1, 33554432, 7, 4172, '', 128),
  (75048, 'Wondi''s Bunny - MANTAUR - Seat 2', 'Uldum', 85, 85, 2, 35, 1, 1.14286, 1, 1.14286, 1, 100.5, 1, 33554432, 7, 4172, '', 128),
  (75115, 'Wondi''s Bunny - The Biggest Egg Ever - Eggs Spread Controller', 'The Lost Isles', 85, 85, 2, 35, 1, 1.14286, 1, 1.14286, 0, 100.5, 1, 33554432, 7, 4172, 'SmartAI', 128),
  (75123, 'Wondi''s Bunny - Valves - Water Steam Impact', 'The Lost Isles', 85, 85, 2, 35, 1, 1.14286, 1, 1.14286, 0, 100.5, 1, 33554432, 7, 4172, 'SmartAI', 128);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (75047, 75048, 75115, 75123);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
  (75047, 0, 11686, 1, 1, 0),
  (75048, 0, 11686, 1, 1, 0),
  (75115, 0, 11686, 1, 1, 0),
  (75123, 0, 11686, 1, 1, 0);

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (75047, 75048, 75115, 75123);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`) VALUES
  (75047, 0, 0, 1),
  (75048, 0, 0, 1),
  (75115, 0, 0, 1),
  (75123, 0, 0, 1);

-- 75115 and 75123 aren't spawned: 75115 is summoned, 75123's four valves are below
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID + 6;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`,
  `position_z`, `orientation`, `spawntimesecs`, `unit_flags`, `Comment`) VALUES
  (@GUID + 0, 75123, 1, 1, 50176, 0, 1932.2367, -10705.57, 16.7727, 4.79966, 300, 33554432, '[F-013] Neltharion 189326'),
  (@GUID + 1, 75123, 1, 1, 50176, 0, 1965.2867, -10667.44, 16.8831, 4.97419, 300, 33554432, '[F-013] Neltharion 185005'),
  (@GUID + 2, 75123, 1, 1, 50176, 0, 1954.8967, -10697.4, 18.083, 3.10665, 300, 33554432, '[F-013] Neltharion 185030'),
  (@GUID + 3, 75123, 1, 1, 50176, 0, 1994.3167, -10680.46, 20.4434, 3.9619, 300, 33554432, '[F-013] Neltharion 184997'),
  (@GUID + 4, 75047, 1, 1, 32, 0, 1602.5867, -10397.72, 41.2906, 0.446478, 300, 33554432, '[F-013] Neltharion 190757, by the Ultimate Footbomb Uniform'),
  (@GUID + 5, 75047, 1, 1, 1, 0, 64.0297, -10012.62, 88.7914, 0.459719, 300, 33554432, '[F-013] Neltharion 169776, Weed Whacker'),
  (@GUID + 6, 75048, 1, 1, 1, 0, 65.7727, -10016.99, 89.108, 0.565748, 300, 33554432, '[F-013] Neltharion 178247, Weed Whacker');

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (75115, 75123);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
  `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`,
  `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`,
  `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (75115, 0, 0, 0, 1, 0, 100, 0, 0, 0, 200, 400, 11, 71608, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eggs Spread Controller - out of combat - cast The Biggest Egg Ever: Egg Fountain'),
  (75123, 0, 0, 0, 8, 0, 100, 0, 73838, 0, 0, 0, 11, 73839, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Valves - hit by 73838 - cast Cosmetic - Water Steam Impact');

-- 68286 and 68287 summon the Orc Hunters at the nearest marker
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (68286, 68287, 70330);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`,
  `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`,
  `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
  (13, 1, 68286, 0, 0, 31, 0, 3, 75047, 0, 0, 0, 0, '', 'Weed Whacker: Summon Orc Hunter 01 - at Wondi''s Bunny 75047'),
  (13, 1, 68287, 0, 0, 31, 0, 3, 75048, 0, 0, 0, 0, '', 'Weed Whacker: Summon Orc Hunter 02 - at Wondi''s Bunny 75048'),
-- Life Savings: the hot rod knocks Kezan citizens out of the way
  (13, 1, 70330, 0, 0, 31, 0, 3, 35063, 0, 0, 0, 0, '', 'Life Savings: Hot Rod - Knockback - Kezan Citizen'),
  (13, 1, 70330, 0, 1, 31, 0, 3, 37683, 0, 0, 0, 0, '', 'Life Savings: Hot Rod - Knockback - Kezan Citizen');

-- 70329 is the periodic trigger of 70330. Nothing casts it in Neltharion either (the knockback reaction of 35063 and
-- 37683 never fired there), so the Life Savings hot rod carries it, as its 100 ms trigger suggests.
DELETE FROM `creature_template_addon` WHERE `entry` = 37676;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
  (37676, 0, 0, 0, 0, 0, 0, '70329');

-- 70390 Life Savings: Rope Ladder jumps to the top of the ladder (gameobject 201791)
DELETE FROM `spell_target_position` WHERE `ID` = 70390;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`) VALUES
  (70390, 0, 1, -8395.0833, -10968.63, 8.53, 0.055);

-- ---------------------------------------------------------------------------------------------------------------
-- 36042 Orc Scout: the scout a Strangle Vine (35995) holds. The vine summons him when it spawns and he boards it;
-- when it dies it tells him (data 1 = 1) and throws him off, and he thanks the player and runs off.
-- Neltharion's 151111, a server-side 8 s self-fear, is stock 31358 Fear here, which does the same.
-- ---------------------------------------------------------------------------------------------------------------

DELETE FROM `creature_template` WHERE `entry` = 36042;
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `faction`, `speed_walk`, `speed_run`,
  `DamageModifier`, `BaseAttackTime`, `unit_class`, `dynamicflags`, `type`, `AIName`) VALUES
  (36042, 'Orc Scout', 7, 8, 35, 1, 1.42857, 0.75, 2000, 1, 2048, 7, 'SmartAI');

DELETE FROM `creature_template_model` WHERE `CreatureID` = 36042;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
  (36042, 0, 29951, 1, 1, 0),
  (36042, 1, 29952, 1, 1, 0),
  (36042, 2, 29953, 1, 1, 0),
  (36042, 3, 29954, 1, 1, 0);

-- Neltharion's addon also has 46598 Ride Vehicle Hardcoded as an aura, which needs a vehicle to cast it on; the
-- actionlist below casts it on the vine instead
DELETE FROM `creature_template_addon` WHERE `entry` = 36042;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
  (36042, 0, 0, 0, 1, 0, 0, '');

DELETE FROM `creature_text` WHERE `CreatureID` = 36042;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`,
  `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
  (36042, 0, 0, 'My ribs are broken.', 12, 0, 100, 1, 0, 0, 0, 0, 'Orc Scout'),
  (36042, 0, 1, 'Throm-Ka, goblin!', 12, 0, 100, 5, 0, 0, 0, 0, 'Orc Scout'),
  (36042, 0, 2, 'Aka''Magosh, goblin!', 12, 0, 100, 5, 0, 0, 0, 0, 'Orc Scout'),
  (36042, 0, 3, 'Lok''tar!', 12, 0, 100, 5, 0, 0, 0, 0, 'Orc Scout'),
  (36042, 0, 4, 'I give you thanks for my life.', 12, 0, 100, 1, 0, 0, 0, 0, 'Orc Scout');

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 36042) OR (`source_type` = 9 AND `entryorguid` IN (3604200, 3604201));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
  `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`,
  `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`,
  `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (36042, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 80, 3604200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - data 1 = 1 (vine died) - run actionlist'),
  (36042, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 3604201, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - just summoned - run actionlist'),
  (3604200, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'Orc Scout - face the closest player'),
  (3604200, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'Orc Scout - say a line to the closest player'),
  (3604200, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 31358, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - cast Fear on self (Neltharion: 151111)'),
  (3604200, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - despawn in 2 s'),
  (3604201, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 19, 35995, 10, 0, 0, 0, 0, 0, 'Orc Scout - board the closest Strangle Vine');

-- ---------------------------------------------------------------------------------------------------------------
-- 35918 Orc Scout (Orc Hunter): the two hunters 68289 (Weed Whacker: Quest Complete) summons. They go ahead along
-- the path the player cleared and leave.
-- ---------------------------------------------------------------------------------------------------------------

DELETE FROM `creature_template` WHERE `entry` = 35918;
INSERT INTO `creature_template` (`entry`, `name`, `minlevel`, `maxlevel`, `faction`, `speed_walk`, `speed_run`,
  `DamageModifier`, `BaseAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `AIName`) VALUES
  (35918, 'Orc Scout', 7, 8, 29, 1, 1.14286, 0.75, 2000, 1, 768, 2048, 7, 'SmartAI');

DELETE FROM `creature_template_model` WHERE `CreatureID` = 35918;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
  (35918, 0, 29951, 1, 1, 0),
  (35918, 1, 29952, 1, 1, 0),
  (35918, 2, 29953, 1, 1, 0),
  (35918, 3, 29954, 1, 1, 0);

DELETE FROM `creature_template_addon` WHERE `entry` = 35918;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
  (35918, 0, 0, 0, 2, 385, 0, '');

DELETE FROM `creature_equip_template` WHERE `CreatureID` = 35918;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
  (35918, 1, 10611, 12452, 2552, 0);

DELETE FROM `creature_text` WHERE `CreatureID` = 35918;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`,
  `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
  (35918, 0, 0, '$n has cleared a path. We will go ahead.', 12, 0, 100, 0, 0, 0, 0, 0, 'Orc Scout');

DELETE FROM `waypoints` WHERE `entry` = 35918;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES
  (35918, 1, 180.8947, -9915.93, 86.1, NULL, 0, 'Orc Scout (Weed Whacker)');

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 35918) OR (`source_type` = 9 AND `entryorguid` = 3591800);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`,
  `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`,
  `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`,
  `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (35918, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - data 1 = 1 - say'),
  (35918, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 3591800, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - just summoned - run actionlist'),
  (3591800, 9, 0, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 53, 1, 35918, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - run along the path'),
  (3591800, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Orc Scout - despawn in 5 s');

-- ---------------------------------------------------------------------------------------------------------------
-- 202104 The Biggest Egg Ever - Flavor Event: the egg Assistant Greely's actionlist 3812400 puts on the ground for
-- 17 s. Display 1411 is EasterEgg05 in stock too. Neltharion's SmartGameObjectAI has no rows, so it isn't set here.
-- ---------------------------------------------------------------------------------------------------------------

DELETE FROM `gameobject_template` WHERE `entry` = 202104;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`,
  `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
  (202104, 5, 1411, 'The Biggest Egg Ever - Flavor Event', '', '', '', 6, '', '', 0);
