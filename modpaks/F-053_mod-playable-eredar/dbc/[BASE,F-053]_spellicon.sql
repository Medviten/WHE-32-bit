-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Eredar racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialDemonbane);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialDemonbane, 'Interface\\Icons\\Ability_Racial_Demonbane');
-- <<< CoA Custom 1.9 racials <<<
