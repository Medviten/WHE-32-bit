#ifndef ACORE_KYRIAN_HOVER_H
#define ACORE_KYRIAN_HOVER_H

// Kyrian racials from Aetheria's Kyrian/Venthyr package (https://github.com/Shotboom12/aetheria-server,
// kyrian-venthyr-20261027-1). WHE: the race is the one whose racial skill line teaches Ascended Hover (F-068).

#include <cstdint>

class Player;

namespace KyrianHover
{
    // End a consumed dive through the normal safe descent and landing cooldown path.
    void EndForCharge(Player* player);

    std::uint8_t Race();
    constexpr std::uint32_t Ability = 111100;
    constexpr std::uint32_t Wings = 111101;
    constexpr std::uint32_t StunImmunity = 111102;
    constexpr std::uint32_t Descent = 111103;
    constexpr std::uint32_t CombatBudget = 15000;
    constexpr std::uint32_t Cooldown = 120000;

    enum class Phase
    {
        Grounded,
        Hovering,
        Descending
    };

    struct State
    {
        Phase phase = Phase::Grounded;
        std::uint32_t remaining = CombatBudget;

        constexpr void Start()
        {
            phase = Phase::Hovering;
            remaining = CombatBudget;
        }

        constexpr void Descend() { phase = Phase::Descending; }

        constexpr void Update(std::uint32_t elapsed, bool combat)
        {
            if (phase != Phase::Hovering || !combat)
                return;

            remaining = elapsed >= remaining ? 0 : remaining - elapsed;
            if (!remaining)
                Descend();
        }
    };

    // These checks are compiled with the server, without requiring a live realm.
    constexpr bool CheckBudget()
    {
        State state;
        state.Start();
        state.Update(6000, true);
        state.Update(0xFFFFFFFFu, false);
        if (state.remaining != 9000 || state.phase != Phase::Hovering)
            return false;
        state.Update(8999, true);
        if (state.remaining != 1)
            return false;
        state.Update(1, true);
        state.Update(1, false);
        return state.phase == Phase::Descending && state.remaining == 0;
    }

    static_assert(CheckBudget());
}

#endif
