/* Ensures that race-restricted quests include Skeletons (as Undead) */
UPDATE `quest_template` SET `AllowableRaces` = `AllowableRaces` | @SkeletonMask WHERE `AllowableRaces` & @UndeadMask AND `AllowableRaces` != -1;

/* Allows any race to complete any class-specific quest (ARAC, sweeping approach) */
UPDATE `quest_template` INNER JOIN `quest_template_addon`
	ON `quest_template_addon`.id = `quest_template`.`id`
		SET `AllowableRaces` = `AllowableRaces` | @SkeletonMask
			WHERE `quest_template_addon`.`allowableclasses` != 0 AND `AllowableRaces` != 0;
