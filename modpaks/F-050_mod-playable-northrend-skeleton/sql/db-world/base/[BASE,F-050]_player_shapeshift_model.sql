/* Northrend Skeleton druid forms copy whatever the Home race (Undead) has (F-011 or stock) */
DELETE FROM `player_shapeshift_model` WHERE `RaceID` = @NorthrendSkeleton;
INSERT INTO `player_shapeshift_model` (`ShapeshiftID`, `RaceID`, `CustomizationID`, `GenderID`, `ModelID`)
SELECT `ShapeshiftID`, @NorthrendSkeleton, 255, `GenderID`, MIN(`ModelID`)
FROM `player_shapeshift_model`
WHERE `RaceID` = @NorthrendSkeletonHome
GROUP BY `ShapeshiftID`, `GenderID`;
