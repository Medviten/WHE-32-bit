# mod-worgoblin-high-elf
## F-027_mod-gilnean

### Features
- Gilnean as the altered form of Worgen (requires F-024), not a playable race
    - Human with Gilnean voice (British accent)
    - Race ID 213, above the playable range: not playable (ChrRaces flag 1), so it takes no race mask bit, achievements, reputation, racials or starting data
    - The client needs `alteredFormRaces` set to `12=213`, and `helmetRaces` to include `213=1` so helmets hide hair and ears as on a human (both are the 32-bit client's defaults)

### Known Issues
- Sound files may not be working while transformed
- For some reason, Gilnean doesn't show up