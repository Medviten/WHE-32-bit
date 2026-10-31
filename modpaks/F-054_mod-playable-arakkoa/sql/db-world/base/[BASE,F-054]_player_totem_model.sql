DELETE FROM `player_totem_model` WHERE `RaceID` IN (@Arakkoa);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @Arakkoa, @DraeneiFireTotem),
(2, @Arakkoa, @DraeneiEarthTotem),
(3, @Arakkoa, @DraeneiWaterTotem),
(4, @Arakkoa, @DraeneiAirTotem);
