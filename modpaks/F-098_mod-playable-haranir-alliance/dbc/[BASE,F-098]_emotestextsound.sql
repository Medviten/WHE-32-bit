-- emotestextsound: the emote sounds of @AllianceHaranirKin (kin)

DELETE FROM `emotestextsound` WHERE `race_id` = @AllianceHaranir;
SET @EmotesTextSoundID = (SELECT COALESCE(MAX(id), 0) FROM `emotestextsound`);
INSERT INTO `emotestextsound` (`id`, `emotes_text_id`, `race_id`, `sex_id`, `sound_id`)
SELECT @EmotesTextSoundID := @EmotesTextSoundID +1, `emotes_text_id`, @AllianceHaranir, `sex_id`, `sound_id`
FROM (SELECT * FROM `emotestextsound` WHERE `race_id` = @AllianceHaranirKin ORDER BY `id`) AS `kin`;
