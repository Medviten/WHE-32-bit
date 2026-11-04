# mod-worgoblin-high-elf
## F-093_racial-mount-vendors

### Features
- Vendors for the racial mounts of the race modpaks in the manifest. A vendor sells to its own race, and to others
  who are Exalted with its faction. Races that are not in the manifest get no vendor
    - Goblins (F-023): Kall Worthaton, who sells the trikes, and Revi Ramrod, who teaches riding, in the Orgrimmar
      wolf pen
    - Worgen (F-024): Astrid Langstrump, who sells the mountain horses, in the Darnassus nightsaber pen

### Known Issues
- The spawn spots are temporary, and their heights are estimated from the NPCs around them

### Adding a vendor
Add a file to `sql/db-world/base/`. Test one of the race's own variables, which are unset without its modpak, and
repeat the file's DELETEs at its end for when that test fails, like the existing files.
