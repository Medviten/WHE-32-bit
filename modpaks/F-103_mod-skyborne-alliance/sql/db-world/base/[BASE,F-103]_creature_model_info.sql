/* Model info for the player displays: bounding radius and combat reach of the BloodElf displays */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@AllianceSkyborneMaleDisplay, @AllianceSkyborneFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`)
SELECT @AllianceSkyborneMaleDisplay,   `BoundingRadius`, `CombatReach`, 0, 0 FROM `creature_model_info` WHERE `DisplayID` = 15476
UNION ALL
SELECT @AllianceSkyborneFemaleDisplay, `BoundingRadius`, `CombatReach`, 1, 0 FROM `creature_model_info` WHERE `DisplayID` = 15475;
