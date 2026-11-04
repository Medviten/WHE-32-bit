-- chrraces: 0 inserts, 2 updates, 0 deletes

-- Fix faction
UPDATE `chrraces` SET `faction_id` = @GoblinFactionTemplate WHERE `id` = @Goblin;
UPDATE `chrraces` SET `faction_id` = @WorgenFactionTemplate WHERE `id` = @Worgen;
