/* Shivan druid forms copy whatever the Home race (Draenei) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Shivan;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Shivan, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @ShivanHome
GROUP BY `ShapeshiftID`, `GenderID`;
