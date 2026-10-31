-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Ethereal racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAEtherealSkillLineAbility1, @CoAEtherealSkillLineAbility2, @CoAEtherealSkillLineAbility3, @CoAEtherealSkillLineAbility4, @CoAEtherealSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAEtherealSkillLineAbility1, @EtherealRacials, @CoAEtherealRacial1, @EtherealMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Ethereal Warding
(@CoAEtherealSkillLineAbility2, @EtherealRacials, @CoAEtherealRacial2, @EtherealMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Wisp Step
(@CoAEtherealSkillLineAbility3, @EtherealRacials, @CoAEtherealRacial3, @EtherealMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Phase Shift
(@CoAEtherealSkillLineAbility4, @EtherealRacials, @CoAEtherealRacial4, @EtherealMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Void Insight
(@CoAEtherealSkillLineAbility5, @EtherealRacials, @CoAEtherealRacial5, @EtherealMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Ethereal Torrent
-- <<< CoA Custom 1.9 racials <<<
