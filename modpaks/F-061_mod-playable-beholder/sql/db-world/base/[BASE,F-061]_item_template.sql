/* Ensures that race-restricted items include Beholders (as Gnome) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @BeholderMask WHERE `allowablerace` & @GnomeMask AND `allowablerace` != -1;
