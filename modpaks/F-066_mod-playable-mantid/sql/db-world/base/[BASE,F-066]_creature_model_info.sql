/* Model info for the player displays: bounding radius and combat reach of the Tauren displays (male-only race: both displays are male) */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@MantidMaleDisplay, @MantidFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @MantidMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 59
UNION ALL
SELECT @MantidFemaleDisplay, `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 59;
