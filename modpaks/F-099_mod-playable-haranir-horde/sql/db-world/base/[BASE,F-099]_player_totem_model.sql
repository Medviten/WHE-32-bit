DELETE FROM `player_totem_model` WHERE `RaceID` IN (@HordeHaranir);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @HordeHaranir, @TrollFireTotem),
(2, @HordeHaranir, @TrollEarthTotem),
(3, @HordeHaranir, @TrollWaterTotem),
(4, @HordeHaranir, @TrollAirTotem);
