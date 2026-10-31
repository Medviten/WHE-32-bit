/* Ensures that race-restricted items include Fel Orcs (as Orc) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @FelOrcMask WHERE `allowablerace` & @OrcMask AND `allowablerace` != -1;
