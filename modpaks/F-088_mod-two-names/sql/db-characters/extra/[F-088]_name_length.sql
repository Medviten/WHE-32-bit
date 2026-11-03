/*
    Widens the character name columns for names longer than 12 characters, as mod-two-names' TwoNames.MaxNameLength
    allows. Based on mod-two-names' 01_two_names_table_size.sql, keeping each column's character set, collation and
    comment. Not applied by build-dbc.sh; run it against your characters database yourself.
*/
ALTER TABLE `characters` MODIFY COLUMN `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `characters` MODIFY COLUMN `deleteInfos_Name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL;
ALTER TABLE `gm_ticket` MODIFY COLUMN `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of ticket creator';
ALTER TABLE `profanity_name` MODIFY COLUMN `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
ALTER TABLE `reserved_name` MODIFY COLUMN `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL;
