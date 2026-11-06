-- =============================================================================
-- I-366  Thrall (39594) — port the Thrall the Final Confrontation finale actually
--        wants, so he speaks his lines instead of standing there mute.
--
-- Gallywix's actionlist 3958200 summons 39594 at the end of the fight (his
-- SMART_EVENT_HEALTH_PCT is 0-2%, and SET_INVINCIBILITY_HP_LEVEL keeps him alive,
-- so the whole scene is a finale, not a mid-fight event).
--
-- 39594 was never shipped. It is NOT a donor gap — Neltharion has the template,
-- the SmartAI and the creature_text; it is simply absent from the gen's creature
-- scope fixture, so nothing about it was emitted.
--
-- The first fix repointed the summon at 38935, the Thrall we already had. That put
-- a Thrall on screen but a silent one: 38935 has NO smart_scripts rows at all, and
-- 38935 is a different scene's Thrall anyway (tdb434 PhaseId 180/185 elsewhere,
-- against 39594's PhaseId 184 five yards from Gallywix). Hence "he just stands
-- there" and "nothing from Thrall". The summon is repointed back to 39594 below.
--
-- Template: identity and flags from Neltharion's 39594 (npcflag 1, rank 1,
-- unit_flags 32768, unit_flags2 2048, type_flags 262148); every scaled numeric
-- inherited from our already-ported 38935 rather than copying Cata's raw values
-- (its HealthModifier is 20.0 there), because the gen rescales those and this row
-- must look like something the gen would have produced. He is summoned, talks and
-- despawns, so his combat stats never matter.
--
-- NOT statically spawned. tdb434 shows two "spawns" of 39594 — 0.35 yd apart and
-- 4.6 yd from the summon point, in the same phase — which is the summoned Thrall
-- caught twice in a sniff, not placed content
-- (reference_goblin_gen_go_spawns_neltharion_only, the Wondi's Bunny pattern).
--
-- His SIZE is correct and must not be "fixed": display 38689 is scale 0.90 on model
-- Shaman_Thrall (height 4.84) and Gallywix is scale 3.00 on GoblinMale (height
-- 2.96), so Gallywix stands 2.04x taller. Measured identical against the Cata
-- originals — the giant Gallywix is deliberate.
-- =============================================================================

DELETE FROM `creature_template` WHERE `entry` = 39594;
INSERT INTO `creature_template` SET
  `entry` = 39594,
  `difficulty_entry_1` = 0,
  `difficulty_entry_2` = 0,
  `difficulty_entry_3` = 0,
  `KillCredit1` = 0,
  `KillCredit2` = 0,
  `name` = 'Thrall',
  `subname` = 'Warchief',
  `IconName` = NULL,
  `gossip_menu_id` = 510069,
  `minlevel` = 88,
  `maxlevel` = 88,
  `exp` = 2,
  `faction` = 29,
  `npcflag` = 1,
  `speed_walk` = 1,
  `speed_run` = 0.9921,
  `speed_swim` = 1,
  `speed_flight` = 1,
  `detection_range` = 18,
  `rank` = 1,
  `dmgschool` = 0,
  `DamageModifier` = 35,
  `BaseAttackTime` = 2000,
  `RangeAttackTime` = 0,
  `BaseVariance` = 1,
  `RangeVariance` = 1,
  `unit_class` = 2,
  `unit_flags` = 32768,
  `unit_flags2` = 2048,
  `dynamicflags` = 2048,
  `family` = 0,
  `type` = 7,
  `type_flags` = 262148,
  `lootid` = 0,
  `pickpocketloot` = 0,
  `skinloot` = 0,
  `PetSpellDataId` = 0,
  `VehicleId` = 0,
  `mingold` = 0,
  `maxgold` = 0,
  `AIName` = 'SmartAI',
  `MovementType` = 0,
  `HoverHeight` = 1,
  `HealthModifier` = 0.0621,
  `ManaModifier` = 1.7212,
  `ArmorModifier` = 1,
  `ExperienceModifier` = 1,
  `RacialLeader` = 0,
  `movementId` = 0,
  `RegenHealth` = 1,
  `CreatureImmunitiesId` = 0,
  `flags_extra` = 0,
  `ScriptName` = '';

DELETE FROM `creature_template_model` WHERE `CreatureID` = 39594;
INSERT INTO `creature_template_model` SET
  `CreatureID` = 39594, `Idx` = 0, `CreatureDisplayID` = 38689,
  `DisplayScale` = 1, `Probability` = 1, `VerifiedBuild` = 0;

-- SmartAI: on being summoned, run the finale dialogue then leave. Verbatim from
-- Neltharion (39594 / actionlist 3959400).
DELETE FROM `smart_scripts` WHERE `entryorguid` = 39594 AND `source_type` = 0;
INSERT INTO `smart_scripts`
  (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,
   `event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,
   `action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,
   `target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,
   `target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
  (39594,0,0,0,54,0,100,0, 0,0,0,0,0,0, 80,3959400,2,0,0,0,0, 1,0,0,0,0, 0,0,0,0,
   'Thrall - on summon, run the Final Confrontation finale dialogue');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3959400 AND `source_type` = 9;
INSERT INTO `smart_scripts`
  (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,
   `event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,
   `action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,
   `target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,
   `target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
  (3959400,9,0,0,0,0,100,0, 23000,23000,0,0,0,0, 1,0,0,0,0,0,0, 1,0,0,0,0, 0,0,0,0, 'Thrall - line 0 (emote)'),
  (3959400,9,1,0,0,0,100,0,  3000, 3000,0,0,0,0, 1,1,0,0,0,0,0, 1,0,0,0,0, 0,0,0,0, 'Thrall - line 1'),
  (3959400,9,2,0,0,0,100,0,  6000, 6000,0,0,0,0, 1,2,0,0,0,0,0, 1,0,0,0,0, 0,0,0,0, 'Thrall - line 2'),
  (3959400,9,3,0,0,0,100,0,  9000, 9000,0,0,0,0, 1,3,0,0,0,0,0, 1,0,0,0,0, 0,0,0,0, 'Thrall - line 3'),
  (3959400,9,4,0,0,0,100,0,     0,    0,0,0,0,0,41,15000,0,0,0,0,0, 1,0,0,0,0, 0,0,0,0, 'Thrall - despawn after the scene');

-- Dialogue, verbatim from Neltharion. Type values are the donor's raw ChatMsg
-- numbers, which is what the gen emits for every other ported line (creature_text.py
-- writes `_i(r["type"])` unmapped) and what Gallywix's own working RP uses.
DELETE FROM `creature_text` WHERE `CreatureID` = 39594;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
  (39594,0,0,'%s grunts and thinks a moment on what to do with the Trade prince.',16,0,100,0,0,0,0,0,'Thrall'),
  (39594,1,0,'For now, you will remain the Trade Prince of the Bilgewater Cartel.',14,0,100,1,0,0,0,0,'Thrall'),
  (39594,2,0,'I will send a representative from amongst your people to the new warchief, Garrosh Hellscream in Orgrimmar.',14,0,100,1,0,0,0,0,'Thrall'),
  (39594,3,0,'You will have a new home in Azshara and the Bilgewater Cartel will be part of the Horde!',14,0,100,5,0,0,0,0,'Thrall');

-- Point the summon back at the Thrall that owns this scene.
UPDATE `smart_scripts` SET `action_param1` = 39594
WHERE `source_type` = 9 AND `entryorguid` = 3958200 AND `id` = 0;
