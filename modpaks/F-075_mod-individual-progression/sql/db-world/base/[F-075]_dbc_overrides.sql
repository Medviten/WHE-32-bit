-- mod-individual-progression's base SQL (4933d45) adds rows to AzerothCore's *_dbc tables, which override the DBCs on the
-- server only. This modpak has them in the DBCs instead (dbc/[F-075]_*.sql), for the server and the client alike, so the
-- rows go again. (IP's SQL runs first; if it runs again, so must this.)

DELETE FROM `spell_dbc` WHERE `ID` IN (8137, 11759, 11760, 11761, 16449, 16805, 16806, 37469, 48403, 89507, 89509, 89511, 89513, 89515, 89517, 89519, 90001, 90002, 90003, 90004, 90005, 90006, 90007, 90008, 91003);
DELETE FROM `mapdifficulty_dbc` WHERE `ID` IN (754, 755);
DELETE FROM `dungeonencounter_dbc` WHERE `ID` IN (895, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015);
DELETE FROM `lfgdungeons_dbc` WHERE `ID` IN (1000, 1001);
DELETE FROM `achievement_dbc` WHERE `ID` IN (533);
DELETE FROM `item_dbc` WHERE `ID` IN (6082, 9594);
DELETE FROM `charstartoutfit_dbc` WHERE `ID` BETWEEN 1 AND 346; -- the range IP replaces

-- Not moved: pvp_brackets.sql replaces pvpdifficulty_dbc (the battleground level brackets) as a whole, and DBCTool
-- has no meta file for PvpDifficulty.dbc yet.
