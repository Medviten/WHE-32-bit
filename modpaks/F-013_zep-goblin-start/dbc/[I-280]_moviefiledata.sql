-- ============================================================
-- I-280  MovieFileData.dbc — resolution behind the goblin cinematic variation
--
-- Second half of the pair with [I-280]_movievariation.sql. MovieVariation 124
-- points movie 22 at file_data_id 451827; this row is what tells the client the
-- variation is a **1024**-wide file, which is how it builds the final name:
--
--   Movie.movie_path + "_" + MovieFileData.resolution + ".avi"
--   = Interface\Cinematics\Goblin_1024.avi
--
-- 451827 is the authentic 4.3.4 id, but its retail resolution is **1280**.
-- This client only resolves 1024 / 800 (I-279), and the cinematic we ship is
-- 1024x576, so the value is 1024 here rather than a verbatim port. Keeping the
-- retail id while changing the resolution keeps the mapping recognisable
-- without pointing the client at a width it cannot open.
--
-- 451828 is the 800 variant, matching Goblin_800.avi. Both are declared because
-- every movie that resolves on this client publishes a 1024 AND an 800 variation
-- -- see the note in [I-280]_movievariation.sql.
-- ============================================================

DELETE FROM `moviefiledata` WHERE `id` IN (451827, 451828);
INSERT INTO `moviefiledata` SET
  `id` = 451827,
  `resolution` = 1024;
INSERT INTO `moviefiledata` SET
  `id` = 451828,
  `resolution` = 800;
