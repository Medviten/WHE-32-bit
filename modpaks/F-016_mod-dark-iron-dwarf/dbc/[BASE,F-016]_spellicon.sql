-- spellicon: 5 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @IconDungeonDelver, @IconFireblood, @IconForgedInFlames, @IconMassProduction, @IconMoleMachine
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconDungeonDelver,  'Interface\\Icons\\ability_racial_dungeondelver'),
(@IconFireblood,      'Interface\\Icons\\ability_racial_fireblood'),
(@IconForgedInFlames, 'Interface\\Icons\\ability_racial_foregedinflames'),
(@IconMassProduction, 'Interface\\Icons\\ability_racial_massproduction'),
(@IconMoleMachine,    'Interface\\Icons\\ability_racial_molemachine');

-- Racial mount
DELETE FROM `spellicon` WHERE `id` IN (@DarkIronDwarfMount1IconID);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@DarkIronDwarfMount1IconID, @DarkIronDwarfMount1IconPath);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Dark Iron Dwarf racials (the client needs the icon files)
-- Commented out: the race already has Dungeon Delver. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialDungeondelver, @IconCoAAbilityRacialFireblood, @IconCoAAbilityRacialForegedinflames);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialDungeondelver, 'Interface\\Icons\\ability_racial_dungeondelver'),
(@IconCoAAbilityRacialFireblood, 'Interface\\Icons\\ability_racial_fireblood'),
(@IconCoAAbilityRacialForegedinflames, 'Interface\\Icons\\ability_racial_foregedinflames');
*/
-- <<< CoA Custom 1.9 racials <<<
