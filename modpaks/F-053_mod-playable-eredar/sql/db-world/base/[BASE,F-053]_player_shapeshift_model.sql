/* Eredar druid forms copy whatever the Home race (Draenei) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Eredar;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Eredar, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @EredarHome
GROUP BY `ShapeshiftID`, `GenderID`;
