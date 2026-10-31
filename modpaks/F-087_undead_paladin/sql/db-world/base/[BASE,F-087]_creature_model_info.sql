-- Sizes of the Thalassian Warhorse and Charger displays
DELETE FROM `creature_model_info` WHERE `DisplayID` IN (@ForsakenWarhorseDisplay, @ForsakenChargerDisplay);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `Gender`, `DisplayID_Other_Gender`, `VerifiedBuild`)
SELECT IF(`DisplayID` = @ThalassianWarhorseDisplay, @ForsakenWarhorseDisplay, @ForsakenChargerDisplay),
       `BoundingRadius`, `CombatReach`, `Gender`, 0, 12340
FROM `creature_model_info` WHERE `DisplayID` IN (@ThalassianWarhorseDisplay, @ThalassianChargerDisplay);
