-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Earthen (Horde) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAHordeEarthenSkillLineAbility1, @CoAHordeEarthenSkillLineAbility2, @CoAHordeEarthenSkillLineAbility3, @CoAHordeEarthenSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAHordeEarthenSkillLineAbility1, @HordeEarthenRacials, @CoAHordeEarthenRacial1, @HordeEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Azerite Surge
(@CoAHordeEarthenSkillLineAbility2, @HordeEarthenRacials, @CoAHordeEarthenRacial2, @HordeEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Titan-Forged
(@CoAHordeEarthenSkillLineAbility3, @HordeEarthenRacials, @CoAHordeEarthenRacial3, @HordeEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Stoneskin
(@CoAHordeEarthenSkillLineAbility4, @HordeEarthenRacials, @CoAHordeEarthenRacial4, @HordeEarthenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Gemcutting
-- <<< CoA Custom 1.9 racials <<<
