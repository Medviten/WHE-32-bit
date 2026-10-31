DELETE FROM `playercreateinfo_action` WHERE `race` = @Undead AND `class` = @Paladin;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(@Undead,   @Paladin,     @Row1Button1,      @SpellAutoAttack,              @ActionbarSpell),
(@Undead,   @Paladin,     @Row1Button2,      @SpellSealOfRighteousness,     @ActionbarSpell),
(@Undead,   @Paladin,     @Row1Button3,      @SpellHolyLight1,              @ActionbarSpell),
(@Undead,   @Paladin,     @Row1Button12,     @SpellCannibalize,             @ActionbarSpell);
