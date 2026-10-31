-- spellicon: 4 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @IconCityOfGold, @IconEmbraceTheLoa, @IconPterrodaxSwoop, @IconRegeneratin
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCityOfGold,     'Interface\\Icons\\ability_racial_cityofgold'),
(@IconEmbraceTheLoa,  'Interface\\Icons\\ability_racial_embracetheloa'),
(@IconPterrodaxSwoop, 'Interface\\Icons\\ability_racial_pterrordaxswoop'),
(@IconRegeneratin,    'Interface\\Icons\\ability_racial_regeneratin');

-- Racial mount
DELETE FROM `spellicon` WHERE `id` IN (@ZandalariTrollMount1IconID);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@ZandalariTrollMount1IconID, @ZandalariTrollMount1IconPath);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Zandalari Troll racials (the client needs the icon files)
-- Commented out: the race already gets the Troll racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialCityofgold, @IconCoAAbilityRacialEmbracetheloa, @IconCoAAbilityRacialPterrordaxswoop);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialCityofgold, 'Interface\\Icons\\ability_racial_cityofgold'),
(@IconCoAAbilityRacialEmbracetheloa, 'Interface\\Icons\\ability_racial_embracetheloa'),
(@IconCoAAbilityRacialPterrordaxswoop, 'Interface\\Icons\\ability_racial_pterrordaxswoop');
*/
-- <<< CoA Custom 1.9 racials <<<
