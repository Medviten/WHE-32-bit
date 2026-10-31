-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Murloc (Horde) racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialChildofthesea);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialChildofthesea, 'Interface\\Icons\\ability_racial_childofthesea');
-- <<< CoA Custom 1.9 racials <<<
