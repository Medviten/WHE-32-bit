# mod-worgoblin-high-elf
## F-046_mod-playable-slime-giant

### Features
- Playable Slime Giants (Horde), male only (one body)
    - Retail SlimeSkeleton model (FileDataID 3490792), converted to the 3.3.5 M2 format (`Character\SlimeGiant`):
      208 bones, 55 animations, Kul Tiran-sized, helmet/shoulder/weapon attachments
    - Customization: the 5 retail slime colours (skin colour: green, amber, mauve, red, gold) and the slime drip
      (facial hair option, off/on)
    - Home: Orc (classes, start position, start outfits, action bars, stats, totems, druid forms, race-restricted
      quests and items)
    - Kin: Undead (voice, emotes and names, copied at build time)
    - Helmet prefix 'Kt' (Kul Tiran helmets): the model's attachment points match Kul Tiran's
- Based on Kalibro's Slime Giant for EsteriaWoW (`Engine/Source/Retail/SlimeGiant.h` in his client)

### Requirements
- Custom client with `creatureSkinRaces` containing 43 (the default is "41,43"): the atlas skin is composited
  whole and armour textures are not drawn on it
- Interface: race button 44 and the SLIMEGIANT entries in `CharacterCreate.lua/.xml`, `GlueParent.lua`,
  `GlueStrings.lua` (RACE_INFO_SLIMEGIANT_*, FACIAL_HAIR_DRIP) and `GlobalStrings.lua` (FACIAL_HAIR_DRIP)

### How the assets were made
1. Download the model, its skin (3491636), animations (3491581-3491635), the environment texture (3754771) and the
   colour textures (3491663-3491672: atlas + goo per colour) by FileDataID, e.g. from wago.tools
2. Convert with Kalibro's converter (`RaceGuide/sources/Converter`, `wotlkconv convert`), using a listfile that maps
   the FileDataIDs to `character/slimegiant/male/slimegiantmale*`
3. `python -I tools/models/slimegiant_prep.py <in.m2> <in00.skin> <out.m2> <out00.skin>`:
    - texture 0 (retail type 11, the colour atlas) → type 1, the CharSections skin texture
    - texture 2 (type 12, the goo) → type 8, the skin row's second texture
    - drip submesh → geoset 102
    - skeleton batch → shader 0x8001 (retail effect 0)
4. Rename the colour textures to `SlimeGiantSkin<Colour>.blp` / `SlimeGiantGoo<Colour>.blp`

### Known Issues
- No racial mount
- No armour textures on the body (creature-style skin); no cloak model
- The goo batches use the 3.3.5 default combiner (Mod_Opaque), not the retail Mod_Mod / Opaque_Mod (those need
  texture combiner combos, which change the file layout)
- Kalibro's 30 extra slime colours are not included: they recolour the atlas only, not the goo texture
- Retail animations without a 3.3.5 counterpart (IDs above 505) are never played
- Placeholder race icon (Undead) and racial faction name and description
- Character creation camera is not tuned for the model's size

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 104 (Slime Giant), renumbered; blocks at the end of `[BASE,F-046]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Gooey Slam: Slams the ground, stunning all enemies within 8 yards for 2 sec.
