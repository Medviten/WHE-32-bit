-- The spells those quests cast to teach the mounts refuse Undead. `.learn all my class` casts them without checking the
-- quest's race, and only a spell condition stops that (ConditionValue1 is the Undead mask, negated; on the 256-bit
-- server it is the mask's first word, which holds race 5).
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` IN (
    @SpellLearnWarhorseAlliance, @SpellLearnChargerAlliance, @SpellLearnSummonWarhorseBloodElf, @SpellLearnSummonChargerBloodElf
);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, @SpellLearnWarhorseAlliance,       0, 0, 16, 0, @UndeadMask, 0, 0, 1, 0, 0, '', 'Learn Warhorse - not for Undead, who have the Forsaken mounts'),
(17, 0, @SpellLearnChargerAlliance,        0, 0, 16, 0, @UndeadMask, 0, 0, 1, 0, 0, '', 'Learn Charger - not for Undead, who have the Forsaken mounts'),
(17, 0, @SpellLearnSummonWarhorseBloodElf, 0, 0, 16, 0, @UndeadMask, 0, 0, 1, 0, 0, '', 'Learn Summon Warhorse - not for Undead, who have the Forsaken mounts'),
(17, 0, @SpellLearnSummonChargerBloodElf,  0, 0, 16, 0, @UndeadMask, 0, 0, 1, 0, 0, '', 'Learn Summon Charger - not for Undead, who have the Forsaken mounts');
