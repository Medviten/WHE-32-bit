-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Ice Troll racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialRimeoftheancientmariner);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialRimeoftheancientmariner, 'Interface\\Icons\\ability_racial_rimeoftheancientmariner');
-- <<< CoA Custom 1.9 racials <<<
