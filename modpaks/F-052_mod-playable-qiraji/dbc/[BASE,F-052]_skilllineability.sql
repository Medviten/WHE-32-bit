-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Qiraji (shelved in CoA 1.9) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAQirajiSkillLineAbility1, @CoAQirajiSkillLineAbility2, @CoAQirajiSkillLineAbility3, @CoAQirajiSkillLineAbility4, @CoAQirajiSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAQirajiSkillLineAbility1, @QirajiRacials, @CoAQirajiRacial1, @QirajiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Chitin Plate
(@CoAQirajiSkillLineAbility2, @QirajiRacials, @CoAQirajiRacial2, @QirajiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Burrower
(@CoAQirajiSkillLineAbility3, @QirajiRacials, @CoAQirajiRacial3, @QirajiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Hive Reflexes
(@CoAQirajiSkillLineAbility4, @QirajiRacials, @CoAQirajiRacial4, @QirajiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Swarm Frenzy
(@CoAQirajiSkillLineAbility5, @QirajiRacials, @CoAQirajiRacial5, @QirajiMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Wings of the Swarm
-- <<< CoA Custom 1.9 racials <<<
