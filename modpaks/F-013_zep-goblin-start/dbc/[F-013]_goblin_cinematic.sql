-- FileData.dbc row of the goblin cinematic (movie 22), from Zeppelin-Craft's zep-cinematics zpak (its F-200), which
-- the goblin-start zpak relies on but which isn't part of it. tools/races/zep_goblin_port.py copies this file into
-- F-013, so change it here, not in the modpak.
--
-- The client finds a movie's file through MovieVariation -> MovieFileData (resolution) + FileData (name and path),
-- and skips a variation without a FileData row. [I-280] gives movie 22 its variations but no FileData rows, so the
-- client found nothing to play, never reported the movie finished, and Doc Zapnozzle's revive scene on the Lost
-- Isles, which waits for that report, never started: the player stayed down.
--
-- Only the 1024 x 576 file is used: it is the format the 3.3.5a client plays (the same as WOW_Wrathgate_1024.avi).
-- zep-cinematics' 1280 x 720 variation needs Zeppelin-Craft's client change for other frame sizes, so it is left out,
-- and so is a row for the 800 variation (451828), which has no file; the client then picks the 1024 one on any
-- screen. The video is Interface\Cinematics\Goblin_1024.avi in WHE-common.

DELETE FROM `filedata` WHERE `id` = 451827;
INSERT INTO `filedata` SET
  `id` = 451827,
  `file_name` = 'Goblin_1024.avi',
  `file_path` = 'Interface\\Cinematics\\';
