# mod-worgoblin-high-elf
## F-094_alpha-worgen-assets

Optional update for F-024_mod-playable-worgen. List it after that modpak in the manifest.

### Features
- The Alpha Worgen look for Worgen players: model, skin colours, faces, hair and facial hair
- NPCs keep the models they had: only the player displays change

### Known Issues
- Tentative: not tested in game yet
- Barber shop styles have generic names
- MountSelf animations for Running Wild (F-063) are retargeted from F-024's models by `tools/models/m2_retarget_mountself.py`; hair and ear bones without a match stay in their Stand pose
- Without F-063, Running Wild uses F-024's quadrupedal models, and the druid forms keep their own models: neither follows the alpha look
- Its hair colours are matched to the druid forms by number, as in F-024

### Assets
In WHE-common, `patch-A.MPQ/Character/AlphaWorgen`. Made with `tools/races/alpha_race_modpaks.py`, see its notes for the row fixes
