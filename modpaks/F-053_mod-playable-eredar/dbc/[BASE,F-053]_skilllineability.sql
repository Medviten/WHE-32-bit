-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Eredar racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAEredarSkillLineAbility1, @CoAEredarSkillLineAbility2, @CoAEredarSkillLineAbility3, @CoAEredarSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAEredarSkillLineAbility1, @EredarRacials, @CoAEredarRacial1, @EredarMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Fel Torrent
(@CoAEredarSkillLineAbility2, @EredarRacials, @CoAEredarRacial2, @EredarMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Sargeras' Gift
(@CoAEredarSkillLineAbility3, @EredarRacials, @CoAEredarRacial3, @EredarMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Man'ari Mind
(@CoAEredarSkillLineAbility4, @EredarRacials, @CoAEredarRacial4, @EredarMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Demonic Hide
-- <<< CoA Custom 1.9 racials <<<
