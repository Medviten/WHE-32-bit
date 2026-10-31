// Kyrian racials from Aetheria's Kyrian/Venthyr package (https://github.com/Shotboom12/aetheria-server,
// kyrian-venthyr-20261027-1), with WHE's changes marked "WHE:".

#include "DataMap.h"
#include "KyrianHover.h"
#include "ModpakScripts.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "WorldPacket.h"

namespace
{
    using namespace KyrianHover;

    struct HoverData final : DataMap::Base
    {
        State state;
        bool showingCombatTimer = false;
        bool leftGround = false;
    };

    HoverData* GetHover(Player* player)
    {
        return player->CustomData.Get<HoverData>("KyrianHover");
    }

    bool IsGrounded(Player const* player)
    {
        return !player->Unit::IsFalling() && !player->IsFlying()
            && player->GetPositionZ() <= player->GetFloorZ() + 0.25f;
    }

    bool CanHover(Player const* player)
    {
        return player->getRace(true) == Race() && player->IsAlive() && !player->IsMounted()
            && !player->IsInFlight() && !player->GetVehicle() && !player->GetTransport()
            // Warrior stances are shapeshift records, but keep the native Kyrian body.
            && !player->IsInWater() && !player->IsInDisallowedMountForm()
            && player->GetDisplayId() == player->GetNativeDisplayId();
    }

    void Land(Player* player)
    {
        HoverData* data = GetHover(player);
        if (!data || data->state.phase == Phase::Grounded)
            return;

        data->state.phase = Phase::Grounded;
        player->RemoveAurasDueToSpell(Wings);
        player->RemoveAurasDueToSpell(StunImmunity);
        player->RemoveAurasDueToSpell(Descent);
        // Aura additions can be coalesced away on an immediate touchdown.
        // Explicitly tell observers when the grounded landing finish may play.
        if (player->IsAlive() && IsGrounded(player) && !player->IsInWater()
            && !player->IsMounted() && !player->GetVehicle() && !player->IsInFlight())
            player->HandleEmoteCommand(EMOTE_ONESHOT_LAND);
        player->AddSpellCooldown(Ability, 0, Cooldown, true);
        WorldPacket packet;
        player->BuildCooldownPacket(packet, SPELL_COOLDOWN_FLAG_NONE, Ability, Cooldown);
        player->SendDirectMessage(&packet);
    }

    void Descend(Player* player)
    {
        if (HoverData* data = GetHover(player))
            if (data->state.phase != Phase::Grounded)
            {
                data->state.Descend();
                // Grant safe descent before revoking flight, including at altitude.
                if (player->IsAlive() && !player->HasAura(Descent))
                    player->CastSpell(player, Descent, true);
                player->RemoveAurasDueToSpell(Wings);
                player->RemoveAurasDueToSpell(StunImmunity);
            }
    }

    void EndFlight(Player* player)
    {
        Descend(player);
        if (IsGrounded(player) || !player->IsAlive() || player->IsInWater())
            Land(player);
    }
}

// WHE: the race whose racial skill line teaches Ascended Hover (Aetheria: race 60)
std::uint8_t KyrianHover::Race()
{
    static std::uint8_t const race = WHE::RaceTeaching(Ability);
    return race;
}

void KyrianHover::EndForCharge(Player* player)
{
    EndFlight(player);
}

class kyrian_hover_players : public PlayerScript
{
public:
    kyrian_hover_players() : PlayerScript("kyrian_hover_players",
        {PLAYERHOOK_ON_LOGIN, PLAYERHOOK_ON_UPDATE, PLAYERHOOK_ON_BEFORE_LOGOUT,
            PLAYERHOOK_ON_MAP_CHANGED, PLAYERHOOK_ON_PLAYER_JUST_DIED}) { }

    void OnPlayerLogin(Player* player) override
    {
        if (player->getRace(true) != Race())
            return;

        // WHE: Ascended Hover is learned with the racial skill line

        // A saved wings aura without runtime state indicates an interrupted session.
        // End that activation instead of granting a fresh combat allowance on reconnect.
        if (player->HasAura(Wings) || player->HasAura(Descent))
        {
            HoverData* data = player->CustomData.GetDefault<HoverData>("KyrianHover");
            data->state.phase = Phase::Descending;
            EndFlight(player);
        }
        player->RemoveAurasDueToSpell(StunImmunity);
    }

    void OnPlayerUpdate(Player* player, uint32 elapsed) override
    {
        HoverData* data = GetHover(player);
        if (!data || data->state.phase == Phase::Grounded)
            return;

        if (data->state.phase == Phase::Hovering)
        {
            if (!IsGrounded(player))
                data->leftGround = true;
            bool const combat = player->IsInCombat();
            data->state.Update(elapsed, combat);
            if (!CanHover(player) || !player->HasAura(Wings)
                || player->HasUnitState(UNIT_STATE_STUNNED) || data->state.phase == Phase::Descending
                || (data->leftGround && IsGrounded(player)))
                Descend(player);
            else if (data->showingCombatTimer != combat)
            {
                data->showingCombatTimer = combat;
                if (Aura* aura = player->GetAura(Wings))
                {
                    aura->SetMaxDuration(combat ? int32(CombatBudget) : -1);
                    aura->SetDuration(combat ? int32(data->state.remaining) : -1);
                }
            }
        }

        if (data->state.phase == Phase::Descending
            && (IsGrounded(player) || !player->IsAlive() || player->IsInWater()
                || player->IsMounted() || player->GetVehicle() || player->IsInFlight()))
            Land(player);
    }

    // Preserve the descent aura across an airborne logout/map change. Landing,
    // including after the next login, is what starts the cooldown.
    void OnPlayerBeforeLogout(Player* player) override { EndFlight(player); }
    void OnPlayerMapChanged(Player* player) override { EndFlight(player); }
    void OnPlayerJustDied(Player* player) override { Land(player); }
};

class spell_kyrian_hover : public SpellScript
{
    PrepareSpellScript(spell_kyrian_hover);

    bool Validate(SpellInfo const* /*info*/) override
    {
        return ValidateSpellInfo({Ability, Wings, StunImmunity, Descent});
    }

    SpellCastResult Check()
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player || player->getRace(true) != Race())
            return SPELL_FAILED_SPELL_UNAVAILABLE;

        HoverData* data = GetHover(player);
        if (data && data->state.phase == Phase::Descending)
            return SPELL_FAILED_NOT_READY;
        if (data && data->state.phase == Phase::Hovering)
            return SPELL_CAST_OK;
        if (!CanHover(player) || !IsGrounded(player) || player->HasAuraType(SPELL_AURA_HOVER)
            || player->HasAuraType(SPELL_AURA_FLY))
            return SPELL_FAILED_NOT_HERE;
        return SPELL_CAST_OK;
    }

    void Activate(SpellEffIndex /*index*/)
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player)
            return;

        HoverData* data = player->CustomData.GetDefault<HoverData>("KyrianHover");
        if (data->state.phase == Phase::Hovering)
        {
            Descend(player);
            return;
        }
        if (data->state.phase != Phase::Grounded || !CanHover(player) || !IsGrounded(player))
            return;

        data->state.Start();
        data->showingCombatTimer = false;
        data->leftGround = false;
        player->CastSpell(player, Wings, true);
        if (!player->HasAura(Wings))
        {
            data->state.phase = Phase::Grounded;
            return;
        }
        if (player->IsInCombat())
            player->CastSpell(player, StunImmunity, true);
        player->HandleEmoteCommand(EMOTE_ONESHOT_LIFTOFF);
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_kyrian_hover::Check);
        OnEffectHitTarget += SpellEffectFn(spell_kyrian_hover::Activate, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

class spell_kyrian_hover_wings : public AuraScript
{
    PrepareAuraScript(spell_kyrian_hover_wings);

    void Removed(AuraEffect const* /*effect*/, AuraEffectHandleModes /*mode*/)
    {
        if (Player* player = GetTarget()->ToPlayer())
            if (HoverData* data = GetHover(player))
                if (data->state.phase == Phase::Hovering)
                    Descend(player);
    }

    void Register() override
    {
        AfterEffectRemove += AuraEffectRemoveFn(spell_kyrian_hover_wings::Removed,
            EFFECT_0, SPELL_AURA_FLY, AURA_EFFECT_HANDLE_REAL);
    }
};

class kyrian_hover_stuns : public UnitScript
{
public:
    kyrian_hover_stuns() : UnitScript("kyrian_hover_stuns", true, {UNITHOOK_ON_AURA_APPLY}) { }

    void OnAuraApply(Unit* unit, Aura* aura) override
    {
        if (!aura->GetSpellInfo()->HasAura(SPELL_AURA_MOD_STUN) || !unit->HasUnitState(UNIT_STATE_STUNNED))
            return;

        if (Player* player = unit->ToPlayer())
            Descend(player);
    }
};

void AddSC_kyrian_hover()
{
    new kyrian_hover_players();
    new kyrian_hover_stuns();
    RegisterSpellScript(spell_kyrian_hover);
    RegisterSpellScript(spell_kyrian_hover_wings);
}
