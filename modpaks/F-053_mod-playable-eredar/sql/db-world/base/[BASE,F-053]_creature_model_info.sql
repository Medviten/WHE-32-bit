/* Model info for the player displays: bounding radius and combat reach of the Draenei displays */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@EredarMaleDisplay, @EredarFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @EredarMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 16125
UNION ALL
SELECT @EredarFemaleDisplay, `BoundingRadius`, `CombatReach`, 1, 0 FROM `creature_model_info` WHERE `DisplayID` = 16126;
