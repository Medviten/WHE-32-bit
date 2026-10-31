/* Model info for the player displays: bounding radius and combat reach of the Draenei displays (male-only race: both displays are male) */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@ArakkoaMaleDisplay, @ArakkoaFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @ArakkoaMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 16125
UNION ALL
SELECT @ArakkoaFemaleDisplay, `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 16125;
