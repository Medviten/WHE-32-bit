-- spellicon: 6 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `spellicon` WHERE `id` IN (
    @VoidElfMount1IconID,
    @VoidElfRacialIcon1, @VoidElfRacialIcon2, @VoidElfRacialIcon3, @VoidElfRacialIcon4, @VoidElfRacialIcon5
);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@VoidElfMount1IconID, @VoidElfMount1IconPath),
(@VoidElfRacialIcon1, @VoidElfRacialIcon1Path),
(@VoidElfRacialIcon2, @VoidElfRacialIcon2Path),
(@VoidElfRacialIcon3, @VoidElfRacialIcon3Path),
(@VoidElfRacialIcon4, @VoidElfRacialIcon4Path),
(@VoidElfRacialIcon5, @VoidElfRacialIcon5Path);

-- >>> CoA Custom 1.9 racials (tools/races/coa_racials.py) >>>
-- Retail icons of the Void Elf racials (the client needs the icon files)
DELETE FROM `spellicon` WHERE `id` IN (@IconCoAAbilityRacialChillofnight, @IconCoAAbilityRacialEntropicembrace, @IconCoAAbilityRacialEtherealconnection, @IconCoAAbilityRacialSpatialrift);
INSERT INTO `spellicon` (`id`, `name`) VALUES
(@IconCoAAbilityRacialChillofnight, 'Interface\\Icons\\ability_racial_chillofnight'),
(@IconCoAAbilityRacialEntropicembrace, 'Interface\\Icons\\ability_racial_entropicembrace'),
(@IconCoAAbilityRacialEtherealconnection, 'Interface\\Icons\\ability_racial_etherealconnection'),
(@IconCoAAbilityRacialSpatialrift, 'Interface\\Icons\\ability_racial_spatialrift');
-- <<< CoA Custom 1.9 racials <<<
