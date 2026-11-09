-- [I-231] Human/orc/dwarf/nightelf/gnome NPC faces -- override for generated creaturedisplayinfoextra (DBC, PATCH-Z).
-- The generator emits per-NPC bake names (CreatureDisplayExtra-<id>.blp). For race 1-4,7 NPCs these are
-- repointed here to stock '_HD.blp' bakes so faces match the HD Everything (PATCH-Q) player models.
-- Loads after [F-011]_*creaturedisplayinfoextra.sql (I > F in filename sort) and overrides the `texture` field only.
-- Requires: dbc db rebuild -t creaturedisplayinfoextra + PATCH-Z rebuild to reach the client.
--
-- NOTE (2026-08-27): the generator now does this repoint itself -- npc_appearance.py
-- HD-repoints every race 1-8 extra at a matched, shipped `_HD` donor, so newly shipped
-- NPCs no longer need an override file. This file is kept only to PIN the hand-picked
-- donors below, which were verified in-game; the generator's own pick differs on some
-- rows (better facial_hair tie-break, same exact race/sex/skin/face face match).
-- Delete this file if you ever want the generator's picks to take over.

UPDATE `creaturedisplayinfoextra` SET texture = '5512e396a48d8555b96c3c967383d1b5.blp' WHERE id = 19680;
UPDATE `creaturedisplayinfoextra` SET texture = '1ca44fe0f975e8d9f251ecf14ea70142.blp' WHERE id = 19809;
UPDATE `creaturedisplayinfoextra` SET texture = '84feeec748461267b533db7fc6e3674e.blp' WHERE id = 19824;
UPDATE `creaturedisplayinfoextra` SET texture = '197986c122efda4ca209e4e7e4ca5dde.blp' WHERE id = 19835;
UPDATE `creaturedisplayinfoextra` SET texture = '5f5c47a1866f8887a608f9ecbb75033.blp' WHERE id = 19841;
UPDATE `creaturedisplayinfoextra` SET texture = '63c32b0e75b9f04ce456508e587bdc75.blp' WHERE id = 19842;
UPDATE `creaturedisplayinfoextra` SET texture = 'e50aa228c2c2731c4457942176e998df.blp' WHERE id = 19860;
UPDATE `creaturedisplayinfoextra` SET texture = '82161a9312022e4ba90727de3f3d55de.blp' WHERE id = 19873;
UPDATE `creaturedisplayinfoextra` SET texture = 'e50aa228c2c2731c4457942176e998df.blp' WHERE id = 19874;
UPDATE `creaturedisplayinfoextra` SET texture = '671bf9b95e9edd06fb0c97b1a8fe60c1.blp' WHERE id = 19878;
UPDATE `creaturedisplayinfoextra` SET texture = '27e14cf74f3c24ccf307691192d4fed.blp' WHERE id = 19886;
UPDATE `creaturedisplayinfoextra` SET texture = '50ba9bdc364d75d495d08af2707f2026.blp' WHERE id = 19888;
UPDATE `creaturedisplayinfoextra` SET texture = '8b834fa2b71428e3119fbd413c3977a8.blp' WHERE id = 19892;
UPDATE `creaturedisplayinfoextra` SET texture = 'e5022dad8db6926ca3849d59bf31736.blp' WHERE id = 19958;
UPDATE `creaturedisplayinfoextra` SET texture = 'ecdf3940ee6294c8f3c7aae656a54099.blp' WHERE id = 20863;
UPDATE `creaturedisplayinfoextra` SET texture = '1420843e5c030390873d4093e8ca8eea.blp' WHERE id = 20865;
UPDATE `creaturedisplayinfoextra` SET texture = '1a3af8f3e4cee89b3a622438a34763.blp' WHERE id = 22530;
