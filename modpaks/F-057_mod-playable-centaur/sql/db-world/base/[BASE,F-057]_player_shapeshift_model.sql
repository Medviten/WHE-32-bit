/* Centaur druid forms copy whatever the Home race (Tauren) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Centaur;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Centaur, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @CentaurHome
GROUP BY `ShapeshiftID`, `GenderID`;
