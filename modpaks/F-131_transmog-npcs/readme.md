# mod-worgoblin-high-elf
## F-131_transmog-npcs

### Features
- From [all-trainers](https://github.com/ChromWolf/all-trainers): spawns mod-transmog's Warpweaver in every stock capital (two in Silvermoon City and the Undercity) and the Ethereal Warpweaver in Dalaran and Shattrath, 14 in all

### Requirements
- [mod-transmog](https://github.com/azerothcore/mod-transmog) (256-bit: mod-transmog-256-bit), whose SQL adds the creature templates (190010, 190011)
- Keep it before F-010 in the manifest: Open Azeroth's move scripts relocate its Exodar and Silvermoon spawns

### Known Issues
- Formerly part of F-029_all-trainers, whose source, [all-trainers](https://github.com/ChromWolf/all-trainers), spawns them too (`data/sql/db-world/creature.sql`); turn both on to keep the old behaviour
