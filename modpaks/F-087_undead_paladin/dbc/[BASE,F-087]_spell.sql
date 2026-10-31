-- [F-087] undead_paladin: spell: 3 inserts (copies of the Blood Elf paladin mounts)
-- 60%: Summon Forsaken Warhorse (copy of 34769 Summon Warhorse), taught by its learn spell (copy of 34768, which also
--      teaches Apprentice Riding)
-- 100%: Summon Forsaken Charger (retail ID; copy of 34767 Summon Charger)

DROP TEMPORARY TABLE IF EXISTS `f087_spell`;
CREATE TEMPORARY TABLE `f087_spell` LIKE `spell`;

INSERT INTO `f087_spell` SELECT * FROM `spell` WHERE `id` = @SpellSummonWarhorseBloodElf;
UPDATE `f087_spell` SET `id` = @SpellForsakenWarhorse, `effect_misc_value_a_1` = @ForsakenWarhorseCreatureID,
    `spell_name_enus` = 'Summon Forsaken Warhorse', `spell_desc_enus` = 'Summons a Forsaken Warhorse, which serves as a mount.'
WHERE `id` = @SpellSummonWarhorseBloodElf;

INSERT INTO `f087_spell` SELECT * FROM `spell` WHERE `id` = @SpellSummonChargerBloodElf;
UPDATE `f087_spell` SET `id` = @SpellForsakenCharger, `effect_misc_value_a_1` = @ForsakenChargerCreatureID,
    `spell_name_enus` = 'Summon Forsaken Charger',
    `spell_desc_enus` = 'Summons a Forsaken Charger, which serves as a mount.  This is a very fast mount.'
WHERE `id` = @SpellSummonChargerBloodElf;

INSERT INTO `f087_spell` SELECT * FROM `spell` WHERE `id` = @SpellLearnSummonWarhorseBloodElf;
UPDATE `f087_spell` SET `id` = @SpellLearnForsakenWarhorse, `effect_trigger_spell_1` = @SpellForsakenWarhorse,
    `spell_name_enus` = 'Summon Forsaken Warhorse'
WHERE `id` = @SpellLearnSummonWarhorseBloodElf;

DELETE FROM `spell` WHERE `id` IN (@SpellForsakenWarhorse, @SpellForsakenCharger, @SpellLearnForsakenWarhorse);
INSERT INTO `spell` SELECT * FROM `f087_spell`;
DROP TEMPORARY TABLE `f087_spell`;
