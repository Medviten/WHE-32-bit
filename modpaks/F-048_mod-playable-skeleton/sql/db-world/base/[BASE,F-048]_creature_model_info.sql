/* Model info for the player displays: bounding radius and combat reach of the Undead displays */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@SkeletonMaleDisplay, @SkeletonFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @SkeletonMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 57
UNION ALL
SELECT @SkeletonFemaleDisplay, `BoundingRadius`, `CombatReach`, 1, 0 FROM `creature_model_info` WHERE `DisplayID` = 58;
