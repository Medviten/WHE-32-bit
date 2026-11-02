# mod-worgoblin-high-elf
## F-037_maghar-modern-assets

Optional update for F-007_mod-maghar. List it after F-007 in the manifest.

### Features
- Modern (BfA) Mag'har models (male: upright stance; switch to `orcmale_hd` in variables.sql for the hunched one)
- 10 (male) / 11 (female) skin colours (the source's near-black colour 10 is left out; female colour 10 is its unused skin 00_100 with colour 5's faces), 9 faces and modern underwear textures
- Modern hair textures (9 colours), one texture per colour without scalp textures; death knight hair colours keep their old textures

### Known Issues
- Heads are 256x192 in the 512x512 composite (retail: 512x512), so faces are softer than in retail
- Missing face colours reuse the nearest darker colour: female face 1 colour 7
- Hair geosets, facial hair and helmet geosets are unchanged from F-007

### Assets
Converted to the stock atlas layout with `tools/models/maghar_modern_prep.py`, which the compositor needs (see the script's notes)
