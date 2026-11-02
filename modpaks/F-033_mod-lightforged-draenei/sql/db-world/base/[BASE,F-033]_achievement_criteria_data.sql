/* Update achievement criteria involving interactions with all races to include Lightforged Draenei */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@LightforgedDraeneiCriteria2,  2,  0, @LightforgedDraenei, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@LightforgedDraeneiCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@LightforgedDraeneiCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@LightforgedDraeneiCriteria3,  2,  0, @LightforgedDraenei, ''), -- Achievement  291 (Check Your Head)
(@LightforgedDraeneiCriteria4, 21,  0, @LightforgedDraenei, ''); -- Achievement 1430* (Realm First! Level 80 Lightforged Draenei)
