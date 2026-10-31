#ifndef ACORE_VENTHYR_RACIALS_H
#define ACORE_VENTHYR_RACIALS_H

// Venthyr racials from Aetheria's Kyrian/Venthyr package (https://github.com/Shotboom12/aetheria-server,
// kyrian-venthyr-20261027-1). WHE: the race is the one whose racial skill line teaches Crimson Feast (F-069); Bat
// Form's creature is the one its spell transforms into (@VenthyrBatCreature in config.sql), and Crimson Feast's
// fractional healing is in patches/whe-acore.patch (SpellAuraEffects.cpp).

#include <cstdint>

namespace VenthyrRacials
{
    std::uint8_t Race();
    constexpr std::uint32_t Feast = 111200;
    constexpr std::uint32_t BloodScent = 111201;
    constexpr std::uint32_t ShadowDefense = 111202;
    constexpr std::uint32_t AnimaHunger = 111203;
    constexpr std::uint32_t Craft = 111204;
    constexpr std::uint32_t AnimaHeal = 111205;
    constexpr std::uint32_t Hover = 111206;
    constexpr std::uint32_t HoverAura = 111207;
    constexpr std::uint32_t Resolve = 111208;
    constexpr std::uint32_t Bat = 111209;
    constexpr std::uint32_t BatAura = 111210;
    constexpr std::uint32_t BatDescent = 111211;
    constexpr std::uint32_t BatSpeed = 111212;
    constexpr std::uint32_t HoverCombatBudget = 15000;
    constexpr std::uint32_t HoverCooldown = 120000;
    constexpr float HoverHeight = 0.75f;
    constexpr float FeastDamagePerLevel = 2.0f;
    constexpr float FeastStatCoefficient = 0.15f;
    constexpr std::uint32_t FeastTicks = 4;
    constexpr std::uint32_t AnimaHealPercent = 3;

    struct HoverState
    {
        std::uint32_t remaining = HoverCombatBudget;
        constexpr bool Update(std::uint32_t elapsed, bool combat)
        {
            if (combat)
                remaining = elapsed >= remaining ? 0 : remaining - elapsed;
            return remaining != 0;
        }
    };

    constexpr bool CheckHoverBudget()
    {
        HoverState state;
        return state.Update(5000, true) && state.Update(0xFFFFFFFFu, false)
            && state.remaining == 10000 && state.Update(9999, true) && !state.Update(1, true);
    }

    static_assert(CheckHoverBudget());
}

#endif
