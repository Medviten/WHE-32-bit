-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Vrykul racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAVrykulSkillLineAbility1, @CoAVrykulSkillLineAbility2, @CoAVrykulSkillLineAbility3, @CoAVrykulSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAVrykulSkillLineAbility1, @VrykulRacials, @CoAVrykulRacial1, @VrykulMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fury of the Val'kyr
(@CoAVrykulSkillLineAbility2, @VrykulRacials, @CoAVrykulRacial2, @VrykulMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Titan Blood
(@CoAVrykulSkillLineAbility3, @VrykulRacials, @CoAVrykulRacial3, @VrykulMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Born in the Cold
(@CoAVrykulSkillLineAbility4, @VrykulRacials, @CoAVrykulRacial4, @VrykulMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Axe of the Fjord
-- <<< CoA Custom 1.9 racials <<<
