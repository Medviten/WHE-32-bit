-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Mechagnome racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialMassproduction);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialMassproduction, 'Interface\\Icons\\ability_racial_massproduction');
-- <<< CoA Custom 1.9 racials <<<
