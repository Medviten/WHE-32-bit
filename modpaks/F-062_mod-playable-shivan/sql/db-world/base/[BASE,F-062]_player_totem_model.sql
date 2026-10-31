DELETE FROM `player_totem_model` WHERE `RaceID` IN (@Shivan);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @Shivan, @DraeneiFireTotem),
(2, @Shivan, @DraeneiEarthTotem),
(3, @Shivan, @DraeneiWaterTotem),
(4, @Shivan, @DraeneiAirTotem);
