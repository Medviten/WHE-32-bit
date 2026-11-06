# mod-worgoblin-high-elf
## F-101_zep-custom-icons

### Features
- The custom icons of [Zeppelin-Craft](https://github.com/ZepplinCore-Development/Zeppelin-Craft)'s `patch-custom-icons` zpak (its F-142): 20,675 ItemDisplayInfo rows that give an item icon to newer and custom items, and 1,361 SpellIcon rows for newer and custom spell icons
- Nothing uses them on its own: they are there for items and spells that name these display and icon ids, such as more of Zeppelin-Craft's ports

### Requirements
- The client assets below

### Client assets
The icons are in [WHE-common](https://github.com/Medviten/WHE-common), as `patch-A.MPQ/Interface/Icons/*.blp`, taken from Zeppelin-Craft's client patch PATCH-I. Without them the client shows the question mark icon.

### Updating
The SQL is the zpak's `dbc/` as it is, except that Zeppelin-Craft's two UPDATEs of stock displays (6098 gets spell visual 228, and 59309 an icon name that is a texture) are left out: they aren't icons.

### Known Issues
- The macro icon picker only lists icons whose names start with Ability_ or Spell_ (and INV_ for equipment), as in stock, so most of these can't be picked for a macro. Zeppelin-Craft replaces Blizzard_MacroUI with a list made from its SpellIcon.dbc, which isn't ported
- `rom_myrma_man_spear`, which one ItemDisplayInfo row names, isn't in Zeppelin-Craft's patches either
- Seven SpellIcon rows are also in F-023_mod-playable-goblin, with the same icons
