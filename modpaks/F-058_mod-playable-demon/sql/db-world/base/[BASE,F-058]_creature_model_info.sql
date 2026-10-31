/* Model info for the player displays: bounding radius and combat reach of the BloodElf displays (male-only race: both displays are male) */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@DemonMaleDisplay, @DemonFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @DemonMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 15476
UNION ALL
SELECT @DemonFemaleDisplay, `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 15476;
