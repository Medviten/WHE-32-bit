-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Murloc (Horde) racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAMurlocSkillLineAbility1, @CoAMurlocSkillLineAbility2, @CoAMurlocSkillLineAbility3, @CoAMurlocSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAMurlocSkillLineAbility1, @MurlocRacials, @CoAMurlocRacial1, @MurlocMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Mrgglrrgl!
(@CoAMurlocSkillLineAbility2, @MurlocRacials, @CoAMurlocRacial2, @MurlocMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Murloc Swarm
(@CoAMurlocSkillLineAbility3, @MurlocRacials, @CoAMurlocRacial3, @MurlocMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Amphibious
(@CoAMurlocSkillLineAbility4, @MurlocRacials, @CoAMurlocRacial4, @MurlocMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Born in the Shallows
-- <<< CoA Custom 1.9 racials <<<
