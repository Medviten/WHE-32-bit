/* Model info for the player displays: bounding radius and combat reach of the NightElf displays */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@SatyrMaleDisplay, @SatyrFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @SatyrMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 55
UNION ALL
SELECT @SatyrFemaleDisplay, `BoundingRadius`, `CombatReach`, 1, 0 FROM `creature_model_info` WHERE `DisplayID` = 56;
