/* Ensures that race-restricted items include Cultists (as Undead) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @CultistMask WHERE `allowablerace` & @UndeadMask AND `allowablerace` != -1;
