# mod-worgoblin-high-elf
## F-077_patch-reforged-c

### Features
- Project Reforged patch C's DBC changes, as diffs against stock 3.3.5a:
  - `creaturemodeldata`: 141 new models, 353 changed
  - `creaturedisplayinfo`: 31 new displays, 2646 changed
  - `creaturefamily`: 1 new family (Infernal, 108), 1 changed

### Requirements
- The matching Project Reforged client patch, renamed so the DBCs built from these modpaks load after it (as for F-072)

### Known Issues
- Listed before the race modpaks in the manifest, so their rows win where the ids clash:
  - Creature model 3141 (Reforged's `WORGEN_HD` male) is WHE's `@WorgenMaleModel`; F-004 and F-024 replace it
    (F-013 also uses 3141 and 90001)
  - F-005 and F-043 delete displays 32755-34280, which takes out 7 of this modpak's new displays (32755-32763);
    F-012 inserts its own 32755. These only matter if server data uses those displays
