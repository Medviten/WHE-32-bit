-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Faceless One racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAFacelessOneSkillLineAbility1, @CoAFacelessOneSkillLineAbility2, @CoAFacelessOneSkillLineAbility3, @CoAFacelessOneSkillLineAbility4, @CoAFacelessOneSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAFacelessOneSkillLineAbility1, @FacelessOneRacials, @CoAFacelessOneRacial1, @FacelessOneMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Faceless Hide
(@CoAFacelessOneSkillLineAbility2, @FacelessOneRacials, @CoAFacelessOneRacial2, @FacelessOneMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Creeping Dread
(@CoAFacelessOneSkillLineAbility3, @FacelessOneRacials, @CoAFacelessOneRacial3, @FacelessOneMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Formless
(@CoAFacelessOneSkillLineAbility4, @FacelessOneRacials, @CoAFacelessOneRacial4, @FacelessOneMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Shapeless Squirm
(@CoAFacelessOneSkillLineAbility5, @FacelessOneRacials, @CoAFacelessOneRacial5, @FacelessOneMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Mind Rot
-- <<< CoA Custom 1.9 racials <<<
