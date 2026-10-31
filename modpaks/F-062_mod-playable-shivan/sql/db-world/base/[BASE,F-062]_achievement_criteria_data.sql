/* Update achievement criteria involving interactions with all races to include Shivan */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@ShivanCriteria2,  2,  0, @Shivan, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@ShivanCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@ShivanCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@ShivanCriteria3,  2,  0, @Shivan, ''), -- Achievement  291 (Check Your Head)
(@ShivanCriteria4,  2,  0, @Shivan, ''); -- Achievement 1430* (Realm First! Level 80 Shivan)
