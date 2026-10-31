// Venthyr racials from Aetheria's Kyrian/Venthyr package (https://github.com/Shotboom12/aetheria-server,
// kyrian-venthyr-20261027-1), with WHE's changes marked "WHE:".

#include "Creature.h"
#include "DBCStores.h"
#include "DataMap.h"
#include "ModpakScripts.h"
#include "Player.h"
#include "ObjectMgr.h"
#include "Map.h"
#include "ScriptMgr.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "SpellInfo.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "VenthyrRacials.h"
#include "WorldPacket.h"
#include <algorithm>

namespace
{
    using namespace VenthyrRacials;

    struct HoverData final : DataMap::Base
    {
        HoverState state;
        bool active = false;
        bool combatTimer = false;
    };

    bool NativeTravelBody(Player const* player)
    {
        return player->getRace(true) == Race() && player->IsAlive() && !player->IsMounted()
            && !player->IsInFlight() && !player->GetVehicle() && !player->GetTransport()
            && !player->IsInWater() && !player->IsInDisallowedMountForm()
            && player->GetDisplayId() == player->GetNativeDisplayId();
    }

    bool FlightAllowed(Player* player)
    {
        SpellInfo const* info = sSpellMgr->GetSpellInfo(BatAura);
        return info && player->GetBaseSkillValue(SKILL_RIDING) >= 225 && player->IsOutdoors()
            && !player->GetMap()->IsDungeon() && !player->GetMap()->IsBattlegroundOrArena()
            && info->CheckLocation(player->GetMapId(), player->GetZoneId(), player->GetAreaId(), player) == SPELL_CAST_OK;
    }

    void EndHover(Player* player)
    {
        HoverData* data = player->CustomData.Get<HoverData>("VenthyrHover");
        bool const active = player->HasAura(HoverAura) || (data && data->active);
        if (data)
            data->active = false;
        player->RemoveAurasDueToSpell(HoverAura);
        player->RemoveAurasDueToSpell(Resolve);
        if (!active)
            return;

        player->AddSpellCooldown(Hover, 0, HoverCooldown, true);
        WorldPacket packet;
        player->BuildCooldownPacket(packet, SPELL_COOLDOWN_FLAG_NONE, Hover, HoverCooldown);
        player->SendDirectMessage(&packet);
    }
}

// WHE: the race whose racial skill line teaches Crimson Feast (Aetheria: race 61)
std::uint8_t VenthyrRacials::Race()
{
    static std::uint8_t const race = WHE::RaceTeaching(Feast);
    return race;
}

class venthyr_racial_players : public PlayerScript
{
public:
    venthyr_racial_players() : PlayerScript("venthyr_racial_players",
        {PLAYERHOOK_ON_LOGIN, PLAYERHOOK_ON_UPDATE, PLAYERHOOK_ON_BEFORE_LOGOUT,
            PLAYERHOOK_ON_MAP_CHANGED, PLAYERHOOK_ON_PLAYER_JUST_DIED}) { }

    void OnPlayerLogin(Player* player) override
    {
        // Saved travel state cannot grant a fresh combat timer on reconnect.
        EndHover(player);
        player->RemoveAurasDueToSpell(BatAura);
        player->RemoveAurasDueToSpell(BatSpeed);
        // WHE: the racials are learned with the racial skill line
    }

    void OnPlayerBeforeLogout(Player* player) override
    {
        EndHover(player);
        player->RemoveAurasDueToSpell(BatAura);
        player->RemoveAurasDueToSpell(BatSpeed);
    }

    void OnPlayerMapChanged(Player* player) override { OnPlayerBeforeLogout(player); }
    void OnPlayerJustDied(Player* player) override { OnPlayerBeforeLogout(player); }

    void OnPlayerUpdate(Player* player, uint32 elapsed) override
    {
        HoverData* data = player->CustomData.Get<HoverData>("VenthyrHover");
        if (data && data->active)
        {
            bool const combat = player->IsInCombat();
            if (!NativeTravelBody(player) || !player->HasAura(HoverAura)
                || player->HasUnitState(UNIT_STATE_STUNNED) || !data->state.Update(elapsed, combat))
                EndHover(player);
            else if (combat != data->combatTimer)
            {
                data->combatTimer = combat;
                if (Aura* aura = player->GetAura(HoverAura))
                {
                    aura->SetMaxDuration(combat ? int32(HoverCombatBudget) : -1);
                    aura->SetDuration(combat ? int32(data->state.remaining) : -1);
                }
            }
        }
        if (player->HasAura(BatAura) && (player->getRace(true) != Race() || !player->IsAlive()
            || player->IsInCombat() || player->IsMounted() || player->IsInFlight()
            || player->GetVehicle() || player->GetTransport() || player->IsInWater()
            || player->IsInDisallowedMountForm() || !FlightAllowed(player)))
            player->RemoveAurasDueToSpell(BatAura);
        if (!player->HasAura(BatAura))
            player->RemoveAurasDueToSpell(BatSpeed);
        if (player->HasAura(BatDescent) && (!player->IsAlive() || player->IsInWater()
            || player->IsMounted() || player->IsInFlight() || (!player->IsFlying() && !player->IsFalling()
                && player->GetPositionZ() <= player->GetFloorZ() + 0.25f)))
            player->RemoveAurasDueToSpell(BatDescent);
    }
};

class spell_venthyr_racial : public SpellScript
{
    PrepareSpellScript(spell_venthyr_racial);

    bool Validate(SpellInfo const* /*info*/) override
    {
        // WHE: the bat is the creature Bat Form transforms into (Aetheria: creature 9501110, display 95110)
        SpellInfo const* bat = sSpellMgr->GetSpellInfo(BatAura);
        return ValidateSpellInfo({Feast, HoverAura, Resolve, BatAura, BatSpeed, BatDescent, AnimaHeal})
            && bat && sObjectMgr->GetCreatureTemplate(uint32(bat->Effects[EFFECT_0].MiscValue));
    }

    SpellCastResult Check()
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player || player->getRace(true) != Race())
            return SPELL_FAILED_SPELL_UNAVAILABLE;
        uint32 const id = GetSpellInfo()->Id;
        if (id == Feast || (id == Hover && player->HasAura(HoverAura))
            || (id == Bat && player->HasAura(BatAura)))
            return SPELL_CAST_OK;
        if (!NativeTravelBody(player) || player->HasUnitState(UNIT_STATE_ROOT | UNIT_STATE_STUNNED
            | UNIT_STATE_FLEEING | UNIT_STATE_CONFUSED) || player->IsFlying() || player->IsFalling())
            return SPELL_FAILED_NOT_HERE;
        if (id == Hover && player->HasAuraType(SPELL_AURA_HOVER))
            return SPELL_FAILED_NOT_HERE;
        if (id == Bat && player->IsInCombat())
            return SPELL_FAILED_AFFECTING_COMBAT;
        if (id == Bat && !FlightAllowed(player))
            return SPELL_FAILED_NOT_HERE;
        return SPELL_CAST_OK;
    }

    void Toggle(SpellEffIndex /*index*/)
    {
        Player* player = GetCaster()->ToPlayer();
        if (!player)
            return;
        if (GetSpellInfo()->Id == Hover)
        {
            if (player->HasAura(HoverAura))
            {
                EndHover(player);
                return;
            }
            HoverData* data = player->CustomData.GetDefault<HoverData>("VenthyrHover");
            data->state = HoverState{};
            data->active = true;
            data->combatTimer = player->IsInCombat();
            player->CastSpell(player, HoverAura, true);
            if (!player->HasAura(HoverAura))
            {
                data->active = false;
                return;
            }
            if (player->IsInCombat())
            {
                player->CastSpell(player, Resolve, true);
                player->GetAura(HoverAura)->SetDuration(HoverCombatBudget);
            }
        }
        else
        {
            if (player->HasAura(BatAura))
                player->RemoveAurasDueToSpell(BatAura);
            else
            {
                EndHover(player);
                player->CastSpell(player, BatAura, true);
            }
        }
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_venthyr_racial::Check);
        if (m_scriptSpellId == Hover || m_scriptSpellId == Bat)
            OnEffectHitTarget += SpellEffectFn(spell_venthyr_racial::Toggle, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

class spell_venthyr_crimson_feast : public AuraScript
{
    PrepareAuraScript(spell_venthyr_crimson_feast);

    void Amount(AuraEffect const* /*effect*/, int32& amount, bool& recalculate)
    {
        recalculate = false;
        Unit* caster = GetCaster();
        if (!caster)
            return;
        float const power = std::max(caster->GetTotalAttackPowerValue(BASE_ATTACK),
            caster->GetTotalAttackPowerValue(RANGED_ATTACK));
        int32 spellPower = 0;
        for (SpellSchoolMask school : {SPELL_SCHOOL_MASK_HOLY, SPELL_SCHOOL_MASK_FIRE,
            SPELL_SCHOOL_MASK_NATURE, SPELL_SCHOOL_MASK_FROST, SPELL_SCHOOL_MASK_SHADOW, SPELL_SCHOOL_MASK_ARCANE})
            spellPower = std::max(spellPower, caster->SpellBaseDamageBonusDone(school));
        amount = std::max<int32>(1, int32((FeastDamagePerLevel * caster->GetLevel()
            + FeastStatCoefficient * std::max(power, float(spellPower))) / FeastTicks));
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_venthyr_crimson_feast::Amount,
            EFFECT_0, SPELL_AURA_PERIODIC_LEECH);
    }
};

class spell_venthyr_anima_hunger : public AuraScript
{
    PrepareAuraScript(spell_venthyr_anima_hunger);

    bool Validate(SpellInfo const* /*info*/) override { return ValidateSpellInfo({AnimaHeal}); }

    bool Check(ProcEventInfo& eventInfo)
    {
        Player* player = GetTarget()->ToPlayer();
        Unit* victim = eventInfo.GetActionTarget();
        return player && player->getRace(true) == Race() && player->IsAlive() && victim
            && eventInfo.GetActor() == player && victim != player && player->isHonorOrXPTarget(victim);
    }

    void Heal(AuraEffect const* effect, ProcEventInfo& /*eventInfo*/)
    {
        PreventDefaultAction();
        GetTarget()->CastSpell(GetTarget(), AnimaHeal, true, nullptr, effect);
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_venthyr_anima_hunger::Check);
        OnEffectProc += AuraEffectProcFn(spell_venthyr_anima_hunger::Heal, EFFECT_0, SPELL_AURA_DUMMY);
    }
};

class spell_venthyr_hover_height : public AuraScript
{
    PrepareAuraScript(spell_venthyr_hover_height);
    float _previousHeight = 0.0f;

    void Apply(AuraEffect const* /*effect*/, AuraEffectHandleModes /*mode*/)
    {
        _previousHeight = GetTarget()->GetFloatValue(UNIT_FIELD_HOVERHEIGHT);
        GetTarget()->SetFloatValue(UNIT_FIELD_HOVERHEIGHT, HoverHeight);
    }

    void Remove(AuraEffect const* /*effect*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->SetFloatValue(UNIT_FIELD_HOVERHEIGHT, _previousHeight);
        if (m_scriptSpellId == HoverAura)
            if (Player* player = GetTarget()->ToPlayer())
                if (HoverData* data = player->CustomData.Get<HoverData>("VenthyrHover"))
                    if (data->active)
                        EndHover(player);
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_venthyr_hover_height::Apply,
            EFFECT_ALL, SPELL_AURA_HOVER, AURA_EFFECT_HANDLE_REAL);
        AfterEffectRemove += AuraEffectRemoveFn(spell_venthyr_hover_height::Remove,
            EFFECT_ALL, SPELL_AURA_HOVER, AURA_EFFECT_HANDLE_REAL);
    }
};

class spell_venthyr_bat_form : public AuraScript
{
    PrepareAuraScript(spell_venthyr_bat_form);

    bool Validate(SpellInfo const* /*info*/) override { return ValidateSpellInfo({BatSpeed, BatDescent}); }

    void Apply(AuraEffect const* /*effect*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->CastSpell(GetTarget(), BatSpeed, true);
        GetTarget()->RemoveAurasDueToSpell(BatDescent);
    }

    void BeforeRemove(AuraEffect const* /*effect*/, AuraEffectHandleModes /*mode*/)
    {
        // Apply protection before the native fly effect is removed. Manual
        // cancellation, combat, map changes and dispels all use this path.
        Player* player = GetTarget()->ToPlayer();
        if (player && player->IsAlive() && !player->IsInWater()
            && (player->IsFlying() || player->IsFalling()
                || player->GetPositionZ() > player->GetFloorZ() + 0.5f))
            player->CastSpell(player, BatDescent, true);
    }

    void Remove(AuraEffect const* /*effect*/, AuraEffectHandleModes /*mode*/)
    {
        GetTarget()->RemoveAurasDueToSpell(BatSpeed);
    }

    void Register() override
    {
        AfterEffectApply += AuraEffectApplyFn(spell_venthyr_bat_form::Apply,
            EFFECT_2, SPELL_AURA_FLY, AURA_EFFECT_HANDLE_REAL);
        OnEffectRemove += AuraEffectRemoveFn(spell_venthyr_bat_form::BeforeRemove,
            EFFECT_2, SPELL_AURA_FLY, AURA_EFFECT_HANDLE_REAL);
        AfterEffectRemove += AuraEffectRemoveFn(spell_venthyr_bat_form::Remove,
            EFFECT_2, SPELL_AURA_FLY, AURA_EFFECT_HANDLE_REAL);
    }
};

void AddSC_venthyr_racials()
{
    new venthyr_racial_players();
    RegisterSpellScript(spell_venthyr_racial);
    RegisterSpellScript(spell_venthyr_crimson_feast);
    RegisterSpellScript(spell_venthyr_anima_hunger);
    RegisterSpellScript(spell_venthyr_hover_height);
    RegisterSpellScript(spell_venthyr_bat_form);
}
