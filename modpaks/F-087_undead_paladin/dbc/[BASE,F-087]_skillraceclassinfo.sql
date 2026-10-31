-- [F-087] undead_paladin: skillraceclassinfo: 0 inserts, 3 updates, 0 deletes

-- The Horde paladin weapon skills are Blood Elf only; Undead paladins get them too
UPDATE `skillraceclassinfo` SET `race_mask` = `race_mask` | @UndeadMask WHERE `id` IN (
    884, -- Skill: 55 (Two-Handed Swords [Paladin], Blood Elf)
    886, -- Skill: 43 (Swords [Paladin], Blood Elf)
    889  -- Skill: 54 (Maces [Paladin], Blood Elf)
);
