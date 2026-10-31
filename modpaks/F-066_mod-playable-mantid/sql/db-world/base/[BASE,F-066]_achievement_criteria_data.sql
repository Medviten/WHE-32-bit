/* Update achievement criteria involving interactions with all races to include Mantid */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@MantidCriteria2,  2,  0, @Mantid, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@MantidCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@MantidCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@MantidCriteria3,  2,  0, @Mantid, ''), -- Achievement  291 (Check Your Head)
(@MantidCriteria4,  2,  0, @Mantid, ''); -- Achievement 1430* (Realm First! Level 80 Mantid)
