/* Model info for the player displays: bounding radius and combat reach of the Human displays (male-only race: both displays are male) */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@HozenMaleDisplay, @HozenFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @HozenMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 49
UNION ALL
SELECT @HozenFemaleDisplay, `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 49;
