/* Ensures that race-restricted items include Mantid (as Tauren) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @MantidMask WHERE `allowablerace` & @TaurenMask AND `allowablerace` != -1;
