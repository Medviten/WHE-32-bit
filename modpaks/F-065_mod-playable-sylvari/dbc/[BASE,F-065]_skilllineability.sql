-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Sylvari racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoASylvariSkillLineAbility1, @CoASylvariSkillLineAbility2, @CoASylvariSkillLineAbility3, @CoASylvariSkillLineAbility4, @CoASylvariSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoASylvariSkillLineAbility1, @SylvariRacials, @CoASylvariRacial1, @SylvariMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Thornhide
(@CoASylvariSkillLineAbility2, @SylvariRacials, @CoASylvariRacial2, @SylvariMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fleet of Hoof
(@CoASylvariSkillLineAbility3, @SylvariRacials, @CoASylvariRacial3, @SylvariMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fey Grace
(@CoASylvariSkillLineAbility4, @SylvariRacials, @CoASylvariRacial4, @SylvariMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Moonlit Sight
(@CoASylvariSkillLineAbility5, @SylvariRacials, @CoASylvariRacial5, @SylvariMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Verdant Renewal
-- <<< CoA Custom 1.9 racials <<<
