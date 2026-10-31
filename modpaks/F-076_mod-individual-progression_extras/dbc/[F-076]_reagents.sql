-- Reagents and crafting requirements: Vanilla/TBC reagents, tools (totem_N) and crafting stations
-- (spell_focus_object: anvil, forge, ...) of recipes and class spells, from IP's Spell.dbc (in both patch-S and patch-V)

-- Changed spells
UPDATE `spell` SET `totem_1` = 4471, `reagent_1` = 4470, `reagent_count_1` = 1 WHERE `id` = 818; -- Basic Campfire
UPDATE `spell` SET `totem_1` = 5060 WHERE `id` = 1804; -- Pick Lock
UPDATE `spell` SET `totem_1` = 5060 WHERE `id` = 1842; -- Disarm Trap
UPDATE `spell` SET `reagent_1` = 5140, `reagent_count_1` = 1 WHERE `id` = 1856; -- Vanish (Rank 1)
UPDATE `spell` SET `reagent_1` = 5140, `reagent_count_1` = 1 WHERE `id` = 1857; -- Vanish (Rank 2)
UPDATE `spell` SET `reagent_1` = 5530, `reagent_count_1` = 1 WHERE `id` = 2094; -- Blind
UPDATE `spell` SET `reagent_count_2` = 2 WHERE `id` = 2166; -- Toughened Leather Armor
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 2539; -- Spiced Wolf Meat
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 2542; -- Goretusk Liver Pie
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 2544; -- Crab Cake
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 2545; -- Cooked Crab Claw
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 2546; -- Dry Pork Ribs
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 2548; -- Succulent Pork Ribs
UPDATE `spell` SET `reagent_2` = 2665, `reagent_count_2` = 1 WHERE `id` = 2549; -- Seasoned Wolf Kabob
UPDATE `spell` SET `reagent_1` = 5140, `reagent_count_1` = 1 WHERE `id` = 2585; -- Eye of Kilrogg Passive (DND) (Rank 1)
UPDATE `spell` SET `reagent_4` = 1705, `reagent_count_4` = 1 WHERE `id` = 2673; -- Silvered Bronze Breastplate
UPDATE `spell` SET `reagent_2` = 2894, `reagent_count_2` = 1 WHERE `id` = 2795; -- Beer Basted Boar Ribs
UPDATE `spell` SET `reagent_2` = 774, `reagent_3` = 3470, `reagent_count_2` = 1, `reagent_count_3` = 2 WHERE `id` = 3321; -- Copper Chain Vest
UPDATE `spell` SET `reagent_2` = 1210, `reagent_3` = 3478, `reagent_count_3` = 1 WHERE `id` = 3328; -- Rough Bronze Shoulders
UPDATE `spell` SET `reagent_2` = 1705, `reagent_3` = 3478, `reagent_4` = 2605, `reagent_count_1` = 4, `reagent_count_3` = 2, `reagent_count_4` = 1 WHERE `id` = 3334; -- Green Iron Boots
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 3370; -- Crocolisk Steak
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 3372; -- Murloc Fin Soup
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 3373; -- Crocolisk Gumbo
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 3376; -- Curiously Tasty Omelet
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 3377; -- Gooey Spider Cake
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 3397; -- Big Bear Steak
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 3398; -- Hot Lion Chops
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 3399; -- Tasty Lion Steak
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 3400; -- Soothing Turtle Bisque
UPDATE `spell` SET `reagent_2` = 3466, `reagent_3` = 3486, `reagent_6` = 4234, `reagent_count_1` = 8, `reagent_count_2` = 2, `reagent_count_3` = 2, `reagent_count_5` = 1, `reagent_count_6` = 4 WHERE `id` = 3497; -- Frost Tiger Blade
UPDATE `spell` SET `reagent_2` = 3466, `reagent_3` = 3486, `reagent_6` = 4234, `reagent_count_2` = 2, `reagent_count_3` = 3, `reagent_count_5` = 1, `reagent_count_6` = 3 WHERE `id` = 3500; -- Shadow Crescent Axe
UPDATE `spell` SET `reagent_4` = 1529, `reagent_count_4` = 2 WHERE `id` = 3511; -- Golden Scale Cuirass
UPDATE `spell` SET `reagent_4` = 3864, `reagent_count_4` = 1 WHERE `id` = 3515; -- Golden Scale Boots
UPDATE `spell` SET `reagent_1` = 2312, `reagent_2` = 4233, `reagent_count_1` = 1, `reagent_count_2` = 1 WHERE `id` = 3765; -- Dark Leather Gloves
UPDATE `spell` SET `reagent_count_2` = 2, `reagent_count_3` = 2 WHERE `id` = 3778; -- Gem-studded Leather Belt
UPDATE `spell` SET `reagent_count_1` = 5 WHERE `id` = 3865; -- Bolt of Mageweave
UPDATE `spell` SET `reagent_5` = 7191, `reagent_count_2` = 4, `reagent_count_3` = 4, `reagent_count_4` = 2, `reagent_count_5` = 1 WHERE `id` = 3969; -- Mechanical Dragonling
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 4094; -- Barbecued Buzzard Wing
UPDATE `spell` SET `reagent_2` = 0, `reagent_count_2` = 0 WHERE `id` = 5699; -- Create Healthstone (Rank 3)
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 6414; -- Roasted Kodo Meat
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 6415; -- Fillet of Frenzy
UPDATE `spell` SET `reagent_2` = 4536, `reagent_count_2` = 1 WHERE `id` = 6416; -- Strider Stew
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 6418; -- Crispy Lizard Tail
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 4 WHERE `id` = 6419; -- Lean Venison
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 6500; -- Goblin Deviled Clams
UPDATE `spell` SET `reagent_3` = 2678, `reagent_count_3` = 1 WHERE `id` = 6501; -- Clam Chowder
UPDATE `spell` SET `reagent_2` = 2450, `reagent_count_1` = 1, `reagent_count_2` = 1 WHERE `id` = 6617; -- Rage Potion
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 7213; -- Giant Clam Scorcho
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 7754; -- Loch Frenzy Delight
UPDATE `spell` SET `reagent_4` = 1210 WHERE `id` = 7795; -- Runed Silver Rod
UPDATE `spell` SET `reagent_2` = 3371, `reagent_count_2` = 1 WHERE `id` = 7836; -- Blackmouth Oil
UPDATE `spell` SET `reagent_2` = 3371, `reagent_count_2` = 1 WHERE `id` = 7837; -- Fire Oil
UPDATE `spell` SET `reagent_count_1` = 8 WHERE `id` = 7953; -- Deviate Scale Cloak
UPDATE `spell` SET `reagent_1` = 6471, `reagent_2` = 6470, `reagent_3` = 2321, `reagent_count_1` = 2, `reagent_count_2` = 6, `reagent_count_3` = 2 WHERE `id` = 7954; -- Deviate Scale Gloves
UPDATE `spell` SET `reagent_count_1` = 10, `reagent_count_2` = 10 WHERE `id` = 7955; -- Deviate Scale Belt
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 8238; -- Savory Deviate Delight
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 8604; -- Herb Baked Egg
UPDATE `spell` SET `reagent_1` = 6265, `reagent_count_1` = 1 WHERE `id` = 8994; -- Banish
UPDATE `spell` SET `reagent_2` = 5116 WHERE `id` = 9145; -- Fletcher's Gloves
UPDATE `spell` SET `reagent_2` = 7428, `reagent_3` = 3824, `reagent_count_3` = 1 WHERE `id` = 9207; -- Dusky Boots
UPDATE `spell` SET `reagent_3` = 1210, `reagent_4` = 3486, `reagent_count_4` = 2 WHERE `id` = 9811; -- Barbaric Iron Shoulders
UPDATE `spell` SET `reagent_3` = 818, `reagent_4` = 3486, `reagent_count_3` = 4, `reagent_count_4` = 2 WHERE `id` = 9818; -- Barbaric Iron Boots
UPDATE `spell` SET `reagent_2` = 1705, `reagent_count_2` = 2 WHERE `id` = 9933; -- Heavy Mithril Pants
UPDATE `spell` SET `reagent_2` = 7966, `reagent_3` = 0, `reagent_count_3` = 0 WHERE `id` = 9935; -- Steel Plate Helm
UPDATE `spell` SET `reagent_2` = 3864, `reagent_count_2` = 2 WHERE `id` = 9937; -- Mithril Scale Bracers
UPDATE `spell` SET `reagent_4` = 7909, `reagent_count_4` = 1 WHERE `id` = 9945; -- Ornate Mithril Pants
UPDATE `spell` SET `reagent_3` = 3864, `reagent_count_3` = 4 WHERE `id` = 9966; -- Mithril Scale Shoulders
UPDATE `spell` SET `reagent_count_2` = 24, `reagent_count_3` = 4, `reagent_count_4` = 4 WHERE `id` = 9974; -- Truesilver Breastplate
UPDATE `spell` SET `reagent_3` = 7971, `reagent_4` = 7966, `reagent_count_4` = 1 WHERE `id` = 9980; -- Ornate Mithril Helm
UPDATE `spell` SET `reagent_2` = 8368, `reagent_3` = 8146, `reagent_5` = 8172, `reagent_count_2` = 2, `reagent_count_3` = 8, `reagent_count_4` = 4, `reagent_count_5` = 2 WHERE `id` = 10621; -- Wolfshead Helm
UPDATE `spell` SET `reagent_3` = 7075, `reagent_count_2` = 8, `reagent_count_3` = 2 WHERE `id` = 10630; -- Gauntlets of the Sea
UPDATE `spell` SET `reagent_3` = 7075, `reagent_count_1` = 40, `reagent_count_3` = 4 WHERE `id` = 10632; -- Helm of Fire
UPDATE `spell` SET `reagent_2` = 8168, `reagent_count_1` = 40, `reagent_count_2` = 40 WHERE `id` = 10647; -- Feathered Breastplate
UPDATE `spell` SET `reagent_4` = 3864, `reagent_count_4` = 1 WHERE `id` = 11643; -- Golden Scale Gauntlets
UPDATE `spell` SET `reagent_2` = 7077, `reagent_3` = 8343, `reagent_4` = 4304, `reagent_count_2` = 1, `reagent_count_3` = 3, `reagent_count_4` = 2 WHERE `id` = 12088; -- Cindercloth Boots
UPDATE `spell` SET `reagent_4` = 9060, `reagent_5` = 9061, `reagent_count_1` = 14, `reagent_count_2` = 4, `reagent_count_4` = 2, `reagent_count_5` = 2, `reagent_count_6` = 2 WHERE `id` = 12624; -- Mithril Mechanical Dragonling
UPDATE `spell` SET `reagent_5` = 0, `reagent_count_5` = 0 WHERE `id` = 13628; -- Runed Golden Rod
UPDATE `spell` SET `reagent_5` = 0, `reagent_count_5` = 0 WHERE `id` = 13702; -- Runed Truesilver Rod
UPDATE `spell` SET `reagent_1` = 11382, `reagent_count_1` = 1, `reagent_count_2` = 1 WHERE `id` = 15596; -- Smoking Heart of the Mountain
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 15853; -- Lean Wolf Steak
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 15855; -- Roast Raptor
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 15856; -- Hot Wolf Ribs
UPDATE `spell` SET `reagent_3` = 4536, `reagent_count_3` = 2 WHERE `id` = 15861; -- Jungle Stew
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 15863; -- Carrion Surprise
UPDATE `spell` SET `reagent_3` = 2692, `reagent_count_3` = 1 WHERE `id` = 15906; -- Dragonbreath Chili
UPDATE `spell` SET `reagent_2` = 3713, `reagent_3` = 159, `reagent_count_2` = 1, `reagent_count_3` = 1 WHERE `id` = 15910; -- Heavy Kodo Stew
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 2 WHERE `id` = 15915; -- Spiced Chili Crab
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 2 WHERE `id` = 15933; -- Monster Omelet
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 15935; -- Crispy Bat Wing
UPDATE `spell` SET `reagent_3` = 11188, `reagent_count_3` = 4 WHERE `id` = 16642; -- Thorium Armor
UPDATE `spell` SET `reagent_2` = 11186, `reagent_count_1` = 12, `reagent_count_2` = 4 WHERE `id` = 16643; -- Thorium Belt
UPDATE `spell` SET `reagent_2` = 11184, `reagent_count_1` = 12, `reagent_count_2` = 4 WHERE `id` = 16644; -- Thorium Bracers
UPDATE `spell` SET `reagent_3` = 3864, `reagent_count_1` = 24, `reagent_count_3` = 2 WHERE `id` = 16646; -- Imperial Plate Shoulders
UPDATE `spell` SET `reagent_3` = 7909, `reagent_count_1` = 22, `reagent_count_3` = 1 WHERE `id` = 16647; -- Imperial Plate Belt
UPDATE `spell` SET `reagent_2` = 7910, `reagent_count_1` = 20, `reagent_count_2` = 1 WHERE `id` = 16649; -- Imperial Plate Bracers
UPDATE `spell` SET `reagent_3` = 11185, `reagent_count_1` = 20, `reagent_count_3` = 4 WHERE `id` = 16652; -- Thorium Boots
UPDATE `spell` SET `reagent_3` = 11188, `reagent_count_1` = 24, `reagent_count_3` = 4 WHERE `id` = 16653; -- Thorium Helm
UPDATE `spell` SET `reagent_2` = 7910, `reagent_3` = 7909, `reagent_count_1` = 34, `reagent_count_2` = 1, `reagent_count_3` = 1 WHERE `id` = 16657; -- Imperial Plate Boots
UPDATE `spell` SET `reagent_count_1` = 34, `reagent_count_2` = 2 WHERE `id` = 16658; -- Imperial Plate Helm
UPDATE `spell` SET `reagent_2` = 11186, `reagent_count_1` = 26, `reagent_count_2` = 4 WHERE `id` = 16662; -- Thorium Leggings
UPDATE `spell` SET `reagent_2` = 7910, `reagent_count_1` = 40, `reagent_count_2` = 2 WHERE `id` = 16663; -- Imperial Plate Chest
UPDATE `spell` SET `reagent_3` = 8168, `reagent_count_3` = 60 WHERE `id` = 16728; -- Helm of the Great Chief
UPDATE `spell` SET `reagent_3` = 8146, `reagent_count_3` = 40 WHERE `id` = 16729; -- Lionheart Helm
UPDATE `spell` SET `reagent_2` = 7910, `reagent_count_1` = 44, `reagent_count_2` = 2 WHERE `id` = 16730; -- Imperial Plate Leggings
UPDATE `spell` SET `reagent_count_1` = 16 WHERE `id` = 16960; -- Thorium Greatsword
UPDATE `spell` SET `reagent_count_1` = 20 WHERE `id` = 16969; -- Ornate Thorium Handaxe
UPDATE `spell` SET `reagent_count_1` = 40 WHERE `id` = 16971; -- Huge Thorium Battleaxe
UPDATE `spell` SET `reagent_2` = 3372, `reagent_count_2` = 1 WHERE `id` = 17551; -- Stonescale Oil
UPDATE `spell` SET `reagent_count_1` = 3 WHERE `id` = 17570; -- Greater Stoneshield Potion
UPDATE `spell` SET `spell_focus_object` = 663, `reagent_count_1` = 30, `reagent_count_2` = 10 WHERE `id` = 17635; -- Flask of the Titans
UPDATE `spell` SET `spell_focus_object` = 663, `reagent_count_1` = 30, `reagent_count_2` = 10 WHERE `id` = 17636; -- Flask of Distilled Wisdom
UPDATE `spell` SET `spell_focus_object` = 663, `reagent_count_1` = 30, `reagent_count_2` = 10 WHERE `id` = 17637; -- Flask of Supreme Power
UPDATE `spell` SET `spell_focus_object` = 663, `reagent_count_1` = 30, `reagent_count_2` = 10 WHERE `id` = 17638; -- Flask of Chromatic Resistance
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 18239; -- Cooked Glossy Mightfish
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 18240; -- Grilled Squid
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 2 WHERE `id` = 18242; -- Hot Smoked Bass
UPDATE `spell` SET `reagent_2` = 2692, `reagent_3` = 3713, `reagent_count_2` = 1, `reagent_count_3` = 1 WHERE `id` = 18246; -- Mightfish Steak
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 18247; -- Baked Salmon
UPDATE `spell` SET `reagent_count_1` = 5 WHERE `id` = 18401; -- Bolt of Runecloth
UPDATE `spell` SET `reagent_2` = 7079 WHERE `id` = 18403; -- Frostweave Tunic
UPDATE `spell` SET `reagent_count_2` = 3 WHERE `id` = 18408; -- Cindercloth Vest
UPDATE `spell` SET `reagent_3` = 14341, `reagent_count_3` = 1 WHERE `id` = 18409; -- Runecloth Cloak
UPDATE `spell` SET `reagent_3` = 14227, `reagent_4` = 14341, `reagent_count_1` = 3, `reagent_count_3` = 1, `reagent_count_4` = 1 WHERE `id` = 18410; -- Ghostweave Belt
UPDATE `spell` SET `reagent_2` = 7080, `reagent_count_1` = 3, `reagent_count_2` = 1 WHERE `id` = 18411; -- Frostweave Gloves
UPDATE `spell` SET `reagent_count_2` = 3 WHERE `id` = 18412; -- Cindercloth Gloves
UPDATE `spell` SET `reagent_3` = 14227, `reagent_4` = 14341, `reagent_count_1` = 4, `reagent_count_3` = 1, `reagent_count_4` = 1 WHERE `id` = 18413; -- Ghostweave Gloves
UPDATE `spell` SET `reagent_3` = 14341, `reagent_count_1` = 5, `reagent_count_3` = 1 WHERE `id` = 18414; -- Brightcloth Robe
UPDATE `spell` SET `reagent_3` = 14341, `reagent_count_3` = 1 WHERE `id` = 18415; -- Brightcloth Gloves
UPDATE `spell` SET `reagent_3` = 14227, `reagent_4` = 14341, `reagent_count_1` = 6, `reagent_count_2` = 4, `reagent_count_3` = 1, `reagent_count_4` = 1 WHERE `id` = 18416; -- Ghostweave Vest
UPDATE `spell` SET `reagent_2` = 8170, `reagent_count_1` = 4, `reagent_count_2` = 4, `reagent_count_3` = 1 WHERE `id` = 18417; -- Runecloth Gloves
UPDATE `spell` SET `reagent_count_2` = 4 WHERE `id` = 18419; -- Felcloth Pants
UPDATE `spell` SET `reagent_3` = 14341, `reagent_count_3` = 1 WHERE `id` = 18420; -- Brightcloth Cloak
UPDATE `spell` SET `reagent_count_1` = 6 WHERE `id` = 18421; -- Wizardweave Leggings
UPDATE `spell` SET `reagent_2` = 14227, `reagent_count_2` = 2, `reagent_count_3` = 4 WHERE `id` = 18423; -- Runecloth Boots
UPDATE `spell` SET `reagent_2` = 7080, `reagent_count_2` = 1 WHERE `id` = 18424; -- Frostweave Pants
UPDATE `spell` SET `reagent_count_1` = 6, `reagent_count_2` = 4, `reagent_count_3` = 4 WHERE `id` = 18437; -- Felcloth Boots
UPDATE `spell` SET `reagent_count_1` = 6 WHERE `id` = 18438; -- Runecloth Pants
UPDATE `spell` SET `reagent_3` = 14227, `reagent_4` = 14341, `reagent_count_3` = 1, `reagent_count_4` = 1 WHERE `id` = 18439; -- Brightcloth Pants
UPDATE `spell` SET `reagent_3` = 14341, `reagent_count_1` = 6, `reagent_count_3` = 1 WHERE `id` = 18441; -- Ghostweave Pants
UPDATE `spell` SET `reagent_count_1` = 5, `reagent_count_2` = 4 WHERE `id` = 18442; -- Felcloth Hood
UPDATE `spell` SET `reagent_2` = 14227, `reagent_count_1` = 4, `reagent_count_2` = 2, `reagent_count_3` = 1 WHERE `id` = 18444; -- Runecloth Headband
UPDATE `spell` SET `reagent_count_2` = 8, `reagent_count_3` = 4 WHERE `id` = 18451; -- Felcloth Robe
UPDATE `spell` SET `reagent_count_2` = 6, `reagent_count_3` = 4 WHERE `id` = 18453; -- Felcloth Shoulders
UPDATE `spell` SET `reagent_2` = 15423, `reagent_count_2` = 6 WHERE `id` = 19053; -- Chimeric Gloves
UPDATE `spell` SET `reagent_2` = 15420, `reagent_count_2` = 80 WHERE `id` = 19062; -- Ironfeather Shoulders
UPDATE `spell` SET `reagent_2` = 15423, `reagent_count_2` = 8 WHERE `id` = 19063; -- Chimeric Boots
UPDATE `spell` SET `reagent_3` = 14047, `reagent_count_3` = 6 WHERE `id` = 19065; -- Runic Leather Bracers
UPDATE `spell` SET `reagent_2` = 15422, `reagent_count_2` = 6 WHERE `id` = 19066; -- Frostsaber Boots
UPDATE `spell` SET `reagent_2` = 7080, `reagent_count_2` = 2 WHERE `id` = 19067; -- Stormshroud Pants
UPDATE `spell` SET `reagent_count_1` = 12 WHERE `id` = 19072; -- Runic Leather Belt
UPDATE `spell` SET `reagent_2` = 15423, `reagent_count_2` = 8 WHERE `id` = 19073; -- Chimeric Leggings
UPDATE `spell` SET `reagent_2` = 15422, `reagent_count_2` = 8 WHERE `id` = 19074; -- Frostsaber Leggings
UPDATE `spell` SET `reagent_2` = 7080, `reagent_count_2` = 3 WHERE `id` = 19079; -- Stormshroud Armor
UPDATE `spell` SET `reagent_2` = 15423, `reagent_count_2` = 10 WHERE `id` = 19081; -- Chimeric Vest
UPDATE `spell` SET `reagent_count_1` = 16 WHERE `id` = 19083; -- Wicked Leather Pants
UPDATE `spell` SET `reagent_count_1` = 40, `reagent_count_2` = 60 WHERE `id` = 19085; -- Black Dragonscale Breastplate
UPDATE `spell` SET `reagent_2` = 15420, `reagent_count_1` = 40, `reagent_count_2` = 120 WHERE `id` = 19086; -- Ironfeather Breastplate
UPDATE `spell` SET `reagent_2` = 15422, `reagent_count_2` = 10 WHERE `id` = 19087; -- Frostsaber Gloves
UPDATE `spell` SET `reagent_2` = 7080, `reagent_4` = 12810, `reagent_5` = 14341, `reagent_count_2` = 3, `reagent_count_5` = 1 WHERE `id` = 19090; -- Stormshroud Shoulders
UPDATE `spell` SET `reagent_3` = 12810, `reagent_count_1` = 44, `reagent_count_2` = 45, `reagent_count_3` = 2 WHERE `id` = 19094; -- Black Dragonscale Shoulders
UPDATE `spell` SET `reagent_count_3` = 6 WHERE `id` = 19098; -- Wicked Leather Armor
UPDATE `spell` SET `reagent_2` = 15422, `reagent_count_2` = 12 WHERE `id` = 19104; -- Frostsaber Tunic
UPDATE `spell` SET `reagent_3` = 12810, `reagent_count_1` = 40, `reagent_count_2` = 60, `reagent_count_3` = 4 WHERE `id` = 19107; -- Black Dragonscale Leggings
UPDATE `spell` SET `reagent_4` = 10560, `reagent_count_3` = 1, `reagent_count_4` = 4 WHERE `id` = 19567; -- Salt Shaker
UPDATE `spell` SET `reagent_3` = 12655, `reagent_4` = 15994, `reagent_5` = 10558, `reagent_6` = 12810, `reagent_count_2` = 8, `reagent_count_3` = 10, `reagent_count_4` = 6, `reagent_count_5` = 4, `reagent_count_6` = 6 WHERE `id` = 19830; -- Arcanite Dragonling
UPDATE `spell` SET `reagent_count_2` = 10 WHERE `id` = 20009; -- Enchant Bracer - Superior Spirit
UPDATE `spell` SET `reagent_count_2` = 6 WHERE `id` = 20010; -- Enchant Bracer - Superior Strength
UPDATE `spell` SET `reagent_count_1` = 15 WHERE `id` = 20011; -- Enchant Bracer - Superior Stamina
UPDATE `spell` SET `reagent_count_1` = 3 WHERE `id` = 20012; -- Enchant Gloves - Greater Agility
UPDATE `spell` SET `reagent_1` = 16203 WHERE `id` = 20013; -- Enchant Gloves - Greater Strength
UPDATE `spell` SET `reagent_1` = 16202, `reagent_count_1` = 2 WHERE `id` = 20014; -- Enchant Cloak - Greater Resistance
UPDATE `spell` SET `reagent_count_1` = 10 WHERE `id` = 20017; -- Enchant Shield - Greater Stamina
UPDATE `spell` SET `reagent_count_1` = 10 WHERE `id` = 20020; -- Enchant Boots - Greater Stamina
UPDATE `spell` SET `reagent_1` = 16203, `reagent_2` = 0, `reagent_count_1` = 8, `reagent_count_2` = 0 WHERE `id` = 20023; -- Enchant Boots - Greater Agility
UPDATE `spell` SET `reagent_2` = 16202, `reagent_count_2` = 1 WHERE `id` = 20024; -- Enchant Boots - Spirit
UPDATE `spell` SET `reagent_3` = 16203, `reagent_count_1` = 4, `reagent_count_2` = 15, `reagent_count_3` = 10 WHERE `id` = 20025; -- Enchant Chest - Greater Stats
UPDATE `spell` SET `reagent_1` = 16204, `reagent_count_1` = 6, `reagent_count_2` = 1 WHERE `id` = 20026; -- Enchant Chest - Major Health
UPDATE `spell` SET `reagent_1` = 16203, `reagent_2` = 14343, `reagent_count_1` = 3, `reagent_count_2` = 1 WHERE `id` = 20028; -- Enchant Chest - Major Mana
UPDATE `spell` SET `reagent_count_2` = 10 WHERE `id` = 20031; -- Enchant Weapon - Superior Striking
UPDATE `spell` SET `reagent_count_1` = 6, `reagent_count_2` = 6, `reagent_count_3` = 6 WHERE `id` = 20032; -- Enchant Weapon - Lifestealing
UPDATE `spell` SET `reagent_count_1` = 12 WHERE `id` = 20035; -- Enchant 2H Weapon - Major Spirit
UPDATE `spell` SET `reagent_count_1` = 12 WHERE `id` = 20036; -- Enchant 2H Weapon - Major Intellect
UPDATE `spell` SET `reagent_5` = 14343, `reagent_count_5` = 4 WHERE `id` = 20051; -- Runed Arcanite Rod
UPDATE `spell` SET `reagent_2` = 2692, `reagent_3` = 1179, `reagent_count_2` = 1, `reagent_count_3` = 1 WHERE `id` = 20626; -- Undermine Clam Chowder
UPDATE `spell` SET `reagent_1` = 5026, `reagent_count_1` = 1 WHERE `id` = 20688; -- Searing Arrow
UPDATE `spell` SET `reagent_count_1` = 15, `reagent_count_3` = 6 WHERE `id` = 20854; -- Molten Helm
UPDATE `spell` SET `reagent_1` = 12810, `reagent_count_1` = 6, `reagent_count_2` = 30, `reagent_count_3` = 4 WHERE `id` = 20855; -- Black Dragonscale Boots
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 22480; -- Tender Wolf Steak
UPDATE `spell` SET `reagent_2` = 8170, `reagent_3` = 7191, `reagent_4` = 7067, `reagent_5` = 7068, `reagent_count_1` = 12, `reagent_count_2` = 4, `reagent_count_3` = 1, `reagent_count_4` = 2, `reagent_count_5` = 1 WHERE `id` = 22704; -- Field Repair Bot 74A
UPDATE `spell` SET `reagent_2` = 7428, `reagent_3` = 7971, `reagent_5` = 1210, `reagent_count_3` = 2, `reagent_count_4` = 2, `reagent_count_5` = 4 WHERE `id` = 22711; -- Shadowskin Gloves
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 22761; -- Runn Tum Tuber Surprise
UPDATE `spell` SET `reagent_3` = 15420, `reagent_count_3` = 60 WHERE `id` = 22923; -- Swift Flight Bracers
UPDATE `spell` SET `reagent_5` = 15407, `reagent_count_1` = 30, `reagent_count_2` = 12, `reagent_count_3` = 30, `reagent_count_4` = 30, `reagent_count_5` = 5, `reagent_count_6` = 8 WHERE `id` = 22926; -- Chromatic Cloak
UPDATE `spell` SET `reagent_2` = 12803, `reagent_3` = 7080, `reagent_count_2` = 12, `reagent_count_3` = 10, `reagent_count_4` = 8, `reagent_count_5` = 3, `reagent_count_6` = 8 WHERE `id` = 22927; -- Hide of the Wild
UPDATE `spell` SET `reagent_1` = 8170, `reagent_2` = 7082, `reagent_3` = 12753, `reagent_4` = 12809, `reagent_5` = 15407, `reagent_6` = 14341, `reagent_count_1` = 30, `reagent_count_2` = 12, `reagent_count_3` = 4, `reagent_count_4` = 8, `reagent_count_5` = 4, `reagent_count_6` = 8 WHERE `id` = 22928; -- Shifting Cloak
UPDATE `spell` SET `reagent_2` = 12804, `reagent_count_2` = 2 WHERE `id` = 23703; -- Might of the Timbermaw
UPDATE `spell` SET `reagent_2` = 15407, `reagent_count_1` = 5, `reagent_count_2` = 4 WHERE `id` = 23707; -- Lava Belt
UPDATE `spell` SET `reagent_4` = 12607, `reagent_5` = 15407, `reagent_count_1` = 5, `reagent_count_3` = 4, `reagent_count_4` = 4, `reagent_count_5` = 4 WHERE `id` = 23708; -- Chromatic Gauntlets
UPDATE `spell` SET `reagent_3` = 12810, `reagent_4` = 15407, `reagent_count_1` = 8, `reagent_count_3` = 10, `reagent_count_4` = 4 WHERE `id` = 23709; -- Corehound Belt
UPDATE `spell` SET `reagent_3` = 7076, `reagent_4` = 15407, `reagent_count_2` = 7, `reagent_count_3` = 6, `reagent_count_4` = 4 WHERE `id` = 23710; -- Molten Belt
UPDATE `spell` SET `reagent_2` = 16203, `reagent_3` = 16204, `reagent_4` = 7076, `reagent_count_1` = 6, `reagent_count_2` = 6, `reagent_count_3` = 4, `reagent_count_4` = 2 WHERE `id` = 23799; -- Enchant Weapon - Strength
UPDATE `spell` SET `reagent_2` = 16203, `reagent_3` = 16204, `reagent_4` = 7082, `reagent_count_1` = 6, `reagent_count_2` = 6, `reagent_count_3` = 4, `reagent_count_4` = 2 WHERE `id` = 23800; -- Enchant Weapon - Agility
UPDATE `spell` SET `reagent_2` = 16203, `reagent_count_1` = 16 WHERE `id` = 23801; -- Enchant Bracer - Mana Regeneration
UPDATE `spell` SET `reagent_count_1` = 10, `reagent_count_2` = 8, `reagent_count_3` = 15 WHERE `id` = 23803; -- Enchant Weapon - Mighty Spirit
UPDATE `spell` SET `reagent_count_1` = 15, `reagent_count_2` = 12 WHERE `id` = 23804; -- Enchant Weapon - Mighty Intellect
UPDATE `spell` SET `reagent_4` = 14048, `reagent_count_2` = 5, `reagent_count_3` = 4, `reagent_count_4` = 4 WHERE `id` = 24091; -- Bloodvine Vest
UPDATE `spell` SET `reagent_4` = 14048, `reagent_count_4` = 4 WHERE `id` = 24092; -- Bloodvine Leggings
UPDATE `spell` SET `reagent_3` = 12810, `reagent_4` = 14048, `reagent_count_1` = 3, `reagent_count_2` = 3, `reagent_count_3` = 4, `reagent_count_4` = 4, `reagent_count_5` = 4 WHERE `id` = 24093; -- Bloodvine Boots
UPDATE `spell` SET `reagent_2` = 19726, `reagent_count_1` = 35, `reagent_count_2` = 2 WHERE `id` = 24124; -- Blood Tiger Breastplate
UPDATE `spell` SET `reagent_2` = 19726, `reagent_count_2` = 2 WHERE `id` = 24125; -- Blood Tiger Shoulders
UPDATE `spell` SET `reagent_3` = 19726, `reagent_count_3` = 2 WHERE `id` = 24136; -- Bloodsoul Breastplate
UPDATE `spell` SET `reagent_3` = 19726, `reagent_count_3` = 2 WHERE `id` = 24137; -- Bloodsoul Shoulders
UPDATE `spell` SET `reagent_3` = 19726, `reagent_count_3` = 2 WHERE `id` = 24138; -- Bloodsoul Gauntlets
UPDATE `spell` SET `reagent_2` = 19774, `reagent_3` = 16006, `reagent_count_2` = 5, `reagent_count_3` = 2, `reagent_count_4` = 8 WHERE `id` = 24356; -- Bloodvine Goggles
UPDATE `spell` SET `reagent_2` = 19774, `reagent_3` = 16006, `reagent_5` = 12810, `reagent_count_1` = 5, `reagent_count_2` = 5, `reagent_count_3` = 1, `reagent_count_4` = 8, `reagent_count_5` = 4 WHERE `id` = 24357; -- Bloodvine Lens
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 24418; -- Heavy Crocolisk Stew
UPDATE `spell` SET `reagent_1` = 12810, `reagent_4` = 15407, `reagent_5` = 14227, `reagent_count_1` = 12, `reagent_count_2` = 6, `reagent_count_3` = 4, `reagent_count_4` = 4, `reagent_count_5` = 6 WHERE `id` = 24703; -- Dreamscale Breastplate
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 24801; -- Smoked Desert Dumplings
UPDATE `spell` SET `reagent_1` = 20725, `reagent_2` = 14344, `reagent_3` = 18512, `reagent_count_2` = 6 WHERE `id` = 25072; -- Enchant Gloves - Threat
UPDATE `spell` SET `reagent_1` = 20725, `reagent_2` = 14344, `reagent_3` = 7082, `reagent_count_2` = 8, `reagent_count_3` = 4 WHERE `id` = 25080; -- Enchant Gloves - Superior Agility
UPDATE `spell` SET `reagent_1` = 20725, `reagent_2` = 14344, `reagent_count_2` = 8 WHERE `id` = 25081; -- Enchant Cloak - Greater Fire Resistance
UPDATE `spell` SET `reagent_1` = 20725, `reagent_2` = 14344, `reagent_count_2` = 8 WHERE `id` = 25082; -- Enchant Cloak - Greater Nature Resistance
UPDATE `spell` SET `reagent_1` = 20725, `reagent_2` = 14344, `reagent_3` = 13468, `reagent_count_2` = 8 WHERE `id` = 25083; -- Enchant Cloak - Stealth
UPDATE `spell` SET `reagent_1` = 20725, `reagent_2` = 14344, `reagent_3` = 11754, `reagent_count_2` = 6, `reagent_count_3` = 2 WHERE `id` = 25084; -- Enchant Cloak - Subtlety
UPDATE `spell` SET `totem_1` = 4471, `reagent_1` = 4470, `reagent_count_1` = 1 WHERE `id` = 25085; -- Bright Campfire
UPDATE `spell` SET `reagent_1` = 20725, `reagent_2` = 14344, `reagent_3` = 12809, `reagent_count_2` = 8 WHERE `id` = 25086; -- Enchant Cloak - Dodge
UPDATE `spell` SET `reagent_1` = 0, `reagent_count_1` = 0 WHERE `id` = 25112; -- Summon Voidwalker (Summon)
UPDATE `spell` SET `reagent_2` = 7070, `reagent_count_2` = 2 WHERE `id` = 25621; -- Citrine Ring of Rapid Healing
UPDATE `spell` SET `reagent_1` = 2692, `reagent_count_1` = 1 WHERE `id` = 25659; -- Dirge's Kickin' Chimaerok Chops
UPDATE `spell` SET `reagent_2` = 2678, `reagent_count_2` = 1 WHERE `id` = 25704; -- Smoked Sagefish
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 25954; -- Sagefish Delight
UPDATE `spell` SET `reagent_3` = 19726, `reagent_count_3` = 8 WHERE `id` = 26087; -- Core Felcloth Bag
UPDATE `spell` SET `reagent_2` = 7080, `reagent_4` = 15407, `reagent_count_2` = 4, `reagent_count_4` = 2 WHERE `id` = 26279; -- Stormshroud Gloves
UPDATE `spell` SET `reagent_1` = 9060, `reagent_3` = 18631, `reagent_4` = 10561, `reagent_count_1` = 4, `reagent_count_2` = 4, `reagent_count_3` = 2, `reagent_count_4` = 1 WHERE `id` = 26443; -- Firework Cluster Launcher
UPDATE `spell` SET `reagent_1` = 21815, `reagent_count_1` = 1 WHERE `id` = 26680; -- Adored
UPDATE `spell` SET `reagent_count_1` = 6 WHERE `id` = 26745; -- Bolt of Netherweave
UPDATE `spell` SET `spell_focus_object` = 1426 WHERE `id` = 26747; -- Bolt of Imbued Netherweave
UPDATE `spell` SET `reagent_1` = 5140, `reagent_count_1` = 1 WHERE `id` = 26889; -- Vanish (Rank 3)
UPDATE `spell` SET `reagent_2` = 0, `reagent_count_2` = 0 WHERE `id` = 27230; -- Create Healthstone (Rank 6)
UPDATE `spell` SET `reagent_1` = 6265, `reagent_count_1` = 1 WHERE `id` = 27565; -- Banish
UPDATE `spell` SET `reagent_1` = 5140, `reagent_count_1` = 1 WHERE `id` = 27617; -- Vanish (Rank 2)
UPDATE `spell` SET `reagent_2` = 16203, `reagent_3` = 16204, `reagent_4` = 7082, `reagent_count_1` = 10, `reagent_count_2` = 6, `reagent_count_3` = 14, `reagent_count_4` = 4 WHERE `id` = 27837; -- Enchant 2H Weapon - Agility
UPDATE `spell` SET `reagent_3` = 23572, `reagent_count_3` = 1 WHERE `id` = 27954; -- Enchant Boots - Surefooted
UPDATE `spell` SET `reagent_1` = 22449, `reagent_2` = 13444, `reagent_3` = 22446, `reagent_count_1` = 1, `reagent_count_2` = 4, `reagent_count_3` = 3 WHERE `id` = 27958; -- Enchant Chest - Exceptional Mana
UPDATE `spell` SET `reagent_2` = 14342 WHERE `id` = 28210; -- Gaea's Embrace
UPDATE `spell` SET `reagent_1` = 15994, `reagent_2` = 10561, `reagent_3` = 10558, `reagent_count_1` = 2, `reagent_count_3` = 1 WHERE `id` = 28327; -- Steam Tonk Controller
UPDATE `spell` SET `reagent_count_1` = 12 WHERE `id` = 28461; -- Ironvine Breastplate
UPDATE `spell` SET `reagent_1` = 12810 WHERE `id` = 28472; -- Bramblewood Helm
UPDATE `spell` SET `spell_focus_object` = 663 WHERE `id` = 28587; -- Flask of Fortification
UPDATE `spell` SET `spell_focus_object` = 663 WHERE `id` = 28588; -- Flask of Mighty Restoration
UPDATE `spell` SET `spell_focus_object` = 663 WHERE `id` = 28589; -- Flask of Relentless Assault
UPDATE `spell` SET `spell_focus_object` = 663 WHERE `id` = 28590; -- Flask of Blinding Light
UPDATE `spell` SET `spell_focus_object` = 663 WHERE `id` = 28591; -- Flask of Pure Death
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 14 WHERE `id` = 32465; -- Felscale Breastplate
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 12 WHERE `id` = 32468; -- Scaled Draenic Vest
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 12 WHERE `id` = 32469; -- Scaled Draenic Boots
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 14 WHERE `id` = 32473; -- Thick Draenic Vest
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 15 WHERE `id` = 32481; -- Wild Draenish Vest
UPDATE `spell` SET `reagent_6` = 25703, `reagent_count_6` = 4 WHERE `id` = 32487; -- Stylin' Adventure Hat
UPDATE `spell` SET `reagent_3` = 22450, `reagent_4` = 23571, `reagent_count_2` = 12, `reagent_count_3` = 2, `reagent_count_4` = 4 WHERE `id` = 32667; -- Runed Eternium Rod
UPDATE `spell` SET `reagent_count_1` = 3 WHERE `id` = 33741; -- Elixir of Mastery
UPDATE `spell` SET `reagent_2` = 8168, `reagent_count_2` = 40 WHERE `id` = 36075; -- Wildfeather Leggings
UPDATE `spell` SET `reagent_3` = 7077, `reagent_count_3` = 2 WHERE `id` = 36076; -- Dragonstrike Leggings
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 20 WHERE `id` = 36077; -- Primalstorm Breastplate
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 20 WHERE `id` = 36078; -- Living Crystal Breastplate
UPDATE `spell` SET `reagent_1` = 21887, `reagent_count_1` = 20 WHERE `id` = 36079; -- Golden Dragonstrike Breastplate
UPDATE `spell` SET `reagent_2` = 3713, `reagent_count_2` = 1 WHERE `id` = 36210; -- Clam Bar
UPDATE `spell` SET `reagent_1` = 5026, `reagent_count_1` = 1 WHERE `id` = 37847; -- Immolation Arrow
UPDATE `spell` SET `reagent_2` = 2593, `reagent_3` = 3713, `reagent_count_2` = 1, `reagent_count_3` = 1 WHERE `id` = 42296; -- Stewed Trout
UPDATE `spell` SET `reagent_2` = 4539, `reagent_3` = 3713, `reagent_count_2` = 5, `reagent_count_3` = 5 WHERE `id` = 42302; -- Fisherman's Feast
UPDATE `spell` SET `reagent_3` = 3713, `reagent_count_3` = 2 WHERE `id` = 42305; -- Hot Buttered Trout
UPDATE `spell` SET `spell_focus_object` = 663 WHERE `id` = 42736; -- Flask of Chromatic Wonder
UPDATE `spell` SET `reagent_2` = 2692, `reagent_count_2` = 1 WHERE `id` = 43765; -- Spicy Hot Talbuk
UPDATE `spell` SET `reagent_1` = 23784, `reagent_2` = 23445, `reagent_5` = 23446, `reagent_6` = 23819, `reagent_count_2` = 30, `reagent_count_3` = 8, `reagent_count_5` = 5, `reagent_count_6` = 4 WHERE `id` = 44155; -- Flying Machine
UPDATE `spell` SET `reagent_1` = 34060, `reagent_count_1` = 1 WHERE `id` = 44157; -- Turbo-Charged Flying Machine
UPDATE `spell` SET `spell_focus_object` = 1484 WHERE `id` = 46343; -- Teleport to Caverns of Time
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 52084; -- Glyph of Natural Force
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 53013; -- Glyph of Wild Endurance
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54291; -- Glyph of the White Bear
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54854; -- Glyph of Frenzied Regeneration
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54856; -- Glyph of Growl
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54857; -- Glyph of Mangle
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54858; -- Glyph of Maul
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54859; -- Glyph of Shred
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54860; -- Glyph of Rip
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54863; -- Glyph of Rake
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54864; -- Glyph of Swiftmend
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54865; -- Glyph of Innervate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54866; -- Glyph of Rebirth
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54867; -- Glyph of Regrowth
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54868; -- Glyph of Rejuvenation
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54869; -- Glyph of Healing Touch
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54870; -- Glyph of Lifebloom
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54871; -- Glyph of Starfire
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54872; -- Glyph of Insect Swarm
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54873; -- Glyph of Hurricane
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54874; -- Glyph of Starfall
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54875; -- Glyph of Wrath
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54876; -- Glyph of Moonfire
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54877; -- Glyph of Entangling Roots
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 54910; -- Glyph of the Red Lynx
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55003; -- Glyph of Judgement
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55109; -- Glyph of Seal of Command
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55110; -- Glyph of Hammer of Justice
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55111; -- Glyph of Spiritual Attunement
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55112; -- Glyph of Hammer of Wrath
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55113; -- Glyph of Crusader Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55114; -- Glyph of Consecration
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55115; -- Glyph of Righteous Defense
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55116; -- Glyph of Avenger's Shield
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55117; -- Glyph of Turn Evil
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55118; -- Glyph of Exorcism
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55119; -- Glyph of Cleansing
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55120; -- Glyph of Flash of Light
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55121; -- Glyph of Holy Light
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55122; -- Glyph of Avenging Wrath
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55123; -- Glyph of Divinity
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55124; -- Glyph of Seal of Wisdom
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55125; -- Glyph of Seal of Light
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55535; -- Glyph of Water Shield
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55537; -- Glyph of Chain Heal
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55538; -- Glyph of Chain Lightning
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55539; -- Glyph of Lava
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55540; -- Glyph of Shocking
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55541; -- Glyph of Earthliving Weapon
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55542; -- Glyph of Fire Elemental Totem
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55544; -- Glyph of Fire Nova
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55545; -- Glyph of Flame Shock
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55546; -- Glyph of Flametongue Weapon
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55547; -- Glyph of Frost Shock
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55548; -- Glyph of Healing Stream
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55551; -- Glyph of Healing Wave
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55552; -- Glyph of Lesser Healing Wave
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55553; -- Glyph of Lightning Shield
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55554; -- Glyph of Lightning Bolt
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55558; -- Glyph of Mana Tide
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55559; -- Glyph of Stormstrike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55560; -- Glyph of Lava Lash
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55561; -- Glyph of Elemental Mastery
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 55562; -- Glyph of Windfury Weapon
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56162; -- Glyph of Circle of Healing
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56163; -- Glyph of Dispel Magic
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56164; -- Glyph of Fade
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56165; -- Glyph of Fear Ward
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56166; -- Glyph of Flash Heal
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56167; -- Glyph of Holy Nova
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56168; -- Glyph of Inner Fire
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56169; -- Glyph of Lightwell
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56170; -- Glyph of Mass Dispel
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56171; -- Glyph of Mind Control
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56172; -- Glyph of Shadow Word: Pain
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56174; -- Glyph of Shadow
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56175; -- Glyph of Power Word: Shield
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56176; -- Glyph of Prayer of Healing
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56177; -- Glyph of Psychic Scream
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56178; -- Glyph of Renew
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56179; -- Glyph of Scourge Imprisonment
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56180; -- Glyph of Shadow Word: Death
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56181; -- Glyph of Mind Flay
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56182; -- Glyph of Smite
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56183; -- Glyph of Spirit of Redemption
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56268; -- Glyph of Incinerate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56270; -- Glyph of Conflagrate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56271; -- Glyph of Corruption
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56282; -- Glyph of Curse of Agony
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56283; -- Glyph of Death Coil
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56284; -- Glyph of Fear
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56285; -- Glyph of Felguard
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56286; -- Glyph of Felhunter
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56288; -- Glyph of Health Funnel
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56289; -- Glyph of Healthstone
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56290; -- Glyph of Howl of Terror
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56291; -- Glyph of Immolate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56292; -- Glyph of Imp
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56293; -- Glyph of Searing Pain
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56294; -- Glyph of Shadow Bolt
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56295; -- Glyph of Shadowburn
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56296; -- Glyph of Siphon Life
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56297; -- Glyph of Soulstone
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56299; -- Glyph of Succubus
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56301; -- Glyph of Unstable Affliction
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56302; -- Glyph of Voidwalker
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56540; -- Glyph of Arcane Explosion
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56542; -- Glyph of Arcane Missiles
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56544; -- Glyph of Arcane Power
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56546; -- Glyph of Blink
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56547; -- Glyph of Evocation
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56587; -- Glyph of Fireball
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56588; -- Glyph of Fire Blast
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56589; -- Glyph of Frost Nova
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56590; -- Glyph of Frostbolt
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56591; -- Glyph of Ice Armor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56592; -- Glyph of Ice Block
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56593; -- Glyph of Ice Lance
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56594; -- Glyph of Icy Veins
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56595; -- Glyph of Scorch
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56596; -- Glyph of Invisibility
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56597; -- Glyph of Mage Armor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56598; -- Glyph of Mana Gem
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56599; -- Glyph of Molten Armor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56600; -- Glyph of Polymorph
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56601; -- Glyph of Remove Curse
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56602; -- Glyph of Water Elemental
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56869; -- Glyph of Aimed Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56870; -- Glyph of Arcane Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56871; -- Glyph of the Beast
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56872; -- Glyph of Mending
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56873; -- Glyph of Aspect of the Viper
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56874; -- Glyph of Bestial Wrath
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56875; -- Glyph of Deterrence
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56876; -- Glyph of Disenegage
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56877; -- Glyph of Freezing Trap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56878; -- Glyph of Frost Trap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56879; -- Glyph of Hunter's Mark
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56880; -- Glyph of Immolation Trap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56881; -- Glyph of the Hawk
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56882; -- Glyph of Multi-Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56883; -- Glyph of Rapid Fire
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56884; -- Glyph of Serpent Sting
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56885; -- Glyph of Snake Trap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56886; -- Glyph of Steady Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56887; -- Glyph of Trueshot Aura
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56888; -- Glyph of Volley
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 56889; -- Glyph of Wyvern Sting
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57109; -- Glyph of Adrenaline Rush
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57140; -- Glyph of Ambush
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57141; -- Glyph of Backstab
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57142; -- Glyph of Blade Flurry
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57145; -- Glyph of Deadly Throw
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57146; -- Glyph of Evasion
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57147; -- Glyph of Eviscerate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57148; -- Glyph of Expose Armor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57149; -- Glyph of Feint
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57150; -- Glyph of Garrote
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57293; -- Glyph of Ghostly Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57295; -- Glyph of Gouge
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57296; -- Glyph of Hemorrhage
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57297; -- Glyph of Preparation
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57298; -- Glyph of Rupture
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57299; -- Glyph of Sap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57300; -- Glyph of Vigor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57302; -- Glyph of Sinister Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57303; -- Glyph of Slice and Dice
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 57304; -- Glyph of Sprint
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58140; -- Glyph of Aquatic Form
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58158; -- Glyph of Challenging Roar
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58159; -- Glyph of the Wild
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58161; -- Glyph of Unburdened Rebirth
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58163; -- Glyph of Thorns
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58166; -- Glyph of the Forest Lynx
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58173; -- Glyph of the Black Bear
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58186; -- Glyph of Revive Pet
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58188; -- Glyph of Mend Pet
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58229; -- Glyph of Feign Death
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58232; -- Glyph of the Pack
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58233; -- Glyph of Possessed Strength
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58234; -- Glyph of Scare Beast
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58235; -- Glyph of Arcane Intellect
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58236; -- Glyph of Fire Ward
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58237; -- Glyph of Frost Ward
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58238; -- Glyph of Frost Armor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58239; -- Glyph of the Penguin
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58240; -- Glyph of the Bear Cub
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58241; -- Glyph of Slow Fall
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58242; -- Glyph of Blessing of Kings
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58243; -- Glyph of Blessing of Might
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58244; -- Glyph of Blessing of Wisdom
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58245; -- Glyph of Lay on Hands
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58246; -- Glyph of Sense Undead
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58247; -- Glyph of the Wise
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58248; -- Glyph of Fading
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58249; -- Glyph of Levitate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58250; -- Glyph of Fortitude
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58251; -- Glyph of Shackle Undead
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58252; -- Glyph of Shadow Protection
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58253; -- Glyph of Shadowfiend
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58254; -- Glyph of Distract
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58255; -- Glyph of Pick Lock
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58256; -- Glyph of Pick Pocket
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58257; -- Glyph of Safe Fall
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58258; -- Glyph of Blurred Speed
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58259; -- Glyph of Vanish
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58260; -- Glyph of Astral Recall
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58261; -- Glyph of the Arctic Wolf
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58262; -- Glyph of the Black Wolf
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58263; -- Glyph of Renewed Life
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58264; -- Glyph of Water Breathing
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58265; -- Glyph of Water Walking
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58266; -- Glyph of Water Shield
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58267; -- Glyph of Unending Breath
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58271; -- Glyph of Drain Soul
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58272; -- Glyph of Kilrogg
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58273; -- Glyph of Curse of Exhaustion
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58274; -- Glyph of Enslave Demon
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58275; -- Glyph of Souls
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58276; -- Glyph of Battle
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58277; -- Glyph of Bloodrage
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58278; -- Glyph of Charge
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58279; -- Glyph of Mocking Blow
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58280; -- Glyph of Thunder Clap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58281; -- Glyph of Enduring Victory
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58389; -- Glyph of Mortal Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58390; -- Glyph of Whirlwind
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58391; -- Glyph of Victory Rush
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58392; -- Glyph of Resonating Power
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58393; -- Glyph of Taunt
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58394; -- Glyph of Sweeping Strikes
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58395; -- Glyph of Sunder Armor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58396; -- Glyph of Last Stand
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58397; -- Glyph of Shield Slam
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58398; -- Glyph of Revenge
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58399; -- Glyph of Rending
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58400; -- Glyph of Overpower
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58401; -- Glyph of Barbaric Insults
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58402; -- Glyph of Intervene
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58403; -- Glyph of Heroic Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58404; -- Glyph of Hamstring
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58405; -- Glyph of Execution
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58406; -- Glyph of Devastate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58407; -- Glyph of Cleaving
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58408; -- Glyph of Bloodthirst
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58409; -- Glyph of Rapid Charge
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58614; -- Glyph of Dark Command
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58705; -- Glyph of Anti-Magic Shell
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58706; -- Glyph of Heart Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58707; -- Glyph of Blood Tap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58708; -- Glyph of Bone Shield
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58709; -- Glyph of Chains of Ice
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58710; -- Glyph of Death and Decay
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58711; -- Glyph of Death's Embrace
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58713; -- Glyph of Death Grip
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58715; -- Glyph of Frost Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58716; -- Glyph of Horn of Winter
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58717; -- Glyph of Icebound Fortitude
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58718; -- Glyph of Icy Touch
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58719; -- Glyph of Obliterate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58720; -- Glyph of Plague Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58721; -- Glyph of the Ghoul
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58722; -- Glyph of Rune Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58723; -- Glyph of Scourge Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58724; -- Glyph of Strangulate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58725; -- Glyph of Unbreakable Armor
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 58726; -- Glyph of Vampiric Blood
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59218; -- Glyph of Dash
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59287; -- Glyph of Ghost Wolf
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59311; -- Glyph of Pestilence
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59312; -- Glyph of Corpse Explosion
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59313; -- Glyph of Raise Dead
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59328; -- Glyph of Rune Tap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59333; -- Glyph of Blood Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59337; -- Glyph of Death Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59427; -- Glyph of Holy Wrath
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59428; -- Glyph of Seal of Righteousness
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 59429; -- Glyph of Seal of Vengeance
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 60460; -- Glyph of Raise Dead
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 61206; -- Glyph of Frostfire
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 62127; -- Glyph of Blast Wave
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 62133; -- Glyph of Thunderstorm
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 62134; -- Glyph of Typhoon
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 62161; -- Glyph of Focus
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 62353; -- Glyph of Arcane Blast
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63714; -- Glyph of Berserk
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63715; -- Glyph of Wild Growth
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63717; -- Glyph of Nourish
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63718; -- Glyph of Savage Roar
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63739; -- Glyph of Monsoon
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63740; -- Glyph of Barkskin
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63741; -- Glyph of Chimera Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63854; -- Glyph of Explosive Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63855; -- Glyph of Kill Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63856; -- Glyph of Explosive Trap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63857; -- Glyph of Scatter Shot
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63858; -- Glyph of Raptor Strike
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63859; -- Glyph of Deep Freeze
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63860; -- Glyph of Living Bomb
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63862; -- Glyph of Arcane Barrage
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63863; -- Glyph of Mirror Image
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63864; -- Glyph of Ice Barrier
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63865; -- Glyph of Beacon of Light
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63866; -- Glyph of Hammer of the Righteous
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63867; -- Glyph of Divine Storm
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63868; -- Glyph of Shield of Righteousness
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63869; -- Glyph of Divine Plea
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63870; -- Glyph of Holy Shock
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63871; -- Glyph of Salvation
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63872; -- Glyph of Dispersion
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63873; -- Glyph of Guardian Spirit
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63874; -- Glyph of Penance
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63875; -- Glyph of Mind Sear
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63876; -- Glyph of Hymn of Hope
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63877; -- Glyph of Pain Suppression
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63878; -- Glyph of Hunger For Blood
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63879; -- Glyph of Killing Spree
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63880; -- Glyph of Shadow Dance
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63897; -- Glyph of Fan of Knives
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63898; -- Glyph of Tricks of the Trade
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63899; -- Glyph of Mutilate
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63901; -- Glyph of Cloak of Shadows
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63902; -- Glyph of Thunder
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63903; -- Glyph of Feral Spirit
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63904; -- Glyph of Riptide
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63925; -- Glyph of Earth Shield
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63926; -- Glyph of Totem of Wrath
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63927; -- Glyph of Hex
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63929; -- Glyph of Stoneclaw Totem
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63930; -- Glyph of Haunt
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63932; -- Glyph of Metamorphosis
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63933; -- Glyph of Chaos Bolt
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63937; -- Glyph of Demonic Circle
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63938; -- Glyph of Shadowflame
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63941; -- Glyph of Life Tap
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63943; -- Glyph of Soul Link
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63945; -- Glyph of Bladestorm
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63948; -- Glyph of Shockwave
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63949; -- Glyph of Vigilance
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63950; -- Glyph of Enraged Regeneration
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63951; -- Glyph of Spell Reflection
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63952; -- Glyph of Shield Wall
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63953; -- Glyph of Dancing Rune Weapon
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63954; -- Glyph of Hungering Cold
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63955; -- Glyph of Unholy Blight
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63958; -- Glyph of Dark Death
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63959; -- Glyph of Disease
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 63961; -- Glyph of Howling Blast
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 64200; -- Glyph of Envenom
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 65244; -- Glyph of Survival Instincts
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 67599; -- Glyph of Claw
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 68163; -- Glyph of Command
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 70938; -- Glyph of Eternal Water
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 70948; -- Glyph of Quick Decay
UPDATE `spell` SET `spell_focus_object` = 1589 WHERE `id` = 71014; -- Glyph of Rapid Rejuvenation
