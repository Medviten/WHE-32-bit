-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- The Skeleton racials, learned with the racial skill line
DELETE FROM `skilllineability` WHERE `id` IN (@CoASkeletonSkillLineAbility1, @CoASkeletonSkillLineAbility2, @CoASkeletonSkillLineAbility3, @CoASkeletonSkillLineAbility4);
INSERT INTO `skilllineability` (`id`, `skill_line`, `spell_id`, `required_races`, `required_classes`, `excluded_races`, `excluded_classes`, `min_skill_value`, `spell_parent_id`, `acquire_method`, `skill_grey_level`, `skill_yellow_level`, `character_points_1`, `character_points_2`) VALUES
(@CoASkeletonSkillLineAbility1, @SkeletonRacials, @CoASkeletonRacial1, @SkeletonMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Bone Shield
(@CoASkeletonSkillLineAbility2, @SkeletonRacials, @CoASkeletonRacial2, @SkeletonMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Bone Pile
(@CoASkeletonSkillLineAbility3, @SkeletonRacials, @CoASkeletonRacial3, @SkeletonMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0), -- Unliving
(@CoASkeletonSkillLineAbility4, @SkeletonRacials, @CoASkeletonRacial4, @SkeletonMask, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0); -- No Lungs
-- <<< CoA Custom 1.9 racials <<<
