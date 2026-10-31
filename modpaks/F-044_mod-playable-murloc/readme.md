# mod-worgoblin-high-elf
## F-044_mod-playable-murloc

### Features
- Playable Murlocs (Horde)
    - Vanilla (patch-8) test-client Murloc model, converted to the 3.3.5 M2 format (`Character\Murloc`)
    - Six skin colours (CharSections), murloc creature voice and combat sounds
    - Base classes from the donor client: warrior, rogue, shaman, mage (ARAC adds the rest)
    - Start in the Valley of Trials with the Trolls; Troll stats, start outfits, action bars and totems
    - Racial faction: Mrgl Tribe (placeholder name)

### Known Issues
- No racial mount
- The model has no geosets or helmet/shoulder attachments: armour only shows as body texture, helmets and
  shoulders are not drawn
- Male and female use the same model
- Armour textures are composited onto a creature skin layout, so they land in odd places
- Racial faction name and description are placeholders

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 31 (Murloc (Horde)), renumbered; blocks at the end of `[BASE,F-044]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Mrgglrrgl!: Escape the effects of any immobilization or movement speed reduction effect and become immune to them for $81001d.
    - Murloc Swarm: Increases your attack and casting speed by $s1% for $d. Does not stack with other similar cast speed increasing effects.
    - Amphibious: Increases your dodge chance by $s1%.
    - Born in the Shallows: Underwater breath lasts $s1% longer than normal.
