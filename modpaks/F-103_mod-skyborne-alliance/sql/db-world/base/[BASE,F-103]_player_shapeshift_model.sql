/* Skyborne druid forms copy whatever the Home race (Human) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @AllianceSkyborne;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @AllianceSkyborne, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @AllianceSkyborneHome
GROUP BY `ShapeshiftID`, `GenderID`;
