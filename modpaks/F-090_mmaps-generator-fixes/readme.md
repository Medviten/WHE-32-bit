# mod-worgoblin-high-elf
## F-090_mmaps-generator-fixes

### Features
- Lets mmaps_generator handle maps with ids of 1000 and up without overrunning its buffers (core patch)
- No DBC changes and nothing applied by build-dbc.sh, only the core patch

### Core patch
`patches/core/mapbuilder-buffers.patch` widens two fixed-size strings in `MapBuilder.cpp`, the vmap file filter and the log prefix, and writes them with `snprintf`. Both were only just long enough for three-digit map ids. build-patch.sh includes the patch in combined-core.patch while F-090 is in the manifest. It only changes the generator, so the worldserver is unaffected.
