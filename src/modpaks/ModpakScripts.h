#ifndef WHE_MODPAK_SCRIPTS_H
#define WHE_MODPAK_SCRIPTS_H

// Helpers for modpak scripts (src/modpaks/<modpak>/). Everything under src/ is compiled whether or not its modpak is
// applied. Spell scripts only run once the modpak's spell_script_names rows bind them, but hooks (PlayerScript, ...)
// always run, so they check the data their modpak installs instead of hard-coded race IDs, which differ between
// builds (race IDs are auto-incremented in the 32-bit version).

#include "ObjectMgr.h"
#include "Player.h"
#include "SpellMgr.h"

#include <string_view>

namespace WHE
{
    // True if the world database binds the spell to the script (spell_script_names), i.e. the modpak that ships that
    // binding is applied.
    inline bool IsSpellScriptBound(uint32 spellId, std::string_view scriptName)
    {
        SpellScriptsBounds bounds = sObjectMgr->GetSpellScriptsBounds(spellId);

        for (auto itr = bounds.first; itr != bounds.second; ++itr)
            if (sObjectMgr->GetScriptName(itr->second) == scriptName)
                return true;

        return false;
    }

    // True if a SkillLineAbility row gives the spell to the player's race, i.e. the race the modpak meant it for.
    inline bool IsSpellForPlayerRace(Player const* player, uint32 spellId)
    {
        SkillLineAbilityMapBounds bounds = sSpellMgr->GetSkillLineAbilityMapBounds(spellId);

        for (auto itr = bounds.first; itr != bounds.second; ++itr)
            if (itr->second->RaceMask & player->getRaceMask())
                return true;

        return false;
    }

    // The race whose SkillLineAbility row gives the spell (its racial skill line in the race's modpak), 0 if none, for
    // scripts that check one race (WHE-256-bit's RacialRace.h, with 32-bit race masks).
    inline uint8 RaceTeaching(uint32 spellId)
    {
        SkillLineAbilityMapBounds bounds = sSpellMgr->GetSkillLineAbilityMapBounds(spellId);

        for (auto itr = bounds.first; itr != bounds.second; ++itr)
            for (uint8 race = 1; race <= 32; ++race)
                if (itr->second->RaceMask & (1u << (race - 1)))
                    return race;

        return 0;
    }
}

#endif
