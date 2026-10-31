-- [F-087] undead_paladin: skilllineability: 6 inserts, 4 updates, 0 deletes

-- Undead no longer get the Blood Elf paladin mounts (F-002_mod-arac gives them to the whole Horde)
UPDATE `skilllineability` SET `required_races` = `required_races` & ~@UndeadMask WHERE `id` IN (
    @SummonWarhorseSkillLineAbility1, -- Spell: 34769 (Summon Warhorse)
    @SummonWarhorseSkillLineAbility2, -- Spell: 34769 (Summon Warhorse)
    @SummonChargerSkillLineAbility1, -- Spell: 34767 (Summon Charger)
    @SummonChargerSkillLineAbility2 -- Spell: 34767 (Summon Charger)
);

-- Their own mounts, in the same skill lines (Paladin and Mounts) as the Blood Elf ones
DROP TEMPORARY TABLE IF EXISTS `f087_sla`;
CREATE TEMPORARY TABLE `f087_sla` LIKE `skilllineability`;
INSERT INTO `f087_sla` SELECT * FROM `skilllineability` WHERE `id` IN (
    @SummonWarhorseSkillLineAbility1, @SummonWarhorseSkillLineAbility2,
    @SummonChargerSkillLineAbility1, @SummonChargerSkillLineAbility2
);
UPDATE `f087_sla` SET `required_races` = @UndeadMask,
    `spell_id` = IF(`spell_id` = @SpellSummonWarhorseBloodElf, @SpellForsakenWarhorse, @SpellForsakenCharger),
    `id` = CASE `id`
        WHEN @SummonWarhorseSkillLineAbility1 THEN @ForsakenWarhorseSkillLineAbility1
        WHEN @SummonWarhorseSkillLineAbility2 THEN @ForsakenWarhorseSkillLineAbility2
        WHEN @SummonChargerSkillLineAbility1 THEN @ForsakenChargerSkillLineAbility1
        ELSE @ForsakenChargerSkillLineAbility2 END;

-- The trainer shows a spell without skill line abilities to everyone, so both learn spells get one (Paladin skill
-- line): the Blood Elf one for every playable race but Undead, the Forsaken one for Undead only
INSERT INTO `f087_sla` SELECT * FROM `skilllineability` WHERE `id` = @SummonWarhorseSkillLineAbility1;
UPDATE `f087_sla` SET `id` = @LearnSummonWarhorseSkillLineAbility, `spell_id` = @SpellLearnSummonWarhorseBloodElf,
    `required_races` = @PlayableRaceMask & ~@UndeadMask
WHERE `id` = @SummonWarhorseSkillLineAbility1;
INSERT INTO `f087_sla` SELECT * FROM `skilllineability` WHERE `id` = @SummonWarhorseSkillLineAbility1;
UPDATE `f087_sla` SET `id` = @LearnForsakenWarhorseSkillLineAbility, `spell_id` = @SpellLearnForsakenWarhorse,
    `required_races` = @UndeadMask
WHERE `id` = @SummonWarhorseSkillLineAbility1;

DELETE FROM `skilllineability` WHERE `id` IN (
    @ForsakenWarhorseSkillLineAbility1, @ForsakenWarhorseSkillLineAbility2, @ForsakenChargerSkillLineAbility1,
    @ForsakenChargerSkillLineAbility2, @LearnSummonWarhorseSkillLineAbility, @LearnForsakenWarhorseSkillLineAbility
);
INSERT INTO `skilllineability` SELECT * FROM `f087_sla`;
DROP TEMPORARY TABLE `f087_sla`;
