/* Ensures that race-restricted items include Venthyr (as Undead) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @VenthyrMask WHERE `allowablerace` & @UndeadMask AND `allowablerace` != -1;
