-- skilllineability: 4 inserts, 0 updates, 0 deletes
/*
-- New entries
DELETE FROM `skilllineability` WHERE `id` IN (
    @LightforgedDraeneiSkillLineAbility1, @LightforgedDraeneiSkillLineAbility2, @LightforgedDraeneiSkillLineAbility3, @LightforgedDraeneiSkillLineAbility4, @LightforgedDraeneiSkillLineAbility5
);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@LightforgedDraeneiSkillLineAbility1, @LightforgedDraeneiRacials, @LightforgedDraeneiRacial1, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@LightforgedDraeneiSkillLineAbility2, @LightforgedDraeneiRacials, @LightforgedDraeneiRacial2, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@LightforgedDraeneiSkillLineAbility3, @LightforgedDraeneiRacials, @LightforgedDraeneiRacial3, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(@LightforgedDraeneiSkillLineAbility4, @LightforgedDraeneiRacials, @LightforgedDraeneiRacial4, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
(@LightforgedDraeneiSkillLineAbility5, @LightforgedDraeneiRacials, @LightforgedDraeneiRacial5, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0);
*/

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Lightforged Draenei racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoALightforgedDraeneiSkillLineAbility1, @CoALightforgedDraeneiSkillLineAbility2, @CoALightforgedDraeneiSkillLineAbility3, @CoALightforgedDraeneiSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoALightforgedDraeneiSkillLineAbility1, @LightforgedDraeneiRacials, @CoALightforgedDraeneiRacial1, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Light's Reckoning
(@CoALightforgedDraeneiSkillLineAbility2, @LightforgedDraeneiRacials, @CoALightforgedDraeneiRacial2, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Forge of Light
(@CoALightforgedDraeneiSkillLineAbility3, @LightforgedDraeneiRacials, @CoALightforgedDraeneiRacial3, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Holy Resistance
(@CoALightforgedDraeneiSkillLineAbility4, @LightforgedDraeneiRacials, @CoALightforgedDraeneiRacial4, @LightforgedDraeneiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Lightforged Resolve
-- <<< CoA Custom 1.9 racials <<<
