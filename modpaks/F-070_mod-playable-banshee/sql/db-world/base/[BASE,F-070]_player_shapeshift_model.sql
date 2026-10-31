/* Banshee druid forms copy whatever the Home race (Undead) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @Banshee;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @Banshee, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @BansheeHome
GROUP BY `ShapeshiftID`, `GenderID`;
