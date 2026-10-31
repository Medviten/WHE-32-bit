/* Ensures that race-restricted items include Banshees (as Undead) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @BansheeMask WHERE `allowablerace` & @UndeadMask AND `allowablerace` != -1;
