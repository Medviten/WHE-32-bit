/* Ensures that race-restricted items include Skyborne (as BloodElf) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @HordeSkyborneMask WHERE `allowablerace` & @BloodElfMask AND `allowablerace` != -1;
