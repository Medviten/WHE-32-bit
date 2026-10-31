/* Ensures that race-restricted items include Skeletons (as Undead) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @SkeletonMask WHERE `allowablerace` & @UndeadMask AND `allowablerace` != -1;
