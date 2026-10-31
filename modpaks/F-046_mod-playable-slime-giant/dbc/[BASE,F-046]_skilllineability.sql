-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Slime Giant racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoASlimeGiantSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoASlimeGiantSkillLineAbility5, @SlimeGiantRacials, @CoASlimeGiantRacial5, @SlimeGiantMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Gooey Slam
-- <<< CoA Custom 1.9 racials <<<
