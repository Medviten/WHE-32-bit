/* Ensures that race-restricted items include Slime Giants (as Orcs) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @SlimeGiantMask WHERE `allowablerace` & @OrcMask AND `allowablerace` != -1;
