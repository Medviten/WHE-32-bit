-- ============================================================
-- I-347  Alliance Paratrooper (39069) loot table
-- ============================================================
-- Reported in-game: the paratroopers rain herbs. They did:
--
--   Item                 Chance   Count      -> herbs per kill
--   765  Silverleaf       40 %    2-3         1.00
--   2449 Earthroot        40 %    1-3         0.80
--                                            -----
--                                             1.80  (64 % of kills yield a stack)
--
-- The port is faithful - Neltharion and tdb434 both carry exactly these two rows at 40.0 - but
-- the donor row is not a loot table, it is a sniff fragment. Row counts for every F-011 entry
-- that shipped a donor table:
--
--   39069 Alliance Paratrooper ....  2 rows   (herbs only)
--   36153 Alliance Captain ........ 38 rows
--   36149 Alliance Sailor ......... 78 rows
--   38574 Oomlot Shaman ........... 83 rows
--   39193 Brute Overseer ......... 189 rows
--
-- Every real level 6-12 humanoid table in the zone is 38-189 rows: cloth, food, water, a Minor
-- Healing Potion, a gem, then the white-gear spread at 0.02-0.6 % each. 39069 had two rows and
-- neither was any of those. Three signs it is a small-sample capture, not a drop profile:
-- round chances (40.0 / 40.0, where real tables carry sniffed decimals like 48.908 / 0.563),
-- stack counts that are herbalism-node yields (2-3, 1-3), and no precedent anywhere - across
-- 1182 stock humanoid herb rows the mean is 0.871 %, and above 10 % the list is named/elite
-- mobs plus the druidic furbolgs. 39069 was the only ordinary soldier on it, and the only
-- F-011 humanoid with a herb row over 0.02 %.
--
-- It also undercut a profession: loot herbs need no Herbalism, and the Lost Isles already ships
-- 48 herb nodes (F-202), so ~1.8 free herbs per soldier kill was a herbalism bypass.
--
-- FIX, per the user: graft the table of 36149 Alliance Sailor.
-- ------------------------------------------------------------
-- 36149 is the right donor and this is not aliasing-by-convenience: same faction and same
-- shipwrecked-Alliance theme, same zone, one level band below (6-7 vs 8-9), and it carries the
-- largest complete sniffed table of the zone's Alliance mobs (78 rows vs 36153 Alliance
-- Captain's 38). Its white-gear spread - Pellet Rifle, Cadet's Bow, Practice Sword, Patchwork
-- and Loose Chain - is Alliance starter kit that reads correctly off an Ironforge paratrooper.
-- Chances are taken verbatim; loot chances are not level-scaled in these tables, and the gear
-- is level 4-10 whites, inside 39069's band. Grafted total 26.35 % across 76 rows.
--
-- Excluded from the graft, both deliberate:
--   * 2589 Linen Cloth - owned by zz_[F-199]_lost_isles_cloth_drops.sql at 40 %, which is the
--     zone-derived rate that file argues for. 36149's own 48.908 % is NOT taken; F-199 keeps
--     the row. Hence the DELETE below spares item 2589 and only that.
--   * 84325 Fresh Crawler Meat - QuestRequired = 1 at 0.003 %, and no quest in the DB requires
--     it (checked quest_template RequiredItemId1-6). A dead quest-gated row is not worth
--     propagating onto a second creature.
--
-- Kept on top of the graft: the two herbs at 2 %, 1-2 - per the user, "a small chance is maybe
-- true", as a soldier having picked a few. 36149 has no herb rows at all, so these are 39069's
-- own quirk, retained rather than restored. 2 % is ~2x the 0.871 % mean of all stock humanoid
-- herb rows; the stock precedent for a plain non-druidic, non-named humanoid is 0.02 %.
--
-- Minor Healing Potion comes in from the graft at 36149's 1.891 % rather than the 1.0 % first
-- set from the level-band median (Yngwie 38696 0.683, Volcanoth Champion 38850 0.571, Southsea
-- Mercenary 39449 0.965, Brute Overseer 39193 1.214; in-zone median 0.96). Taking the donor's
-- own number keeps the grafted table internally consistent. For reference, the Durotar
-- comparison the user pointed at is the same shape one tier richer: Kolkar Drudge 3119 /
-- Outrunner 3120 reach item 118 through reference 1060610 at 3 %, alongside Linen ~30 %, Tough
-- Jerky 7.58 %, Refreshing Spring Water 3.5 %, and the 1000610 / 1050614 / 1070610 / 1090110
-- gear, scroll, gem and pouch references. Neither centaur drops a herb.
--
-- OWNERSHIP: this file now owns every item on 39069 except 2589. zz_[AUTO,F-011]_50_creature_
-- loot_template.sql still holds the Entry wholesale and re-emits the two 40 % herb rows on a
-- regen, and zz_[F-199]_lost_isles_cloth_drops.sql adds the cloth; this file sorts after both
-- (AUTO < F < I) and re-applies with them through the F-205 cascade, so the item-exclusion
-- DELETE is what makes the regen safe. If the gen is ever fixed at source, delete this file
-- rather than letting the two representations drift.

DELETE FROM `creature_loot_template` WHERE `Entry` = 39069 AND `Item` <> 2589;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
  (39069, 765,  0, 2,      0, 1, 0, 1, 2, 'I-347 Alliance Paratrooper - Silverleaf (was 40% 2-3)'),
  (39069, 2449, 0, 2,      0, 1, 0, 1, 2, 'I-347 Alliance Paratrooper - Earthroot (was 40% 1-3)'),
  (39069, 2070, 0, 6.821,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Darnassian Bleu'),
  (39069, 159,  0, 3.045,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Refreshing Spring Water'),
  (39069, 118,  0, 1.891,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Minor Healing Potion'),
  (39069, 774,  0, 1.515,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Malachite'),
  (39069, 1411, 0, 0.585,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Withered Staff'),
  (39069, 1415, 0, 0.563,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Carpenter''s Mallet'),
  (39069, 1416, 0, 0.486,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Rusty Hatchet'),
  (39069, 1412, 0, 0.482,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Crude Bastard Sword'),
  (39069, 1417, 0, 0.482,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Beaten Battle Axe'),
  (39069, 2773, 0, 0.434,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Cracked Shortbow'),
  (39069, 2138, 0, 0.431,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Sharpened Letter Opener'),
  (39069, 1414, 0, 0.428,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Cracked Sledge'),
  (39069, 1433, 0, 0.402,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Patchwork Armor'),
  (39069, 3373, 0, 0.402,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Patchwork Bracers'),
  (39069, 818,  0, 0.36,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Tigerseye'),
  (39069, 2774, 0, 0.354,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Rust-covered Blunderbuss'),
  (39069, 1418, 0, 0.351,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Worn Leather Belt'),
  (39069, 1413, 0, 0.341,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Feeble Sword'),
  (39069, 1431, 0, 0.341,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Patchwork Pants'),
  (39069, 1422, 0, 0.334,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Worn Leather Gloves'),
  (39069, 2643, 0, 0.325,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Loose Chain Bracers'),
  (39069, 1430, 0, 0.318,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Patchwork Gloves'),
  (39069, 3370, 0, 0.302,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Patchwork Belt'),
  (39069, 1420, 0, 0.299,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Worn Leather Bracers'),
  (39069, 1425, 0, 0.289,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Worn Leather Vest'),
  (39069, 1423, 0, 0.283,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Worn Leather Pants'),
  (39069, 2213, 0, 0.264,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Worn Large Shield'),
  (39069, 2635, 0, 0.264,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Loose Chain Belt'),
  (39069, 2212, 0, 0.26,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Cracked Buckler'),
  (39069, 2648, 0, 0.26,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Loose Chain Vest'),
  (39069, 1419, 0, 0.257,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Worn Leather Boots'),
  (39069, 1427, 0, 0.257,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Patchwork Shoes'),
  (39069, 1429, 0, 0.257,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Patchwork Cloak'),
  (39069, 2646, 0, 0.257,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Loose Chain Pants'),
  (39069, 2645, 0, 0.251,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Loose Chain Gloves'),
  (39069, 2642, 0, 0.228,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Loose Chain Boots'),
  (39069, 5572, 0, 0.228,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Small Green Pouch'),
  (39069, 8182, 0, 0.209,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Pellet Rifle'),
  (39069, 4560, 0, 0.129,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Fine Scimitar'),
  (39069, 766,  0, 0.125,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Flanged Mace'),
  (39069, 2598, 0, 0.109,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Pattern: Red Linen Robe'),
  (39069, 8177, 0, 0.109,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Practice Sword'),
  (39069, 8179, 0, 0.103,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Cadet''s Bow'),
  (39069, 4565, 0, 0.093,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Simple Dagger'),
  (39069, 3609, 0, 0.09,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Plans: Copper Chain Vest'),
  (39069, 828,  0, 0.08,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Small Blue Pouch'),
  (39069, 8178, 0, 0.074,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Training Sword'),
  (39069, 3189, 0, 0.071,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Wood Chopper'),
  (39069, 3190, 0, 0.064,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Beatstick'),
  (39069, 767,  0, 0.061,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Long Bo Staff'),
  (39069, 805,  0, 0.048,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Small Red Pouch'),
  (39069, 4496, 0, 0.048,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Small Brown Pouch'),
  (39069, 768,  0, 0.042,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Lumberjack Axe'),
  (39069, 5571, 0, 0.035,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Small Black Pouch'),
  (39069, 4562, 0, 0.032,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Severing Axe'),
  (39069, 727,  0, 0.023,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Notched Shortsword'),
  (39069, 2406, 0, 0.019,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Pattern: Fine Leather Boots'),
  (39069, 8181, 0, 0.019,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Hunting Rifle'),
  (39069, 2407, 0, 0.013,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Pattern: White Leather Jerkin'),
  (39069, 2555, 0, 0.013,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Recipe: Swiftness Potion'),
  (39069, 4563, 0, 0.013,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Billy Club'),
  (39069, 6342, 0, 0.01,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Formula: Enchant Chest - Minor Mana'),
  (39069, 84512, 0, 0.01,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Kaja''mite Dust'),
  (39069, 84513, 0, 0.01,   0, 1, 0, 1, 1, 'I-347 graft 36149 - Kaja''mite Powder'),
  (39069, 3610, 0, 0.006,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Plans: Gemmed Copper Gauntlets'),
  (39069, 4408, 0, 0.006,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Schematic: Mechanical Squirrel Box'),
  (39069, 4536, 0, 0.006,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Shiny Red Apple'),
  (39069, 6271, 0, 0.006,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Pattern: Red Linen Vest'),
  (39069, 84511, 0, 0.006,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Kaja''mite Flakes'),
  (39069, 117,  0, 0.003,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Tough Jerky'),
  (39069, 2408, 0, 0.003,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Pattern: Fine Leather Gloves'),
  (39069, 2553, 0, 0.003,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Recipe: Elixir of Minor Agility'),
  (39069, 7288, 0, 0.003,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Pattern: Rugged Leather Pants'),
  (39069, 84419, 0, 0.003,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Inert Elemental Speck'),
  (39069, 84421, 0, 0.003,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Inert Elemental Scintilla'),
  (39069, 84507, 0, 0.003,  0, 1, 0, 1, 1, 'I-347 graft 36149 - Shed Fur');
