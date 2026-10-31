DELETE FROM `player_totem_model` WHERE `RaceID` IN (@SlimeGiant);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @SlimeGiant, @OrcFireTotem),
(2, @SlimeGiant, @OrcEarthTotem),
(3, @SlimeGiant, @OrcWaterTotem),
(4, @SlimeGiant, @OrcAirTotem);
