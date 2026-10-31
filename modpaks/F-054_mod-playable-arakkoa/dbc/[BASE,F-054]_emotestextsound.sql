-- emotestextsound: the emote sounds of @ArakkoaKin (kin)

DELETE FROM `emotestextsound` WHERE `race_id` = @Arakkoa;
SET @EmotesTextSoundID = (SELECT COALESCE(MAX(id), 0) FROM `emotestextsound`);
INSERT INTO `emotestextsound` (`id`, `emotes_text_id`, `race_id`, `sex_id`, `sound_id`)
SELECT @EmotesTextSoundID := @EmotesTextSoundID +1, `emotes_text_id`, @Arakkoa, `sex_id`, `sound_id`
FROM (SELECT * FROM `emotestextsound` WHERE `race_id` = @ArakkoaKin ORDER BY `id`) AS `kin`;
