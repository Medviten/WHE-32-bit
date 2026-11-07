/* Skyborne druid forms copy whatever the Home race (BloodElf) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @HordeSkyborne;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @HordeSkyborne, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @HordeSkyborneHome
GROUP BY `ShapeshiftID`, `GenderID`;
