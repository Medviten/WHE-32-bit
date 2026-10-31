/* Add models for racial mounts and goblin racial bank NPC */
DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@WorgenWildMaleCreatureID, @WorgenWildFemaleCreatureID, @GilneanMaleCreatureID, @GilneanFemaleCreatureID);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(@WorgenWildMaleCreatureID,   0, @WorgenWildMaleDisplay,   1, 1, 12340), -- Running Wild Male
(@WorgenWildFemaleCreatureID, 0, @WorgenWildFemaleDisplay, 1, 1, 12340); -- Running Wild Female
