/* Model info for the player displays: bounding radius and combat reach of the Orc displays */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@HordeDracthyrMaleDisplay, @HordeDracthyrFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @HordeDracthyrMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 51
UNION ALL
SELECT @HordeDracthyrFemaleDisplay, `BoundingRadius`, `CombatReach`, 1, 0 FROM `creature_model_info` WHERE `DisplayID` = 52;
