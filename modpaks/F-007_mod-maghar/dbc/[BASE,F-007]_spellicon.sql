-- spellicon: 5 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @MagharOrcMount1IconID,
    @IconAncestralCall, @IconOpenSkies, @IconSavageBlood, @IconSympatheticVigor
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@MagharOrcMount1IconID,               'Interface\\Icons\\inv_orcclanworg'),
(@IconAncestralCall,                'Interface\\Icons\\ability_racial_ancestralcall'),
(@IconSavageBlood,                  'Interface\\Icons\\ability_racial_pureblood'),
(@IconOpenSkies,                    'Interface\\Icons\\ability_racial_openskies'),
(@IconSympatheticVigor,             'Interface\\Icons\\ability_racial_sympatheticvigor');

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Mag'har Orc racials (the client needs the icon files)
-- Commented out: the race already has its BfA racials. Remove the comment markers to give the race CoA's racials instead.
/*
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialAncestralcall, @IconCoAAbilityRacialOpenskies, @IconCoAAbilityRacialPureblood);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialAncestralcall, 'Interface\\Icons\\ability_racial_ancestralcall'),
(@IconCoAAbilityRacialOpenskies, 'Interface\\Icons\\ability_racial_openskies'),
(@IconCoAAbilityRacialPureblood, 'Interface\\Icons\\ability_racial_pureblood');
*/
-- <<< CoA Custom 1.9 racials <<<
