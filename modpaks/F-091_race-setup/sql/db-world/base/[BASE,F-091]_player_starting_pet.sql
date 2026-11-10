/* Runs before the race modpaks, which can each add a row; a rebuild starts from no rows. Used by F-128 */
CREATE TABLE IF NOT EXISTS `player_starting_pet` (
  `race` tinyint unsigned NOT NULL,
  `creature_entry` int unsigned NOT NULL COMMENT 'Tameable creature a new hunter of this race starts with',
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Starting pets of hunters (F-128). A race without a row uses its kin''s, then its home race''s';

DELETE FROM `player_starting_pet`;
