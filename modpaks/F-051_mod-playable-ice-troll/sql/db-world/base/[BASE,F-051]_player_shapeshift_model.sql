/* Ice Troll druid forms copy whatever the Home race (Troll) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @IceTroll;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @IceTroll, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @IceTrollHome
GROUP BY `ShapeshiftID`, `GenderID`;
