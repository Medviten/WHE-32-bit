/* Update achievement criteria involving interactions with all races to include AllianceEarthen */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@AllianceEarthenCriteria2,  2,  0, @AllianceEarthen, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@AllianceEarthenCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@AllianceEarthenCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@AllianceEarthenCriteria3,  2,  0, @AllianceEarthen, ''), -- Achievement  291 (Check Your Head)
(@AllianceEarthenCriteria4, 21,  0, @AllianceEarthen, ''); -- Achievement 1430* (Realm First! Level 80 AllianceEarthen)
