/* The starting pets: tameable creatures copied from a stock beast of the same family (tools/races/retail_pets.py) */
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (69100, 69101, 69102, 69103, 69104, 69105, 69106, 69107, 69108, 69109, 69110, 69111, 69112, 69113, 69114, 69115, 69116, 69117, 69118, 69119, 69120, 69121, 69122);
DELETE FROM `creature_template` WHERE `entry` IN (69100, 69101, 69102, 69103, 69104, 69105, 69106, 69107, 69108, 69109, 69110, 69111, 69112, 69113, 69114, 69115, 69116, 69117, 69118, 69119, 69120, 69121, 69122);

DROP TEMPORARY TABLE IF EXISTS `pet_copy`;
CREATE TEMPORARY TABLE `pet_copy` LIKE `creature_template`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 299;
UPDATE `pet_copy` SET `entry` = 69100, `name` = 'Wolf', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 3098;
UPDATE `pet_copy` SET `entry` = 69101, `name` = 'Boar', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 1128;
UPDATE `pet_copy` SET `entry` = 69102, `name` = 'Bear', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 2031;
UPDATE `pet_copy` SET `entry` = 69103, `name` = 'Cat', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 1504;
UPDATE `pet_copy` SET `entry` = 69104, `name` = 'Spider', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 2955;
UPDATE `pet_copy` SET `entry` = 69105, `name` = 'Tallstrider', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 2031;
UPDATE `pet_copy` SET `entry` = 69106, `name` = 'Mechanical', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 3123;
UPDATE `pet_copy` SET `entry` = 69107, `name` = 'Raptor', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 15650;
UPDATE `pet_copy` SET `entry` = 69108, `name` = 'Dragonhawk', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 16520;
UPDATE `pet_copy` SET `entry` = 69109, `name` = 'Moth', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 2231;
UPDATE `pet_copy` SET `entry` = 69110, `name` = 'Crab', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 299;
UPDATE `pet_copy` SET `entry` = 69111, `name` = 'Hound', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 299;
UPDATE `pet_copy` SET `entry` = 69112, `name` = 'Hound', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 1995;
UPDATE `pet_copy` SET `entry` = 69113, `name` = 'Eagle', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 1995;
UPDATE `pet_copy` SET `entry` = 69114, `name` = 'Falcon', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 3098;
UPDATE `pet_copy` SET `entry` = 69115, `name` = 'Stag', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 299;
UPDATE `pet_copy` SET `entry` = 69116, `name` = 'Wolf', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 299;
UPDATE `pet_copy` SET `entry` = 69117, `name` = 'Mechanical', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 2031;
UPDATE `pet_copy` SET `entry` = 69118, `name` = 'Cat', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 33710;
UPDATE `pet_copy` SET `entry` = 69119, `name` = 'Turtle', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 18464;
UPDATE `pet_copy` SET `entry` = 69120, `name` = 'Warp Stalker', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 5048;
UPDATE `pet_copy` SET `entry` = 69121, `name` = 'Serpent', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
INSERT INTO `pet_copy` SELECT * FROM `creature_template` WHERE `entry` = 3098;
UPDATE `pet_copy` SET `entry` = 69122, `name` = 'Direhorn', `subname` = NULL, `minlevel` = 1, `maxlevel` = 1, `faction` = 35, `npcflag` = 0, `lootid` = 0, `pickpocketloot` = 0, `skinloot` = 0, `mingold` = 0, `maxgold` = 0, `AIName` = '', `ScriptName` = '';
INSERT INTO `creature_template` SELECT * FROM `pet_copy`;
DELETE FROM `pet_copy`;
DROP TEMPORARY TABLE `pet_copy`;

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(69100, 0, 447, 1, 1, 0),
(69101, 0, @PetBoarDisplay, 1, 1, 0),
(69102, 0, @PetBearDisplay, 1, 1, 0),
(69103, 0, 9956, 1, 1, 0),
(69104, 0, @PetMineSpiderDisplay, 1, 1, 0),
(69105, 0, @PetTallstriderDisplay, 1, 1, 0),
(69106, 0, @PetRabbitDisplay, 1, 1, 0),
(69107, 0, 1959, 1, 1, 0),
(69108, 0, 17545, 1, 1, 0),
(69109, 0, 17795, 1, 1, 0),
(69110, 0, @PetCrabDisplay, 1, 1, 0),
(69111, 0, @PetMastiffDisplay, 1, 1, 0),
(69112, 0, @PetDarkHoundDisplay, 1, 1, 0),
(69113, 0, @PetEagleDisplay, 1, 1, 0),
(69114, 0, @PetFalconDisplay, 1, 1, 0),
(69115, 0, @PetTalbukDisplay, 1, 1, 0),
(69116, 0, @PetDraenorWolfDisplay, 1, 1, 0),
(69117, 0, @PetMechanowolfDisplay, 1, 1, 0),
(69118, 0, @PetSaberDisplay, 1, 1, 0),
(69119, 0, @PetDragonTurtleDisplay, 1, 1, 0),
(69120, 0, @PetVoidStalkerDisplay, 1, 1, 0),
(69121, 0, @PetGiantSnakeDisplay, 1, 1, 0),
(69122, 0, @PetDirehornDisplay, 1, 1, 0);

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@PetBoarDisplay, @PetBearDisplay, @PetMineSpiderDisplay, @PetTallstriderDisplay, @PetRabbitDisplay, @PetCrabDisplay, @PetMastiffDisplay, @PetDarkHoundDisplay, @PetEagleDisplay, @PetFalconDisplay, @PetTalbukDisplay, @PetDraenorWolfDisplay, @PetMechanowolfDisplay, @PetSaberDisplay, @PetDragonTurtleDisplay, @PetVoidStalkerDisplay, @PetGiantSnakeDisplay, @PetDirehornDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @PetBoarDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 503
UNION ALL
SELECT @PetBearDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 8843
UNION ALL
SELECT @PetMineSpiderDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 513
UNION ALL
SELECT @PetTallstriderDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 1219
UNION ALL
SELECT @PetRabbitDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 11454
UNION ALL
SELECT @PetCrabDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 1000
UNION ALL
SELECT @PetMastiffDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 31049
UNION ALL
SELECT @PetDarkHoundDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 31049
UNION ALL
SELECT @PetEagleDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 10832
UNION ALL
SELECT @PetFalconDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 10832
UNION ALL
SELECT @PetTalbukDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 503
UNION ALL
SELECT @PetDraenorWolfDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 31049
UNION ALL
SELECT @PetMechanowolfDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 31049
UNION ALL
SELECT @PetSaberDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 11454
UNION ALL
SELECT @PetDragonTurtleDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 28819
UNION ALL
SELECT @PetVoidStalkerDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 20025
UNION ALL
SELECT @PetGiantSnakeDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 4317
UNION ALL
SELECT @PetDirehornDisplay, `BoundingRadius`, `CombatReach`, `Gender`, 0 FROM `creature_model_info` WHERE `DisplayID` = 503;
