DELETE FROM `player_totem_model` WHERE `RaceID` IN (@Centaur);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @Centaur, @TaurenFireTotem),
(2, @Centaur, @TaurenEarthTotem),
(3, @Centaur, @TaurenWaterTotem),
(4, @Centaur, @TaurenAirTotem);
