/* Venthyr druid forms copy whatever the Home race (Undead) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Venthyr;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Venthyr, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @VenthyrHome
GROUP BY `ShapeshiftID`, `GenderID`;
