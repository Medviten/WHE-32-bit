DELETE FROM `player_totem_model` WHERE `RaceID` IN (@Quillboar);
INSERT INTO `player_totem_model` (`TotemID`, `RaceID`, `ModelID`) VALUES
(1, @Quillboar, @TaurenFireTotem),
(2, @Quillboar, @TaurenEarthTotem),
(3, @Quillboar, @TaurenWaterTotem),
(4, @Quillboar, @TaurenAirTotem);
