-- =============================================================================
-- I-365  Two Spirit Healers at every Lost Isles graveyard
--
-- Reported as a pair at the graveyard near Gallywix Docks; it is actually
-- **15 of the 16 Lost Isles graveyards**, a few yards apart at each.
--
-- Two different entries were being spawned at the same res points:
--   6491  "Spirit Healer" — stock AzerothCore, hand-placed by I-252 through the
--         `manual_spawns.json` fixture (hand-assigned guids 11900001, 11900004-17)
--   39660 "Spirit Healer" — the Cata port, spawned by the gen from Neltharion
--
-- They are FUNCTIONALLY IDENTICAL: both `npcflag` 16385 (GOSSIP | SPIRITHEALER),
-- `unit_flags` 768, faction 35, display 5233, AIName SmartAI. So this is a pure
-- duplicate, not two different things that happen to overlap.
--
-- Why it happened: every one of those fixture entries carries the note "Hand-placed
-- graveyard has no Cata counterpart so no source healer exists". That was believed
-- when I-252 was written, and it is not true today — a ported 39660 sits 1.8-8.5 yd
-- from each of the 15. Whether the donor healers were out of gen scope back then or
-- the belief was simply wrong, the result is the same now.
--
-- Fix at source: the 15 redundant 6491 entries are removed from
-- `cli/data/goblin/fixtures/manual_spawns.json`, so the gen stops emitting them.
-- The donor's own healers are kept — they are the faithful spawns and the gen
-- maintains them.
--
-- The 16th (Kezan guid 12000068) is NOT touched: its nearest 39660 is 364 yd away,
-- so it is a real graveyard with no donor healer and must stay.
--
-- Guid-keyed DELETE is safe here, unlike the usual rule
-- (feedback_never_key_overrides_on_spawn_guid): these are HAND-ASSIGNED fixture
-- guids in the 119xxxxx block, which a regen does not reassign. It is also
-- self-limiting — once the fixture no longer emits them there is nothing to delete.
-- =============================================================================

DELETE FROM `creature` WHERE `guid` IN (
  11900001, 11900004, 11900005, 11900006, 11900007, 11900008, 11900009,
  11900010, 11900011, 11900012, 11900013, 11900014, 11900015, 11900016, 11900017
) AND `id` = 6491;

DELETE FROM `creature_addon` WHERE `guid` IN (
  11900001, 11900004, 11900005, 11900006, 11900007, 11900008, 11900009,
  11900010, 11900011, 11900012, 11900013, 11900014, 11900015, 11900016, 11900017
);
