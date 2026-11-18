-- [I-380] Paladin and druid trainers in Kezan and the Lost Isles, for ARAC's goblin paladins and druids.
--
-- Kezan's class trainers cover the seven Cataclysm Goblin classes. With F-029 (all trainers; its variables.sql sets
-- @AllTrainersEnabled), a paladin and a druid trainer also stand beside Sister Goldskimmer wherever she trains, in the
-- same phases, as F-029 adds trainers to the stock starting areas and F-130 does in Gilneas ([I-379]). Kezan's class
-- quests don't gate its main path, so no other change is needed for those classes.
--
-- Gossip is stock's (Aurelon's paladin menu 7260, Harene Plainwalker's druid menu 4605), trainer lists are the Horde
-- full lists, as Kezan's own trainers have (paladin 4 as Noellene, druid 33 as Gennia Runetotem; 6 and 34 are the
-- starting-area lists, which stop at level 6), looks are Kezan Citizen displays.
--
-- Loads after zz_[AUTO,F-011]_*.sql ("[I-" sorts after "[AUTO,"). Spawn guids 12009901+ stay clear of the
-- generator's (Kezan 12000001+, Lost Isles 11000001+).

SET @KezanAracTrainers = COALESCE(@AllTrainersEnabled, 0) <> 0;

DELETE FROM `creature_template` WHERE `entry` IN (@KezanPaladinTrainerCreatureID, @KezanDruidTrainerCreatureID);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
  (@KezanPaladinTrainerCreatureID, 0, 0, 0, 0, 0, 'Brother Brix Gearlight', 'Paladin Trainer', NULL, 7260, 6, 6, 0, @BilgewaterCivilianFactionTemplate, 49, 1, 1.1429, 1, 1.1429, 18, 0, 0, 0.75, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 0),
  (@KezanDruidTrainerCreatureID, 0, 0, 0, 0, 0, 'Fernie Mossgrubber', 'Druid Trainer', NULL, 4605, 6, 6, 0, @BilgewaterCivilianFactionTemplate, 49, 1, 1.1429, 1, 1.1429, 18, 0, 0, 0.75, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 0);

-- Kezan Citizen displays
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@KezanPaladinTrainerCreatureID, @KezanDruidTrainerCreatureID);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
  (@KezanPaladinTrainerCreatureID, 0, 29563, 1, 1, 0),
  (@KezanDruidTrainerCreatureID, 0, 29564, 1, 1, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (@KezanPaladinTrainerCreatureID, @KezanDruidTrainerCreatureID);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
  (@KezanPaladinTrainerCreatureID, 4),
  (@KezanDruidTrainerCreatureID, 33);

-- 1.5 yards either side of each Sister Goldskimmer spawn, same phase and facing
DELETE FROM `creature` WHERE `guid` BETWEEN 12009901 AND 12009920;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
  (12009901, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 6144, 0, -8946.85, -11472.11, 102.5280, 1.9678, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Kezan paladin trainer (I-380)'),
  (12009902, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 6144, 0, -8944.08, -11470.95, 102.5280, 1.9678, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Kezan druid trainer (I-380)'),
  (12009903, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 1027, 0, -8957.13, -11451.82, 105.0370, 4.6256, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Kezan paladin trainer (I-380)'),
  (12009904, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 1027, 0, -8960.12, -11451.56, 105.0370, 4.6256, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Kezan druid trainer (I-380)'),
  (12009905, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 4, 0, -8958.64, -11450.92, 105.0540, 0.0000, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Kezan paladin trainer (I-380)'),
  (12009906, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 4, 0, -8958.64, -11453.92, 105.0540, 0.0000, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Kezan druid trainer (I-380)'),
  (12009907, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 1, 0, 105.32, -9665.71, 1.6723, 5.6200, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles paladin trainer (I-380)'),
  (12009908, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 1, 0, 103.47, -9668.07, 1.6723, 5.6200, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles druid trainer (I-380)'),
  (12009909, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 4, 0, 326.24, -10046.60, 118.9500, 5.3931, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles paladin trainer (I-380)'),
  (12009910, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 4, 0, 323.91, -10048.48, 118.9500, 5.3931, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles druid trainer (I-380)'),
  (12009911, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 1024, 0, 1850.43, -10338.40, 11.3235, 0.7330, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles paladin trainer (I-380)'),
  (12009912, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 1024, 0, 1852.44, -10340.62, 11.3235, 0.7330, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles druid trainer (I-380)'),
  (12009913, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 50176, 0, 1511.62, -10207.77, 10.2111, 3.8397, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles paladin trainer (I-380)'),
  (12009914, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 50176, 0, 1509.69, -10205.47, 10.2111, 3.8397, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles druid trainer (I-380)'),
  (12009915, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 32768, 0, 1271.83, -10844.38, 221.7040, 4.3284, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles paladin trainer (I-380)'),
  (12009916, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 32768, 0, 1269.05, -10843.26, 221.7040, 4.3284, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles druid trainer (I-380)'),
  (12009917, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 10240, 0, 379.59, -10473.15, 5.3238, 0.2214, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles paladin trainer (I-380)'),
  (12009918, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 10240, 0, 380.25, -10476.07, 5.3238, 0.2214, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles druid trainer (I-380)'),
  (12009919, @KezanPaladinTrainerCreatureID, 1, 0, 0, 1, 4096, 0, 381.10, -10475.55, 5.2409, 4.0385, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles paladin trainer (I-380)'),
  (12009920, @KezanDruidTrainerCreatureID, 1, 0, 0, 1, 4096, 0, 378.75, -10473.67, 5.2409, 4.0385, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 'F-013 Lost Isles druid trainer (I-380)');
DELETE FROM `creature` WHERE `guid` BETWEEN 12009901 AND 12009920 AND NOT @KezanAracTrainers;
