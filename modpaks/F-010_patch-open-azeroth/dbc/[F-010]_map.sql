-- Overrides for [BASE,F-010]_map.sql (a generated import, not edited by hand).

-- Expansion 2 for the open-world Cataclysm/MoP maps that have server files: the core refuses to teleport a player
-- to a map whose expansion is above the session's, and a 3.3.5 server's is at most 2.
-- 646 Deepholm, 1469 The Heart of Azeroth (the Maelstrom), 870 Pandaria (F-133's terrain)
UPDATE `map` SET `expansion` = 2 WHERE `id` IN (646, 870, 1469);
