DELETE FROM `player_totem_model` WHERE `RaceID` IN (@Mantid);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @Mantid, @TaurenFireTotem),
(2, @Mantid, @TaurenEarthTotem),
(3, @Mantid, @TaurenWaterTotem),
(4, @Mantid, @TaurenAirTotem);
