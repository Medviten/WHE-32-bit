/* Update achievement criteria involving interactions with all races to include Forest Trolls */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@ForestTrollCriteria2,  2,  0, @ForestTroll, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@ForestTrollCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@ForestTrollCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@ForestTrollCriteria3,  2,  0, @ForestTroll, ''), -- Achievement  291 (Check Your Head)
(@ForestTrollCriteria4,  2,  0, @ForestTroll, ''); -- Achievement 1430* (Realm First! Level 80 Forest Troll)
