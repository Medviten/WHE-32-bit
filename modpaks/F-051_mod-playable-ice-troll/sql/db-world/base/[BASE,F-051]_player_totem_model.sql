DELETE FROM `player_totem_model` WHERE `RaceID` IN (@IceTroll);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @IceTroll, @TrollFireTotem),
(2, @IceTroll, @TrollEarthTotem),
(3, @IceTroll, @TrollWaterTotem),
(4, @IceTroll, @TrollAirTotem);
