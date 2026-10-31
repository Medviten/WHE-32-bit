/* Slime Giant druid forms copy whatever the Home race (Orc) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @SlimeGiant;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @SlimeGiant, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @SlimeGiantHome
GROUP BY `ShapeshiftID`, `GenderID`;
