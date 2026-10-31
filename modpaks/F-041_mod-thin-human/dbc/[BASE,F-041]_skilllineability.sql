-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Forgotten (thin human) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAThinHumanSkillLineAbility1, @CoAThinHumanSkillLineAbility2, @CoAThinHumanSkillLineAbility3, @CoAThinHumanSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAThinHumanSkillLineAbility1, @ThinHumanRacials, @CoAThinHumanRacial1, @ThinHumanMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Survivor's Will
(@CoAThinHumanSkillLineAbility2, @ThinHumanRacials, @CoAThinHumanRacial2, @ThinHumanMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Light Step
(@CoAThinHumanSkillLineAbility3, @ThinHumanRacials, @CoAThinHumanRacial3, @ThinHumanMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Human Spirit
(@CoAThinHumanSkillLineAbility4, @ThinHumanRacials, @CoAThinHumanRacial4, @ThinHumanMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Diplomacy
-- <<< CoA Custom 1.9 racials <<<
