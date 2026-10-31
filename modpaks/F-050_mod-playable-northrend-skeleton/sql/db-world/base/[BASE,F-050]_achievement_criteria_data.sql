/* Update achievement criteria involving interactions with all races to include Northrend Skeletons */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@NorthrendSkeletonCriteria2,  2,  0, @NorthrendSkeleton, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@NorthrendSkeletonCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@NorthrendSkeletonCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@NorthrendSkeletonCriteria3,  2,  0, @NorthrendSkeleton, ''), -- Achievement  291 (Check Your Head)
(@NorthrendSkeletonCriteria4,  2,  0, @NorthrendSkeleton, ''); -- Achievement 1430* (Realm First! Level 80 Northrend Skeleton)
