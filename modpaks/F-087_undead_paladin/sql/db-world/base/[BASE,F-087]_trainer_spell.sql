-- Wherever the Blood Elf paladin mounts are taught, teach the Forsaken ones too (the skill line abilities decide who
-- sees which)
DELETE FROM `trainer_spell` WHERE `SpellId` IN (@SpellLearnForsakenWarhorse, @SpellForsakenCharger);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`)
SELECT `TrainerId`,
       IF(`SpellId` = @SpellLearnSummonWarhorseBloodElf, @SpellLearnForsakenWarhorse, @SpellForsakenCharger),
       `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`,
       IF(`ReqAbility1` = @SpellSummonWarhorseBloodElf, @SpellForsakenWarhorse, `ReqAbility1`),
       IF(`ReqAbility2` = @SpellSummonWarhorseBloodElf, @SpellForsakenWarhorse, `ReqAbility2`),
       IF(`ReqAbility3` = @SpellSummonWarhorseBloodElf, @SpellForsakenWarhorse, `ReqAbility3`),
       `ReqLevel`, `VerifiedBuild`
FROM `trainer_spell` WHERE `SpellId` IN (@SpellLearnSummonWarhorseBloodElf, @SpellSummonChargerBloodElf);
