/* Add model info for player displays (one body: both displays are male) */
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@SlimeGiantMaleDisplay, @SlimeGiantFemaleDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`) VALUES
(@SlimeGiantMaleDisplay,   0.6111, 1.5, 0, 0),
(@SlimeGiantFemaleDisplay, 0.6111, 1.5, 0, 0);
