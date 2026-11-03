# mod-worgoblin-high-elf
## F-089_server-qol

### Features
- No fatigue in deep water (core patch; `DisableFatigue = 0` turns it off)
- Higher limits on the `.modify speed` commands, `.modify mount` and `.modify scale` (core patch)
- No DBC changes and nothing applied by build-dbc.sh, only the core patches

### Core patches
build-patch.sh includes both patches in combined-core.patch while F-089 is in the manifest. To leave one out, delete it from `patches/core`.
- `patches/core/no-fatigue.patch` adds the worldserver.conf setting `DisableFatigue`, with default 1. Set it to 0 for stock behaviour.
- `patches/core/gm-command-limits.patch` raises the highest speed from 50 to 100 for `.modify speed all`, `walk`, `backwalk`, `swim` and `fly` and for `.modify mount`, and widens `.modify scale` from 0.1-10 to 0.001-1000.
