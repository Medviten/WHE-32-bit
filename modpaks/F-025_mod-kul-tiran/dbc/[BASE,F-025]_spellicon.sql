-- spellicon: 5 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @IconBrushItOff, @IconChildOfTheSea, @IconHaymaker, @IconJackOfAllTrades, @IconRimeOfTheAncientMariner
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconBrushItOff,              'Interface\\Icons\\ability_racial_brushitoff'),
(@IconChildOfTheSea,           'Interface\\Icons\\ability_racial_childofthesea'),
(@IconHaymaker,                'Interface\\Icons\\ability_racial_haymaker'),
(@IconJackOfAllTrades,         'Interface\\Icons\\ability_racial_jackofalltrades'),
(@IconRimeOfTheAncientMariner, 'Interface\\Icons\\ability_racial_rimeoftheancientmariner');

-- Racial mount
DELETE FROM `spellicon` WHERE `id` IN (@KulTiranMount1IconID);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@KulTiranMount1IconID, @KulTiranMount1IconPath);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Kul Tiran racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialBrushitoff, @IconCoAAbilityRacialChildofthesea, @IconCoAAbilityRacialHaymaker, @IconCoAAbilityRacialRimeoftheancientmariner);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialBrushitoff, 'Interface\\Icons\\ability_racial_brushitoff'),
(@IconCoAAbilityRacialChildofthesea, 'Interface\\Icons\\ability_racial_childofthesea'),
(@IconCoAAbilityRacialHaymaker, 'Interface\\Icons\\ability_racial_haymaker'),
(@IconCoAAbilityRacialRimeoftheancientmariner, 'Interface\\Icons\\ability_racial_rimeoftheancientmariner');
-- <<< CoA Custom 1.9 racials <<<
