-- [F-084] troll_druid: skillraceclassinfo: 0 inserts, 2 updates, 0 deletes

-- Druid class skills (Balance, Feral, Restoration) and the Troll racials already allow every race and class. Only the
-- druid weapon skills are Night Elf/Tauren only, so a Troll druid would never learn the Maces and Daggers it starts with.
UPDATE `skillraceclassinfo` SET `race_mask` = `race_mask` | @TrollMask WHERE `id` = 644; -- Skill: 54 (Maces [Druid], Tauren)
UPDATE `skillraceclassinfo` SET `race_mask` = `race_mask` | @TrollMask WHERE `id` = 642; -- Skill: 173 (Daggers [Druid], Night Elf)
