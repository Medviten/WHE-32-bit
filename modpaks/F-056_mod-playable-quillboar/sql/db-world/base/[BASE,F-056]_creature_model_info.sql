/* Model info for the player displays: bounding radius and combat reach of the Tauren displays */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@QuillboarMaleDisplay, @QuillboarFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @QuillboarMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 59
UNION ALL
SELECT @QuillboarFemaleDisplay, `BoundingRadius`, `CombatReach`, 1, 0 FROM `creature_model_info` WHERE `DisplayID` = 60;
