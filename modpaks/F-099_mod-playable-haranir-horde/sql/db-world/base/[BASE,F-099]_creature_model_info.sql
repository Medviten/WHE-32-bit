/* Model info for the player displays: bounding radius and combat reach of the Troll displays */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@HordeHaranirMaleDisplay, @HordeHaranirFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @HordeHaranirMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 1478
UNION ALL
SELECT @HordeHaranirFemaleDisplay, `BoundingRadius`, `CombatReach`, 1, 0 FROM `creature_model_info` WHERE `DisplayID` = 1479;
