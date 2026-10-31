/* Forest Troll druid forms copy whatever the Home race (Troll) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @ForestTroll;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @ForestTroll, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @ForestTrollHome
GROUP BY `ShapeshiftID`, `GenderID`;
