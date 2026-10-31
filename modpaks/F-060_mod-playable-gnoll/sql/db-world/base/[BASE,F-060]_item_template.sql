/* Ensures that race-restricted items include Gnolls (as Human) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @GnollMask WHERE `allowablerace` & @HumanMask AND `allowablerace` != -1;
