-- zonemusic: 15 inserts, 1 updates, 0 deletes

-- New entries
DELETE FROM `zonemusic` WHERE `id` = 575;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (575, 'Zone-Feralas', 180000, 180000, 300000, 300000, 990092, 990093);
DELETE FROM `zonemusic` WHERE `id` = 576;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (576, 'Zone-Winterspring', 180000, 180000, 300000, 300000, 990094, 990095);
DELETE FROM `zonemusic` WHERE `id` = 577;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (577, 'Zone-ArathiHighlands', 180000, 180000, 300000, 300000, 990096, 990097);
DELETE FROM `zonemusic` WHERE `id` = 578;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (578, 'Zone-Stranglethorn', 180000, 180000, 300000, 300000, 990098, 990099);
DELETE FROM `zonemusic` WHERE `id` = 579;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (579, 'Zone-Elwynn', 180000, 180000, 300000, 300000, 990100, 990100);
DELETE FROM `zonemusic` WHERE `id` = 580;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (580, 'Zone-Redridge', 180000, 180000, 300000, 300000, 990101, 990102);
DELETE FROM `zonemusic` WHERE `id` = 581;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (581, 'Zone-Azshara', 180000, 180000, 300000, 300000, 990103, 990104);
DELETE FROM `zonemusic` WHERE `id` = 582;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (582, 'Zone-Moonglade', 180000, 180000, 300000, 300000, 990105, 990105);
DELETE FROM `zonemusic` WHERE `id` = 583;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (583, 'Zone-Hyjal', 180000, 180000, 300000, 300000, 990106, 990106);
DELETE FROM `zonemusic` WHERE `id` = 584;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (584, 'Zone-Stonetalon', 180000, 180000, 300000, 300000, 990107, 990107);
DELETE FROM `zonemusic` WHERE `id` = 585;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (585, 'Zone-Tanaris', 180000, 180000, 300000, 300000, 990108, 990109);
DELETE FROM `zonemusic` WHERE `id` = 586;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (586, 'Zone-Silithus', 180000, 180000, 300000, 300000, 990110, 990111);
DELETE FROM `zonemusic` WHERE `id` = 587;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (587, 'Zone-Grimtotem', 180000, 180000, 300000, 300000, 990112, 990112);
DELETE FROM `zonemusic` WHERE `id` = 588;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (588, 'Zone-Westfall', 180000, 180000, 300000, 300000, 990113, 990114);
DELETE FROM `zonemusic` WHERE `id` = 589;
INSERT INTO `zonemusic` (`id`, `name`, `silence_min_day`, `silence_min_night`, `silence_max_day`, `silence_max_night`, `day_music`, `night_music`) VALUES (589, 'Zone-Durotar', 180000, 180000, 300000, 300000, 990115, 990116);

-- Changed values
UPDATE `zonemusic` SET `night_music` = 7341 WHERE `id` = 235;
