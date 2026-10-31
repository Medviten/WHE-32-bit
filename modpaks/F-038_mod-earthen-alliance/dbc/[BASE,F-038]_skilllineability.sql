-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Earthen (Alliance) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAAllianceEarthenSkillLineAbility1, @CoAAllianceEarthenSkillLineAbility2, @CoAAllianceEarthenSkillLineAbility3, @CoAAllianceEarthenSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAAllianceEarthenSkillLineAbility1, @AllianceEarthenRacials, @CoAAllianceEarthenRacial1, @AllianceEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Azerite Surge
(@CoAAllianceEarthenSkillLineAbility2, @AllianceEarthenRacials, @CoAAllianceEarthenRacial2, @AllianceEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Titan-Forged
(@CoAAllianceEarthenSkillLineAbility3, @AllianceEarthenRacials, @CoAAllianceEarthenRacial3, @AllianceEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Stoneskin
(@CoAAllianceEarthenSkillLineAbility4, @AllianceEarthenRacials, @CoAAllianceEarthenRacial4, @AllianceEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Gemcutting
-- <<< CoA Custom 1.9 racials <<<
