-- spellicon: 8 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @VulperaMount1IconID,
    @IconAlpacaSaddlebags, @IconBagOfTricks, @IconFireResistance, @IconMakeCamp, @IconNoseForTrouble, @IconReturnToCamp, @IconRummageYourBag
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@VulperaMount1IconID,     'Interface\\Icons\\inv_vulperamount'),
(@IconAlpacaSaddlebags, 'Interface\\Icons\\ability_racial_rummageyourbag'),
(@IconBagOfTricks,      'Interface\\Icons\\ability_racial_bagoftricks'),
(@IconFireResistance,   'Interface\\Icons\\ability_racial_fireresist'),
(@IconMakeCamp,         'Interface\\Icons\\ability_racial_makecamp'),
(@IconNoseForTrouble,   'Interface\\Icons\\ability_racial_nosefortrouble'),
(@IconReturnToCamp,     'Interface\\Icons\\ability_racial_returntocamp'),
(@IconRummageYourBag,   'Interface\\Icons\\ability_racial_vulperasurvivalkit');

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Vulpera racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialMakecamp, @IconCoAAbilityRacialReturntocamp);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialMakecamp, 'Interface\\Icons\\ability_racial_makecamp'),
(@IconCoAAbilityRacialReturntocamp, 'Interface\\Icons\\ability_racial_returntocamp');
-- <<< CoA Custom 1.9 racials <<<
