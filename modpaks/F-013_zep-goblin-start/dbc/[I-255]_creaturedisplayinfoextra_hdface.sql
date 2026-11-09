-- [I-255] Wrong faces on F-011 variant-model NPCs (Pirate Party Crasher etc.) -- extends [I-231].
-- The I-231 sweep repointed the 17 primary extras to stock '_HD.blp' bakes, but the I-249 multi-Idx
-- model work later shipped Idx 1-3 variant displays whose extras still carry non-HD Cata bakes
-- (CreatureDisplayExtra-<id>.blp). On the HD Everything client (PATCH-Q) a non-HD bake on an HD
-- character model breaks the face. Repoint each to a stock '_HD.blp' bake matched on exact
-- (race, sex, skin_color, face_type); ties broken on facial_hair, then hair_style/hair_color.
-- Loads after [AUTO,F-011]_creaturedisplayinfoextra.sql (I > A in filename sort) and overrides
-- the `texture` field only. Donor '_HD' files already ship in PATCH-Q -- no new art.
-- Requires: dbc db rebuild -t creaturedisplayinfoextra + PATCH-Z rebuild to reach the client.
--
-- NOTE (2026-08-27): the generator now does this repoint itself -- npc_appearance.py
-- HD-repoints every race 1-8 extra at a matched, shipped `_HD` donor, so newly shipped
-- NPCs no longer need an override file. This file is kept only to PIN the hand-picked
-- donors below, which were verified in-game; the generator's own pick differs on some
-- rows (better facial_hair tie-break, same exact race/sex/skin/face face match).
-- Delete this file if you ever want the generator's picks to take over.

-- Pirate Party Crasher / Hired Looter / Southsea Mercenary variants
UPDATE `creaturedisplayinfoextra` SET texture = '5d8171c662ea21aff41062e52a1672b.blp' WHERE id = 19681;
UPDATE `creaturedisplayinfoextra` SET texture = '5c7337c6516795d974e8bff714982b3d.blp' WHERE id = 19682;
-- Orc Survivor variants
UPDATE `creaturedisplayinfoextra` SET texture = 'CreatureDisplayExtra-19579.blp' WHERE id = 19836;
UPDATE `creaturedisplayinfoextra` SET texture = '63bfff0fe4b07aa5e735e4c6d4db6c66.blp' WHERE id = 19837;
UPDATE `creaturedisplayinfoextra` SET texture = 'CreatureDisplayExtra-17555.blp' WHERE id = 19838;
-- Orc Scout variants
UPDATE `creaturedisplayinfoextra` SET texture = 'af68c70abe01b50488e3f1bb4d3fa80d.blp' WHERE id = 19843;
UPDATE `creaturedisplayinfoextra` SET texture = '78ad327984d530e7c459e0199ca22ba.blp' WHERE id = 19844;
UPDATE `creaturedisplayinfoextra` SET texture = 'fb3d5e79cf690e98173f1e2383375b41.blp' WHERE id = 19845;
-- SI:7 Assassin variants
UPDATE `creaturedisplayinfoextra` SET texture = '429c01fb8ffc4d141f781af81b1d2fd5.blp' WHERE id = 19861;
UPDATE `creaturedisplayinfoextra` SET texture = '76e178649a973f38913ac8e0cd0c9d20.blp' WHERE id = 19862;
UPDATE `creaturedisplayinfoextra` SET texture = '7203ed9093a4ee7e5f3dc6edb1aacce.blp' WHERE id = 19863;
-- SI:7 Operative variants
UPDATE `creaturedisplayinfoextra` SET texture = '76e178649a973f38913ac8e0cd0c9d20.blp' WHERE id = 19875;
UPDATE `creaturedisplayinfoextra` SET texture = '7203ed9093a4ee7e5f3dc6edb1aacce.blp' WHERE id = 19876;
UPDATE `creaturedisplayinfoextra` SET texture = '429c01fb8ffc4d141f781af81b1d2fd5.blp' WHERE id = 19877;
-- Orc Battlesworn variants
UPDATE `creaturedisplayinfoextra` SET texture = 'b4fcad1ae45ff07af50824131404cd9.blp' WHERE id = 19879;
UPDATE `creaturedisplayinfoextra` SET texture = 'f639d68052cd02e8c5b96688d58906b8.blp' WHERE id = 19880;
UPDATE `creaturedisplayinfoextra` SET texture = 'd821c217de8651dde8cdc8e4e56ed6b.blp' WHERE id = 19881;
-- Alliance Sailor variants
UPDATE `creaturedisplayinfoextra` SET texture = 'CreatureDisplayExtra-15540.blp' WHERE id = 19889;
UPDATE `creaturedisplayinfoextra` SET texture = 'f4a1e7119ac7112731ed6cc975d7f066.blp' WHERE id = 19890;
UPDATE `creaturedisplayinfoextra` SET texture = 'CreatureDisplayExtra-17094.blp' WHERE id = 19891;
