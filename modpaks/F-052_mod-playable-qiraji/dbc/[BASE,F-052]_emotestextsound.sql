-- emotestextsound: the emote sounds of @QirajiKin (kin)

DELETE FROM `emotestextsound` WHERE `race_id` = @Qiraji;
SET @EmotesTextSoundID = (SELECT COALESCE(MAX(id), 0) FROM `emotestextsound`);
INSERT INTO `emotestextsound` (`id`, `emotes_text_id`, `race_id`, `sex_id`, `sound_id`)
SELECT @EmotesTextSoundID := @EmotesTextSoundID +1, `emotes_text_id`, @Qiraji, `sex_id`, `sound_id`
FROM (SELECT * FROM `emotestextsound` WHERE `race_id` = @QirajiKin ORDER BY `id`) AS `kin`;
