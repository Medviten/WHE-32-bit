DELETE FROM `player_totem_model` WHERE `RaceID` IN (@Eredar);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @Eredar, @DraeneiFireTotem),
(2, @Eredar, @DraeneiEarthTotem),
(3, @Eredar, @DraeneiWaterTotem),
(4, @Eredar, @DraeneiAirTotem);
