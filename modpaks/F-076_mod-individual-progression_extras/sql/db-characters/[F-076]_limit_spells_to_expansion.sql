/*
    Characters database part of [F-076]_limit_spells_to_expansion.sql (sql/db-world/base): removes the spells it moves
    to level 61+ from characters below that level who already learned them. Not applied by build-dbc.sh; run it
    against your characters database yourself (IP had it in the world file, after a USE acore_characters).
*/

DELETE FROM `character_spell` WHERE `spell` = 34428 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 1 AND `level` < 62);
DELETE FROM `character_spell` WHERE `spell` = 31789 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 2 AND `level` < 61);
DELETE FROM `character_spell` WHERE `spell` IN (53407, 53408, 62124) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 2 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` = 34074 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 3 AND `level` < 64);
DELETE FROM `character_spell` WHERE `spell` IN (34120, 56641) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 3 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` = 51722 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 4 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` = 36936 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 7 AND `level` < 61);
DELETE FROM `character_spell` WHERE `spell` IN (24398, 33736, 52127, 52129, 52131, 52134, 52136, 52138, 57994, 66842, 66843, 66844) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 7 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` IN (50764, 50765, 50766, 50767, 50768, 50769, 62600) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 11 AND `level` < 71);
