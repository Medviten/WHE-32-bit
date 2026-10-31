/* Update achievement criteria involving interactions with all races to include Ice Trolls */
REPLACE INTO `achievement_criteria_data` (
    `criteria_id`, -- ID from Achievement_Criteria.dbc
    `type`, -- Determines how value1 and value2 are used (0–23)
    `value1`, -- Depends on type
    `value2`, -- Depends on type
    `ScriptName`
) VALUES
(@IceTrollCriteria2,  2,  0, @IceTroll, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@IceTrollCriteria2,  9, 18,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@IceTrollCriteria2, 10,  1,       0, ''), -- Achievement 2422 (Shake Your Bunny-Maker)
(@IceTrollCriteria3,  2,  0, @IceTroll, ''), -- Achievement  291 (Check Your Head)
(@IceTrollCriteria4,  2,  0, @IceTroll, ''); -- Achievement 1430* (Realm First! Level 80 Ice Troll)
