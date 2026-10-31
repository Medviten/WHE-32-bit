# mod-worgoblin-high-elf
## F-043_mod-darkfallen

### Features
- Playable Darkfallen (Horde)
    - Own models, skin, face and underwear textures; Blood Elf hair, facial styles, names, voice and helmets
    - Start in Tirisfal Glades with the Undead; join the Undercity races for reputation
    - Classes, start outfits and action bars as High Elf; Blood Elf stats
    - Racial faction: Darkfallen (placeholder name)

### Known Issues
- No racial mount
- Racial faction name and description are placeholders

### CoA Custom 1.9 racials
- Active: learned with the racial skill line
- From CoA race 81 (Darkfallen (Horde)), renumbered; blocks at the end of `[BASE,F-043]_spell.sql`, `_skilllineability.sql` and `_spellicon.sql`
    - Blood Siphon: Increases your attack power by $s1 and your spell power by $s2. Lasts $d. Cannot be used while offensive effects from trinkets are active.
    - Mist Form: Activate to slip into the shadows, reducing the chance for enemies to detect your presence.  Lasts until cancelled or upon moving.  Any threat is restored versus enemies still in combat upon cancellation of this effect. Removes invulnerabilities when used.
    - Undying Hunger: Health regeneration rate increased by $s1%. $s2% of total Health regeneration may continue during combat.
    - Grave Chill: Reduces the damage taken by Shadow spells by $s1%.
