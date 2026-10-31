/* Ensures that race-restricted items include Northrend Skeletons (as Undead) */
UPDATE `item_template` SET `allowablerace` = `allowablerace` | @NorthrendSkeletonMask WHERE `allowablerace` & @UndeadMask AND `allowablerace` != -1;
