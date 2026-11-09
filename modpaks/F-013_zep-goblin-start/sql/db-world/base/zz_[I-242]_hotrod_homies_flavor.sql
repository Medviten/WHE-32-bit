-- I-242 "Rolling with my Homies" — homie pickup (quest 14071).
--
-- Retail shape, ported from the donor script
-- (Neltharion-Source/.../scripts/Maelstrom/kezan.cpp,
-- npc_hot_rod_controllable_vehicleAI): the roadside Ace/Izzy/Gobber are
-- KILL-CREDIT MARKERS and never leave their corners. Pressing Grab Passenger on
-- one credits the objective, summons a private rider copy into the car, and hides
-- that marker for that player alone by taking away his quest-invisibility DETECT
-- aura. Everyone else still sees him and can pick him up at the same time.
--
-- Rounds 1-5 instead had the marker itself board the car. That works solo and is
-- broken for everyone else: Unit::_ExitVehicle abandons a creature passenger where
-- it lands and nothing walks a non-evading world spawn home, so the shared spawn
-- was hogged for the whole ride and then stranded off its corner until the grid
-- reloaded (round 6). This file replaces that with the summon+aura design.
--
-- This file owns:
--   * spell_area: quest-invisibility DETECTION for the three markers while on
--     14071 (Ace 49414 type 7 / Izzy 49415 type 8 / Gobber 60921 type 9 come from
--     creature_template_addon), each gated on NOT having that homie's pickup
--     marker aura.
--   * the 62165 Spotlight beam on all three markers.
--   * smart_scripts for 34890/34892/34954 (marker pickup + rider behaviour) and
--     the three pickup-marker resets on Megs 34874.
-- The Hot Rod's own rows (34840) live in zz_[I-257]_robbing_hoods_runover.sql,
-- which owns that entry; the DELETE below still clears its retired audio rows.
-- Marker aura spells 900901-900903: dbc/[I-242]_spell.sql.

-- ---- homie visibility (spell_area, stock 74/11 "while on quest" pattern) ----
-- aura_spell is NEGATIVE = "player must NOT have this aura" (SpellMgr.cpp:1084).
-- Once a homie is picked up the row stops fitting, so UpdateArea/ZoneDependentAuras
-- both skips the autocast AND strips the detect the player already holds -- the
-- marker goes invisible for them and stays that way. Clearing the marker aura
-- (quest accept, below) re-enables the row and the autocast puts the detect back.
--
-- Coupling to know about: 49416/49417 also reveal the two Kezan pool Bilgewater
-- Buccaneers (75106 type 7, 48526 type 8) through these same rows, so a player who
-- has picked Ace/Izzy up stops seeing those two for the rest of 14071. They are
-- party props with no queststarter/questender rows, and they already vanish for
-- everybody the moment 14071 is rewarded (74/11 excludes REWARDED), so nothing
-- that is reachable at this point in the chain depends on them.
DELETE FROM `spell_area` WHERE spell IN (49416, 49417, 60922) AND area = 4737 AND quest_start = 14071;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
  (49416, 4737, 14071, 14071, -900903, 0, 2, 1, 74, 11),
  (49417, 4737, 14071, 14071, -900901, 0, 2, 1, 74, 11),
  (60922, 4737, 14071, 14071, -900902, 0, 2, 1, 74, 11);

-- ---- homie spotlight (retail marks pickup targets with a white beam) ----
-- Stock 62165 Spotlight (aura, permanent, visual 8156) added next to each marker's
-- quest-invisibility aura. AUTO-owned addon rows -> one consolidated UPDATE each.
-- The rider copy strips both auras off itself when it is summoned (see below), so
-- the beam stays on the corner where it belongs and never rides in the car.
UPDATE `creature_template_addon` SET auras = '49415 62165' WHERE entry = 34890;
UPDATE `creature_template_addon` SET auras = '49414 62165' WHERE entry = 34892;
UPDATE `creature_template_addon` SET auras = '60921 62165' WHERE entry = 34954;
-- Guid-keyed creature_addon rows (tdb434 pose data, e.g. Izzy sitting) OVERRIDE the
-- template addon entirely in AC, so the spotlight must ride on them too. Joined by
-- entry — AUTO spawn guids are never pinned in overrides. Ace has no guid row.
UPDATE `creature_addon` ca JOIN creature c ON c.guid = ca.guid SET ca.auras = '49415 62165' WHERE c.id = 34890;
UPDATE `creature_addon` ca JOIN creature c ON c.guid = ca.guid SET ca.auras = '60921 62165' WHERE c.id = 34954;

-- ---- marker + rider SmartAI (one entry serves as both) ----
-- Rows 0-2 run on the world spawn (the marker), rows 3-6 only ever run on a summon
-- (SMART_EVENT_JUST_SUMMONED never fires for a DB spawn), so both halves can share
-- one entry and the rider needs no creature_template of its own. The donor uses
-- separate entries 34957/34958/34959 for the riders; 34959 was never imported and
-- 34957/34958 are the villa questgivers with unrelated JUST_SUMMONED rows of their
-- own, so reusing this entry is both cheaper and safer here.
--
-- Row 0  credit. Invoker of the spellhit is the Hot Rod (vehicle bar spells are
--        cast by the vehicle); CALL_KILLEDMONSTER is the one action that unwraps
--        charmer -> driver (SmartScript.cpp:1187).
-- Row 1  summon the rider AT the invoker, i.e. on top of the car. 30 min timed
--        despawn is only a leash: the Hot Rod unsummons its riders on exit
--        (zz_[I-257], event 28 -> FORCE_DESPAWN on the invoker).
-- Row 2  ping the car with this homie's marker spell. The car re-casts it on its
--        charmer, which is the only exact route to the driver.
-- Row 3/4 the rider drops the marker's quest-invisibility (the driver has just
--        LOST the matching detect, so an invisible rider would be invisible to the
--        one person who must see him) and the spotlight beam.
-- Row 5  rider is unclickable, so a passer-by cannot Grab Passenger someone else's
--        rider and shortcut their own pickup.
-- Row 6  board. Closest 34840 within 15 yd is unambiguous: the rider was summoned
--        on the car, so distance is ~0 even with a second Hot Rod parked nearby.
--        46598 basepoints 0 -> seat -1 -> first free passenger seat (vehicle 448
--        has three: 4946/4947/4952 behind driver seat 4826).
DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid IN (34890, 34892, 34954, 34840, 35999);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (34890, 0, 0, 1, 8, 0, 100, 0, 61178, 0, 0, 0, 33, 34890, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Izzy - On Spellhit Grab Passenger - Kill credit to driver (invoker vehicle -> charmer)'),
  (34890, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 12, 34890, 3, 1800000, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Izzy - Linked - Summon the rider copy onto the Hot Rod'),
  (34890, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 900901, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Izzy - Linked - Ping the Hot Rod with the Izzy pickup marker'),
  (34890, 0, 3, 4, 54, 0, 100, 0, 0, 0, 0, 0, 28, 49415, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Izzy rider - On Summon - Drop quest invisibility (driver just lost the detect)'),
  (34890, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 28, 62165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Izzy rider - Linked - Drop the spotlight beam (it belongs on the corner)'),
  (34890, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Izzy rider - Linked - Not selectable (nobody can Grab Passenger a rider)'),
  (34890, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 218, 46598, 2, 2, 0, 0, 0, 19, 34840, 15, 0, 0, 0, 0, 0, 0, 'Izzy rider - Linked - Ride the Hot Rod it was summoned on'),

  (34892, 0, 0, 1, 8, 0, 100, 0, 61178, 0, 0, 0, 33, 34892, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ace - On Spellhit Grab Passenger - Kill credit to driver (invoker vehicle -> charmer)'),
  (34892, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 12, 34892, 3, 1800000, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ace - Linked - Summon the rider copy onto the Hot Rod'),
  (34892, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 900903, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Ace - Linked - Ping the Hot Rod with the Ace pickup marker'),
  (34892, 0, 3, 4, 54, 0, 100, 0, 0, 0, 0, 0, 28, 49414, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ace rider - On Summon - Drop quest invisibility (driver just lost the detect)'),
  (34892, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 28, 62165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ace rider - Linked - Drop the spotlight beam (it belongs on the corner)'),
  (34892, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ace rider - Linked - Not selectable (nobody can Grab Passenger a rider)'),
  (34892, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 218, 46598, 2, 4, 0, 0, 0, 19, 34840, 15, 0, 0, 0, 0, 0, 0, 'Ace rider - Linked - Ride the Hot Rod it was summoned on'),

  (34954, 0, 0, 1, 8, 0, 100, 0, 61178, 0, 0, 0, 33, 34954, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gobber - On Spellhit Grab Passenger - Kill credit to driver (invoker vehicle -> charmer)'),
  (34954, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 12, 34954, 3, 1800000, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gobber - Linked - Summon the rider copy onto the Hot Rod'),
  (34954, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 900902, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gobber - Linked - Ping the Hot Rod with the Gobber pickup marker'),
  (34954, 0, 3, 4, 54, 0, 100, 0, 0, 0, 0, 0, 28, 60921, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gobber rider - On Summon - Drop quest invisibility (driver just lost the detect)'),
  (34954, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 28, 62165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gobber rider - Linked - Drop the spotlight beam (it belongs on the corner)'),
  (34954, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gobber rider - Linked - Not selectable (nobody can Grab Passenger a rider)'),
  (34954, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 218, 46598, 2, 3, 0, 0, 0, 19, 34840, 15, 0, 0, 0, 0, 0, 0, 'Gobber rider - Linked - Ride the Hot Rod it was summoned on');

-- ---- reset the pickup markers when the quest is (re)accepted ----
-- The marker auras are permanent and saved, so an abandon + retake would otherwise
-- leave the player unable to see homies they had already picked up. Megs 34874 is
-- the only reachable queststarter for 14071 (34957/34958 also carry starter rows
-- but sit in the post-party phase 6144, long past this beat). AUTO owns her rows
-- 0-5, so this file takes 20+.
DELETE FROM `smart_scripts` WHERE source_type = 0 AND entryorguid = 34874 AND id IN (20, 21, 22);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
  (34874, 0, 20, 21, 19, 0, 100, 0, 14071, 0, 0, 0, 28, 900901, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Megs - On Accept 14071 - Clear the Izzy pickup marker'),
  (34874, 0, 21, 22, 61, 0, 100, 0, 0, 0, 0, 0, 28, 900902, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Megs - Linked - Clear the Gobber pickup marker'),
  (34874, 0, 22, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 900903, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'I-242 Megs - Linked - Clear the Ace pickup marker');

-- F-013 (zep_goblin_port.py): one pickup per homie and a fixed seat each, see hot_rod_homies()
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 22 AND SourceGroup = 1 AND SourceEntry IN (34890, 34954, 34892) AND SourceId = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
  (22, 1, 34890, 0, 0, 1, 0, 900901, 0, 0, 1, 0, 0, '', 'Grab Passenger on 34890 only when the Hot Rod doesn''t carry this homie yet (marker 900901)'),
  (22, 1, 34954, 0, 0, 1, 0, 900902, 0, 0, 1, 0, 0, '', 'Grab Passenger on 34954 only when the Hot Rod doesn''t carry this homie yet (marker 900902)'),
  (22, 1, 34892, 0, 0, 1, 0, 900903, 0, 0, 1, 0, 0, '', 'Grab Passenger on 34892 only when the Hot Rod doesn''t carry this homie yet (marker 900903)');
