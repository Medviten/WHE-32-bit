/* Model info for the player displays: bounding radius and combat reach of the Undead displays (male-only race: both displays are male) */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@NorthrendSkeletonMaleDisplay, @NorthrendSkeletonFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @NorthrendSkeletonMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 57
UNION ALL
SELECT @NorthrendSkeletonFemaleDisplay, `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 57;
