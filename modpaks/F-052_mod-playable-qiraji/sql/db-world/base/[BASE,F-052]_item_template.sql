/* Ensures that race-restricted items include Qiraji (as Orc) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @QirajiMask WHERE `allowablerace` & @OrcMask AND `allowablerace` != -1;
