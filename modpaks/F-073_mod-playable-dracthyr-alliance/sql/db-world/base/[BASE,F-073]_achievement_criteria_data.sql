/* Update achievement criteria involving interactions with all races to include Dracthyr */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@AllianceDracthyrCriteria2,  2,  0, @AllianceDracthyr, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@AllianceDracthyrCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@AllianceDracthyrCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@AllianceDracthyrCriteria3,  2,  0, @AllianceDracthyr, ''), -- Achievement  291 (Check Your Head)
(@AllianceDracthyrCriteria4,  2,  0, @AllianceDracthyr, ''); -- Achievement 1430* (Realm First! Level 80 Dracthyr)
