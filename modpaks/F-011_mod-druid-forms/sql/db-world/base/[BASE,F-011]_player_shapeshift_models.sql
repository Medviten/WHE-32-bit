-- Moved from Worgoblin (not really relevant to that module)
REPLACE INTO `player_shapeshift_model` (
    `ShapeshiftID`, -- ID from SpellShapeshiftForm.dbc or spellshapeshiftform_dbc
    `RaceID`, -- ID from ChrRaces.dbc or chrraces_dbc
    `CustomizationID`, -- hair colour or skin colour
    `GenderID`, -- 0: male, 1: female, 2: both
    `ModelID` -- ID from CreatureDisplayInfo.dbc or creaturedisplayinfo_dbc (*not* from CreatureModelData.dbc!)
) VALUES

/* Undead Druid Forms */
(@TreeForm,        @Undead,    255, @Male,   @DruidEntSkinDead), -- ModelID: EntSkinDead
(@TreeForm,        @Undead,    255, @Female, @DruidEntSkinDiseased), -- ModelID: EntSkinDiseased
(@BearForm,        @Undead,    255,       2, @DruidBearSkinBrownDiseased), -- ModelID: BearSkinBrownDiseased
(@BearForm,        @Undead,      0,       2, @DruidBearSkinWhiteDiseased), -- ModelID: BearSkinWhiteDiseased
(@AquaticForm,     @Undead,    255,       2, @DruidSharkSkinPurple), -- ModelID: SharkSkinPurple
(@FlightForm,      @Undead,    255,       2, @DragonWhelpSkinDiseasedDisplay), -- ModelID: DragonWhelpSkinDiseased
(@SwiftFlightForm, @Undead,    255,       2, @DragonWhelpSkinDiseasedDisplay), -- ModelID: DragonWhelpSkinDiseased

/* Blood Elf Druid Forms (no bear forms yet: they use SpellShapeshiftForm.dbc's default, the Night Elf bear) */
(@CatForm,         @BloodElf,  255,       2, @DruidLynxSkinRedDisplay), -- ModelID: LynxSkinRed (Springpaw Lynx)
(@AquaticForm,     @BloodElf,  255,       2, @DruidManaWurmSkinDisplay), -- ModelID: ManaWurmSkinSilver1 (Mana Wyrm)
(@FlightForm,      @BloodElf,  255,       2, @DruidDragonHawkSkinDisplay), -- ModelID: DragonHawkSkin (Feral Dragonhawk Hatchling)
(@SwiftFlightForm, @BloodElf,  255,       2, @DruidDragonHawkSkin01Display), -- ModelID: DragonHawkSkin01 (Crazed Dragonhawk)

/* Gnome Druid Forms */
(@TreeForm,        @Gnome,      1,        2, @DruidLasherOrchidSkinBrown), -- brown hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      2,        2, @DruidLasherOrchidSkinBrown), -- gray hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      3,        2, @DruidLasherOrchidSkinBrown), -- white hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      4,        2, @DruidLasherOrchidSkinBrown), -- gray hair: LasherOrchidSkinBrown
(@TreeForm,        @Gnome,      5,        2, @DruidLasherOrchidSkinPurple), -- red hair: LasherOrchidSkinPurple
(@TreeForm,        @Gnome,      8,        2, @DruidLasherOrchidSkinPurple), -- pink hair: LasherOrchidSkinPurple
(@TreeForm,        @Gnome,      9,        2, @DruidLasherOrchidSkinPurple), -- black hair: LasherOrchidSkinPurple
(@TreeForm,        @Gnome,    255,        2, @DruidLasherOrchidSkinGreen), -- ModelID: LasherOrchidSkinGreen
(@BearForm,        @Gnome,    255,        2, @PolarBearCubSkinDisplay), -- ModelID: PolarBearCubSkin
(@DireBearForm,    @Gnome,    255,        2, @PolarBearCubSkinDisplay), -- ModelID: PolarBearCubSkin
(@MoonkinForm,     @Gnome,    255,        2, @NorthrendPenguin01Display); -- ModelID: NorthrendPenguin01
