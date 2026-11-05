# mod-worgoblin-high-elf
## F-095_alpha-goblin-assets

Optional update for F-023_mod-playable-goblin. List it after that modpak in the manifest.

### Features
- The Alpha Goblin look for Goblin players: model, skin colours, faces, hair and facial hair
- NPCs keep the models they had: only the player displays change

### Known Issues
- Tentative: not tested in game yet
- Barber shop styles have generic names
- No blinking: the model's blink hid the eyes (a bare skin mesh, and the eye glow turning off), so `tools/models/m2_alpha_fixes.py` removes it

### Assets
In WHE-common, `patch-A.MPQ/Character/AlphaGoblin`. Made with `tools/races/alpha_race_modpaks.py`, see its notes for the row fixes
