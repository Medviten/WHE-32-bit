/* Beholder druid forms copy whatever the Home race (Gnome) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Beholder;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Beholder, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @BeholderHome
GROUP BY `ShapeshiftID`, `GenderID`;
