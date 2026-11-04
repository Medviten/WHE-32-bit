-- item: 29 inserts, 0 updates, 0 deletes

-- New entries
DELETE FROM `item` WHERE `id` IN (
    @GilneanApprenticesRobeItem, @GilneanApprenticesPantsItem, @GilneanApprenticesBootsItem,
    @GilneanNeophytesRobeItem, @GilneanNeophytesPantsItem, @GilneanNeophytesBootsItem,
    @GilneanAcolytesBootsItem, @GilneanAcolytesRobeItem, @GilneanAcolytesPantsItem,
    @GilneanNovicesTunicItem, @GilneanNovicesBootsItem, @GilneanNovicesGlovesItem, @GilneanNovicesPantsItem,
    @GilneanAdventurersShirtItem,
    @GilneanTrappersShirtItem, @GilneanTrappersBootsItem, @GilneanTrappersTunicItem, @GilneanTrappersGlovesItem,
    @GilneanFootpadsPantsItem, @GilneanFootpadsGlovesItem, @GilneanFootpadsTunicItem, @GilneanFootpadsBootsItem,
    @GilneanRecruitsPantsItem, @GilneanRecruitsBeltItem, @GilneanRecruitsTunicItem, @GilneanRecruitsBootsItem,
    @WornWoodChopperItem,
    @WorgenMount1Item, @WorgenMount2Item
);
INSERT INTO `item` (`id`, `class`, `subclass`, `sound_override_subclass`, `material`, `display_id`, `inventory_type`, `sheath`) VALUES
(@GilneanApprenticesRobeItem,  4, 1, -1,   7,  @GilneanApprenticesRobeItemDisplay,  20, 0), -- Gilnean Apprentice's Robe
(@GilneanApprenticesPantsItem, 4, 1, -1,   7,  @GilneanApprenticesPantsItemDisplay,  7, 0), -- Gilnean Apprentice's Pants
(@GilneanApprenticesBootsItem, 4, 1, -1,   7,  @GilneanApprenticesBootsItemDisplay,  8, 0), -- Gilnean Apprentice's Boots
(@GilneanNeophytesRobeItem,    4, 1, -1,   7,  @GilneanNeophytesRobeItemDisplay,    20, 0), -- Gilnean Neophyte's Robe
(@GilneanNeophytesPantsItem,   4, 1, -1,   7,  @GilneanNeophytesPantsItemDisplay,    7, 0), -- Gilnean Neophyte's Pants
(@GilneanNeophytesBootsItem,   4, 1, -1,   7,  @GilneanNeophytesBootsItemDisplay,    8, 0), -- Gilnean Neophyte's Boots
(@GilneanAcolytesBootsItem,    4, 1, -1,   7,  @GilneanAcolytesBootsItemDisplay,     8, 0), -- Gilnean Acolyte's Boots
(@GilneanAcolytesRobeItem,     4, 1, -1,   7,  @GilneanAcolytesRobeItemDisplay,     20, 0), -- Gilnean Acolyte's Robe
(@GilneanAcolytesPantsItem,    4, 1, -1,   7,  @GilneanAcolytesPantsItemDisplay,     7, 0), -- Gilnean Acolyte's Pants
(@GilneanNovicesTunicItem,     4, 2, -1,   7,  @GilneanNovicesTunicItemDisplay,      5, 0), -- Gilnean Novice's Tunic
(@GilneanNovicesBootsItem,     4, 2, -1,   7,  @GilneanNovicesBootsItemDisplay,      8, 0), -- Gilnean Novice's Boots
(@GilneanNovicesGlovesItem,    4, 2, -1,   7,  @GilneanNovicesGlovesItemDisplay,    10, 0), -- Gilnean Novice's Gloves (no sell price?)
(@GilneanNovicesPantsItem,     4, 2, -1,   7,  @GilneanNovicesPantsItemDisplay,      7, 0), -- Gilnean Novice's Pants
(@GilneanAdventurersShirtItem, 4, 0, -1,   7,  @GilneanAdventurersShirtItemDisplay,  4, 0), -- Gilnean Adventurer's Shirt
(@GilneanTrappersShirtItem,    4, 2, -1,   7,  @GilneanTrappersShirtItemDisplay,     7, 0), -- Gilnean Trapper's Shirt
(@GilneanTrappersBootsItem,    4, 2, -1,   7,  @GilneanTrappersBootsItemDisplay,     8, 0), -- Gilnean Trapper's Boots
(@GilneanTrappersTunicItem,    4, 2, -1,   7,  @GilneanTrappersTunicItemDisplay,     5, 0), -- Gilnean Trapper's Tunic
(@GilneanTrappersGlovesItem,   4, 2, -1,   7,  @GilneanTrappersGlovesItemDisplay,   10, 0), -- Gilnean Trapper's Gloves (no sell price?)
(@GilneanFootpadsPantsItem,    4, 2, -1,   7,  @GilneanFootpadsPantsItemDisplay,     7, 0), -- Gilnean Footpad's Pants
(@GilneanFootpadsGlovesItem,   4, 2, -1,   7,  @GilneanFootpadsGlovesItemDisplay,   10, 0), -- Gilnean Footpad's Gloves (no sell price?)
(@GilneanFootpadsTunicItem,    4, 2, -1,   7,  @GilneanFootpadsTunicItemDisplay,     5, 0), -- Gilnean Footpad's Tunic
(@GilneanFootpadsBootsItem,    4, 2, -1,   7,  @GilneanFootpadsBootsItemDisplay,     8, 0), -- Gilnean Footpad's Boots
(@GilneanRecruitsPantsItem,    4, 3, -1,   7,  @GilneanRecruitsPantsItemDisplay,     7, 0), -- Gilnean Recruit's Pants
(@GilneanRecruitsBeltItem,     4, 3, -1,   7,  @GilneanRecruitsBeltItemDisplay,      6, 0), -- Gilnean Recruit's Belt
(@GilneanRecruitsTunicItem,    4, 3, -1,   7,  @GilneanRecruitsTunicItemDisplay,     5, 0), -- Gilnean Recruit's Tunic
(@GilneanRecruitsBootsItem,    4, 3, -1,   7,  @GilneanRecruitsBootsItemDisplay,     8, 0), -- Gilnean Recruit's Boots
(@WornWoodChopperItem,         2, 1, -1,   1,  @WornWoodChopperItemDisplay,         17, 1), -- Worn Wood Chopper
(@WorgenMount1Item,          15, 5, -1,   4,  @WorgenMount1ItemDisplay,            0, 0), -- Mountain Horse
(@WorgenMount2Item,     15, 5, -1,   4,  @WorgenMount2ItemDisplay,       0, 0); -- Swift Mountain Horse
