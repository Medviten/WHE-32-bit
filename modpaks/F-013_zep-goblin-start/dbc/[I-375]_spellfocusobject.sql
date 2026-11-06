-- I-375 Lost Isles warlock voidwalker quest - spell focus for the Orb of Dominion.
-- Spell 900910 first reused stock focus 203, whose client name "Orgrimmar
-- Summoning Circle" is what the client prints when the orb is used away from a
-- circle. Blizzard keeps one focus row per location (43 Undercity, 83 Stormwind,
-- 103 Barrens, 203 Orgrimmar ...), so the Lost Isles circle gets its own row,
-- matched by gameobject 900910 (type 8, Data0 = 1651).
DELETE FROM `spellfocusobject` WHERE id = 1651;
INSERT INTO `spellfocusobject` SET
  id = 1651,
  name_enus = 'Lost Isles Summoning Circle',
  name_flags = 16712190;
