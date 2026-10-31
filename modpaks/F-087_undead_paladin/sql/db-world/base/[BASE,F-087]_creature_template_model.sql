DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@ForsakenWarhorseCreatureID, @ForsakenChargerCreatureID);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@ForsakenWarhorseCreatureID, 0, @ForsakenWarhorseDisplay, 1, 1, 12340),
(@ForsakenChargerCreatureID,  0, @ForsakenChargerDisplay,  1, 1, 12340);
