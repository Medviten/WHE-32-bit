-- I-356: Lost Isles aircraft wearing each other's models.
--
-- Two planes fly over the Lost Isles and both are the WotLK `Creature\FlyingBomber\`
-- family. The donor put them on these displays and we ported that verbatim:
--
--   38918 Flying Bomber        (Old Friends escape plane, vehicle 657)  display 26556
--   39037 Flying Bomber        (static twin)                            display 26556
--   39074 Pride of Kezan       (goblin plane)                           display 26556
--   39039 Gnomeregan Stealth Fighter (29 flyby spawns, map 1)           display 31281
--
--   26556 -> CreatureModelData 2914 -> Creature\FlyingBomber\flyingBomber_02.mdx
--   31281 -> CreatureModelData 2701 -> Creature\FlyingBomber\flyingBomber.mdx
--
-- The two meshes are not interchangeable on this server, because PATCH-Q (F-049 HD
-- Everything) replaces `flyingBomber_02.m2` IN PLACE with a retroport of the modern
-- `FlyingBomber2` mesh (13470 verts vs the stock 914, textures Flyingbomber2.blp +
-- flyingbomber2_8_armor_goblin_d_01_r.blp — verified by reading the M2 out of
-- nginx/wow/MPQ/PATCH-Q.MPQ). `flyingBomber.m2` is not replaced; it stays the stock
-- WotLK flying machine and only its texture WORLD\GOOBER\FLYINGMACHINE.BLP is
-- re-skinned by the same pack.
--
-- Result in game: the goblin planes wear the grey/brass HD mesh (reads gnomish) and
-- the Gnomeregan fighter wears the re-skinned stock one (reads goblin). Confirmed by
-- the user in game. So the fix is to exchange the two displays — no new assets, no
-- DBC change; both displays and both meshes already ship.
--
-- AUTO-owned rows (zz_[AUTO,F-011]_12 / _11), so one consolidated UPDATE each.
-- `AND Idx = 0` is mandatory: these creatures have a single model row today, but an
-- Idx-less UPDATE is the flatten trap that collapses every variant row of a creature
-- that later grows them.

-- Goblin planes -> the stock (re-skinned) mesh.
UPDATE `creature_template_model` SET
  `CreatureDisplayID` = 31281
WHERE CreatureID IN (38918, 39037, 39074) AND Idx = 0;

-- Gnomeregan Stealth Fighter -> the HD FlyingBomber2 mesh.
UPDATE `creature_template_model` SET
  `CreatureDisplayID` = 26556
WHERE CreatureID = 39039 AND Idx = 0;

-- 38928 Sassy Hardwrench sits ON the parked bomber at Volcanoth's Lair — the plane
-- under her is `creature_template_addon.mount`, not a model row, so it has to move
-- with the rest or she is sat on the wrong aircraft while the one she summons for
-- 25023 is the other. Nothing reloads creature_template_addon: worldserver restart.
UPDATE `creature_template_addon` SET
  `mount` = 31281
WHERE entry = 38928;

-- Stock AC ships display 26556 with BoundingRadius 0 / CombatReach 0, which was
-- harmless while nothing we spawn used it (38918 sat on 31281's proper 0.5 / 1.5 row).
-- 39039 has 29 spawns, so give it the values its own sibling display carries: 23365 is
-- the other stock display on the same CreatureModelData 2914 and is 0.3 / 1.0.
-- This also repairs stock 30719 Spitzpatrick's Bomber, which shares 26556.
UPDATE `creature_model_info` SET
  `BoundingRadius` = 0.3,
  `CombatReach` = 1
WHERE DisplayID = 26556;
