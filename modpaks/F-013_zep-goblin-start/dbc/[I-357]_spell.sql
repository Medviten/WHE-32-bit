-- I-357 q25184 "Wild Mine Cart Ride" -- riding the cart to the bottom awards no credit.
--
-- The objective is NPC 39335 "Wild Mine Cart Ride Kill Credit" ("Mine Cart ridden"), and
-- nothing on our side ever grants it: 39335 has zero `creature` rows here and in BOTH
-- donors, no smart_scripts row names it, and no local spell carries
-- SPELL_EFFECT_KILL_CREDIT (90) / KILL_CREDIT2 (134) on that misc value. Nor does the
-- donor AI -- `npc_wild_mine_cart_ride_vehicleAI` ends with eject + despawn and awards
-- nothing -- so this is not a dropped port; the donor is simply incomplete and our
-- faithful re-implementation inherited the hole.
--
-- Retail does it with this spell. Found by scanning the 4.3.4 SpellEffect.dbc for 39335:
--
--   effect row 73804  Effect 140 FORCE_CAST  -> 73766 "Abandon Quest Check"  target 92
--   effect row 73805  Effect  90 KILL_CREDIT    MiscValueA 39335             target 92
--   effect row 73806  Effect  77 SCRIPT_EFFECT                               target 92
--
-- Target 92 is TARGET_UNIT_SUMMONER, i.e. the spell is cast BY THE CART and resolves to
-- the player who summoned it (`Spell.cpp:1799` -> `ToTempSummon()->GetSummonerUnit()`).
-- The cart is summoned by 73746 with the player as caster, so that is exactly the rider.
-- `EffectKillCreditPersonal` then credits `unitTarget->GetCharmerOrOwnerPlayerOrPlayerItself()`.
--
-- Ported with the KILL_CREDIT effect ONLY. Effect 1 is dropped because 73766 was never
-- ported and a FORCE_CAST at a missing spell is a dangling link; effect 3 is dropped
-- because SCRIPT_EFFECT does nothing without a `spell_script_names` row. Everything that
-- makes the quest work is in effect 2.
--
-- Cloned from stock 51226 "Withered Batwing Kill Credit" (the same one-effect kill-credit
-- shape: attributes 384, range_index 1, no visual) so the ~200 columns we do not care
-- about keep sane stock values; only id/name/misc/target are overridden. Cata's row has
-- EffectBasePoints 1 on the credit effect; the handler never reads it, so the clone's 0
-- is kept to match every stock kill-credit spell.
--
-- 73755 is free in our `spell` DBC and has no `spell_dbc` shadow row in acore_world
-- (both checked). The trigger lives in the world DB:
-- zpaks/zep-goblin-start/sql/zz_[I-357]_wild_mine_cart_credit.sql

DROP TEMPORARY TABLE IF EXISTS `_i357_cart_credit`;

CREATE TEMPORARY TABLE `_i357_cart_credit` AS SELECT * FROM `spell` WHERE `id` = 51226;

UPDATE `_i357_cart_credit` SET
    `id` = 73755,
    `spell_name_enus` = 'Wild Mine Cart Ride: Exit - Master',
    `effect_misc_value_a_1` = 39335,
    `effect_implicit_target_a_1` = 92;

DELETE FROM `spell` WHERE `id` = 73755;

INSERT INTO `spell` SELECT * FROM `_i357_cart_credit`;

DROP TEMPORARY TABLE `_i357_cart_credit`;
