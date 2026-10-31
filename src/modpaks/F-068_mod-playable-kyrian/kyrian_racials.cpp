// Kyrian racials from Aetheria's Kyrian/Venthyr package (https://github.com/Shotboom12/aetheria-server,
// kyrian-venthyr-20261027-1), with WHE's changes marked "WHE:".

#include "DataMap.h"
#include "KyrianHover.h"
#include "KyrianRacials.h"
#include "ModpakScripts.h"
#include "MotionMaster.h"
#include "MoveSpline.h"
#include "ObjectAccessor.h"
#include "PathGenerator.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "Util.h"
#include <algorithm>

namespace
{
    using namespace KyrianRacials;

    enum ChargeMovement : uint32
    {
        ChargeMovementId = 111110,
        ChargeTimeout = 5000
    };

    struct ChargeData final : DataMap::Base
    {
        bool active = false;
        bool dive = false;
        ObjectGuid target;
        Position destination;
        uint32 spline = 0;
        uint32 elapsed = 0;
    };

    void UpdateSpiritSpeed(Player* player)
    {
        bool const spirit = player->getRace(true) == Race() && player->HasSpell(SoulGuide)
            && player->HasPlayerFlag(PLAYER_FLAGS_GHOST);
        if (!spirit)
            player->RemoveAurasDueToSpell(SpiritSpeed);
        else if (!player->HasAura(SpiritSpeed))
            player->CastSpell(player, SpiritSpeed, true);
    }

    void CancelCharge(Player* player)
    {
        if (ChargeData* data = player->CustomData.Get<ChargeData>("KyrianCharge"))
        {
            bool const endHover = data->active && data->dive;
            data->active = false;
            if (endHover)
                KyrianHover::EndForCharge(player);
        }
    }

    void ChargeArrived(Player* player, Unit* target, bool dive)
    {
        // Keep flight permission during the accepted spline, then consume Hover
        // even if the target has died or moved out of reach before impact.
        if (dive)
            KyrianHover::EndForCharge(player);

        if (!target || !target->IsAlive() || !player->IsValidAttackTarget(target)
            || !player->IsWithinLOSInMap(target))
            return;
        float const reach = player->GetCombatReach() + target->GetCombatReach() + 2.0f;
        if (!player->IsWithinDistInMap(target, reach))
            return;

        float const attackPower = std::max(player->GetTotalAttackPowerValue(BASE_ATTACK),
            player->GetTotalAttackPowerValue(RANGED_ATTACK));
        float const spellPower = float(std::max<int32>(0,
            player->SpellBaseDamageBonusDone(SPELL_SCHOOL_MASK_HOLY)));
        int32 const damage = int32(ChargeDamagePerLevel * player->GetLevel()
            + ChargeStatCoefficient * std::max(attackPower, spellPower));
        int32 const impact = dive ? damage + CalculatePct(damage, ChargeDiveBonusPercent) : damage;
        player->CastCustomSpell(ChargeImpact, SPELLVALUE_BASE_POINT0, impact, target, true);
        player->CastSpell(player, ChargeSlow, true);
        // The persistent ground aura snapshots the same AP/SP choice at arrival.
        int32 const ringTick = std::max<int32>(1, CalculatePct(damage, ChargeRingTickPercent));
        player->CastCustomSpell(ChargeRing, SPELLVALUE_BASE_POINT0, ringTick, player, true);
    }
}

// WHE: the race whose racial skill line teaches Ascended Wings (Aetheria: race 60)
std::uint8_t KyrianRacials::Race()
{
    static std::uint8_t const race = WHE::RaceTeaching(AscendedWings);
    return race;
}

class kyrian_racial_players : public PlayerScript
{
public:
    kyrian_racial_players() : PlayerScript("kyrian_racial_players",
        {PLAYERHOOK_ON_LOGIN, PLAYERHOOK_ON_UPDATE, PLAYERHOOK_ON_PLAYER_RELEASED_GHOST,
            PLAYERHOOK_ON_PLAYER_RESURRECT, PLAYERHOOK_ON_BEFORE_LOGOUT, PLAYERHOOK_ON_MAP_CHANGED,
            PLAYERHOOK_ON_PLAYER_JUST_DIED}) { }

    void OnPlayerLogin(Player* player) override
    {
        // WHE: the racials are learned with the racial skill line
        UpdateSpiritSpeed(player);
    }

    void OnPlayerReleasedGhost(Player* player) override { UpdateSpiritSpeed(player); }
    void OnPlayerResurrect(Player* player, float /*percent*/, bool& /*sickness*/) override
    {
        player->RemoveAurasDueToSpell(SpiritSpeed);
    }

    void OnPlayerBeforeLogout(Player* player) override { CancelCharge(player); }
    void OnPlayerMapChanged(Player* player) override
    {
        CancelCharge(player);
        UpdateSpiritSpeed(player);
    }
    void OnPlayerJustDied(Player* player) override { CancelCharge(player); }

    void OnPlayerUpdate(Player* player, uint32 diff) override
    {
        if (player->getRace(true) != Race())
        {
            player->RemoveAurasDueToSpell(SpiritSpeed);
            CancelCharge(player);
            return;
        }
        UpdateSpiritSpeed(player);

        ChargeData* data = player->CustomData.Get<ChargeData>("KyrianCharge");
        if (!data || !data->active)
            return;
        data->elapsed += diff;
        if (!player->IsAlive() || player->HasUnitState(UNIT_STATE_ROOT | UNIT_STATE_STUNNED
            | UNIT_STATE_FLEEING | UNIT_STATE_CONFUSED) || player->GetTransport() || player->GetVehicle()
            || player->IsInFlight() || player->movespline->GetId() != data->spline
            || data->elapsed >= ChargeTimeout)
        {
            CancelCharge(player);
            return;
        }
        if (!player->movespline->Finalized())
            return;

        // Only the original, completed spline may deliver the impact. A new
        // spline, interrupted charge, logout or teleport never deals a late hit.
        if (player->GetExactDist(&data->destination) > 2.0f)
        {
            CancelCharge(player);
            return;
        }
        data->active = false;
        ChargeArrived(player, ObjectAccessor::GetUnit(*player, data->target), data->dive);
    }
};

class spell_kyrian_ascendant_charge : public SpellScript
{
    PrepareSpellScript(spell_kyrian_ascendant_charge);

    Position _destination;
    bool _dive = false;

    bool Validate(SpellInfo const* /*info*/) override
    {
        return ValidateSpellInfo({Charge, ChargeImpact, ChargeSlow, ChargeRing, KyrianHover::Wings});
    }

    SpellCastResult Check()
    {
        Player* player = GetCaster()->ToPlayer();
        Unit* target = GetExplTargetUnit();
        if (!player || player->getRace(true) != Race())
            return SPELL_FAILED_SPELL_UNAVAILABLE;
        if (!target || !target->IsAlive() || !player->IsValidAttackTarget(target))
            return SPELL_FAILED_BAD_TARGETS;
        if (!player->IsAlive() || player->IsMounted() || player->IsInFlight() || player->GetVehicle()
            || player->GetTransport() || player->IsInWater() || player->IsInDisallowedMountForm()
            || player->GetDisplayId() != player->GetNativeDisplayId())
            return SPELL_FAILED_NOT_HERE;
        if (player->HasUnitState(UNIT_STATE_ROOT | UNIT_STATE_STUNNED | UNIT_STATE_FLEEING | UNIT_STATE_CONFUSED))
            return SPELL_FAILED_ROOTED;
        if (ChargeData* data = player->CustomData.Get<ChargeData>("KyrianCharge"))
            if (data->active)
                return SPELL_FAILED_NOT_READY;
        if (!player->IsWithinDistInMap(target, ChargeRange, true, false, false))
            return SPELL_FAILED_OUT_OF_RANGE;
        if (!player->IsWithinLOSInMap(target))
            return SPELL_FAILED_LINE_OF_SIGHT;

        _dive = player->HasAura(KyrianHover::Wings) && player->IsFlying();
        if (!_dive && (player->IsFlying() || player->IsFalling()))
            return SPELL_FAILED_NOT_ON_GROUND;
        _destination = target->GetFirstCollisionPosition(player->GetCombatReach() + target->GetCombatReach(),
            target->GetRelativeAngle(player));
        if (!_dive)
        {
            PathGenerator path(player);
            path.SetPathLengthLimit(ChargeRange * 1.5f);
            if (!path.CalculatePath(_destination.GetPositionX(), _destination.GetPositionY(),
                _destination.GetPositionZ(), false)
                || (path.GetPathType() & (PATHFIND_NOPATH | PATHFIND_INCOMPLETE | PATHFIND_SHORT)))
                return SPELL_FAILED_NOPATH;
        }
        return SPELL_CAST_OK;
    }

    void Launch(SpellEffIndex /*index*/)
    {
        Player* player = GetCaster()->ToPlayer();
        Unit* target = GetHitUnit();
        if (!player || !target || !player->IsValidAttackTarget(target))
            return;
        player->SetSheath(SHEATH_STATE_MELEE);
        ChargeData* data = player->CustomData.GetDefault<ChargeData>("KyrianCharge");
        data->active = false;
        data->target = target->GetGUID();
        data->destination = _destination;
        data->elapsed = 0;
        data->dive = _dive;
        // A target already at the arrival point needs no zero-length spline.
        if (player->GetExactDist(&_destination) <= 0.5f)
        {
            ChargeArrived(player, target, data->dive);
            return;
        }
        // A shallow arc leaps from the ground; a zero-amplitude arc dives in
        // a straight line while retaining the existing Wings flight permission.
        uint32 const previousSpline = player->movespline->GetId();
        player->GetMotionMaster()->MoveJump(_destination.GetPositionX(), _destination.GetPositionY(),
            _destination.GetPositionZ(), _dive ? 30.0f : 24.0f, _dive ? 0.0f : 8.0f,
            ChargeMovementId, target);
        data->spline = player->movespline->GetId();
        data->active = data->spline != previousSpline && !player->movespline->Finalized();
        if (data->active)
            sScriptMgr->AnticheatSetUnderACKmount(player);
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_kyrian_ascendant_charge::Check);
        OnEffectHitTarget += SpellEffectFn(spell_kyrian_ascendant_charge::Launch, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

void AddSC_kyrian_racials()
{
    new kyrian_racial_players();
    RegisterSpellScript(spell_kyrian_ascendant_charge);
}
