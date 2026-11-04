-- Undead paladins train the Forsaken mounts, so the quests for the Alliance and Blood Elf ones are closed to them
-- (F-002_mod-arac opens every class quest to every race). The whole chains go, so none of them ends in a reward the
-- race cannot use; 9725 has no race limit of its own, but it can only be reached through 9723.
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` & ~@UndeadMask WHERE `ID` IN (
    1661,                                                                   -- The Tome of Nobility (Alliance 60%)
    7638, 7670, 7637, 7639, 7640, 7641, 7642, 7643, 7644, 7646, 7647, 7648, -- Judgment and Redemption chain (Alliance 100%)
    9712,                                                                   -- The Thalassian Warhorse (Blood Elf 60%)
    9721, 9722, 9723, 9735, 9736, 9737                                      -- True Masters of the Light chain (Blood Elf 100%)
);
