-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Hozen racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoAHozenSkillLineAbility1, @CoAHozenSkillLineAbility2, @CoAHozenSkillLineAbility3, @CoAHozenSkillLineAbility4, @CoAHozenSkillLineAbility5);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoAHozenSkillLineAbility1, @HozenRacials, @CoAHozenRacial1, @HozenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Prehensile Tail
(@CoAHozenSkillLineAbility2, @HozenRacials, @CoAHozenRacial2, @HozenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Nimble Climber
(@CoAHozenSkillLineAbility3, @HozenRacials, @CoAHozenRacial3, @HozenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Bristling Fur
(@CoAHozenSkillLineAbility4, @HozenRacials, @CoAHozenRacial4, @HozenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Monkey Business
(@CoAHozenSkillLineAbility5, @HozenRacials, @CoAHozenRacial5, @HozenMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- Nimble Escape
-- <<< CoA Custom 1.9 racials <<<
