/* Quillboar druid forms copy whatever the Home race (Tauren) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Quillboar;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Quillboar, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @QuillboarHome
GROUP BY `ShapeshiftID`, `GenderID`;
