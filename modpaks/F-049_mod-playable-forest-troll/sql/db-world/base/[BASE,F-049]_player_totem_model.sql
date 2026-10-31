DELETE FROM `player_totem_model` WHERE `RaceID` IN (@ForestTroll);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @ForestTroll, @TrollFireTotem),
(2, @ForestTroll, @TrollEarthTotem),
(3, @ForestTroll, @TrollWaterTotem),
(4, @ForestTroll, @TrollAirTotem);
