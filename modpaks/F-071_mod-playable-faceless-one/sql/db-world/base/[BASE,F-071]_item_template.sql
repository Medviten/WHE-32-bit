/* Ensures that race-restricted items include Faceless Ones (as Orc) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @FacelessOneMask WHERE `allowablerace` & @OrcMask AND `allowablerace` != -1;
