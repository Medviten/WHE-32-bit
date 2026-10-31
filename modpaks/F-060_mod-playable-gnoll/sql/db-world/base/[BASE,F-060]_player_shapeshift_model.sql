/* Gnoll druid forms copy whatever the Home race (Human) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Gnoll;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Gnoll, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @GnollHome
GROUP BY `ShapeshiftID`, `GenderID`;
