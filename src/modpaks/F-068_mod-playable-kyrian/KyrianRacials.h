#ifndef ACORE_KYRIAN_RACIALS_H
#define ACORE_KYRIAN_RACIALS_H

// Kyrian racials from Aetheria's Kyrian/Venthyr package (https://github.com/Shotboom12/aetheria-server,
// kyrian-venthyr-20261027-1). WHE: the race is the one whose racial skill line teaches Ascended Wings (F-068);
// the fall damage reduction is in patches/whe-acore.patch (Player.cpp).

#include <cstdint>

namespace KyrianRacials
{
    std::uint8_t Race();
    constexpr std::uint32_t AscendedWings = 111104;
    constexpr std::uint32_t Purity = 111105;
    constexpr std::uint32_t Courage = 111106;
    constexpr std::uint32_t SoulGuide = 111107;
    constexpr std::uint32_t Craft = 111108;
    constexpr std::uint32_t SpiritSpeed = 111109;
    constexpr std::uint32_t Charge = 111110;
    constexpr std::uint32_t ChargeImpact = 111111;
    constexpr std::uint32_t ChargeSlow = 111112;
    constexpr std::uint32_t ChargeRing = 111113;
    constexpr float ChargeRange = 25.0f;
    constexpr float ChargeStatCoefficient = 0.15f;
    constexpr float ChargeDamagePerLevel = 2.0f;
    constexpr std::uint32_t ChargeRingTickPercent = 10;
    constexpr std::uint32_t ChargeDiveBonusPercent = 20;
}

#endif
