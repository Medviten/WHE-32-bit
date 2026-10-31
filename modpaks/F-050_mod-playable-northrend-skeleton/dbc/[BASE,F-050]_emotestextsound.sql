-- emotestextsound: the emote sounds of @NorthrendSkeletonKin (kin)

DELETE FROM `emotestextsound` WHERE `race_id` = @NorthrendSkeleton;
SET @EmotesTextSoundID = (SELECT COALESCE(MAX(id), 0) FROM `emotestextsound`);
INSERT INTO `emotestextsound` (`id`, `emotes_text_id`, `race_id`, `sex_id`, `sound_id`)
SELECT @EmotesTextSoundID := @EmotesTextSoundID +1, `emotes_text_id`, @NorthrendSkeleton, `sex_id`, `sound_id`
FROM (SELECT * FROM `emotestextsound` WHERE `race_id` = @NorthrendSkeletonKin ORDER BY `id`) AS `kin`;
