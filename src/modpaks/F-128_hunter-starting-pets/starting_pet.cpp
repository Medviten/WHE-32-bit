// Hunters start with a pet and the spells to use it, as in Cataclysm (modpak F-128). The way the pet is created comes
// from Gozzim's mod-starting-pet (https://github.com/Gozzim/mod-starting-pet, AGPL).

#include "Config.h"
#include "DatabaseEnv.h"
#include "Map.h"
#include "ObjectMgr.h"
#include "Pet.h"
#include "Player.h"
#include "RaceMgr.h"
#include "ScriptMgr.h"
#include <map>

namespace
{
    enum StartingPetValues : uint32
    {
        SpellTameBeastEffect = 13481,
        SpellCallPet         = 883,
        SpellRevivePet       = 982,
        SpellDismissPet      = 2641,
        SpellFeedPet         = 6991,
        FullHappiness        = 1048000
    };

    // The creature a race's hunters start with: the race's own row, else its kin's, else its home race's. 0 for none.
    uint32 GetStartingPet(uint8 race)
    {
        std::map<uint8, uint32> pets;
        if (QueryResult result = WorldDatabase.Query("SELECT race, creature_entry FROM player_starting_pet"))
        {
            do
            {
                Field* fields = result->Fetch();
                pets[fields[0].Get<uint8>()] = fields[1].Get<uint32>();
            } while (result->NextRow());
        }

        // Race modpaks add their rows whether or not F-128 is in the manifest; only F-128 adds the stock races
        if (!pets.count(RACE_HUMAN))
            return 0;

        for (uint8 candidate : { race, sRaceMgr->GetKinRace(race), sRaceMgr->GetHomeRace(race) })
        {
            auto const itr = pets.find(candidate);
            if (itr != pets.end())
                return itr->second;
        }

        return 0;
    }

    void GiveStartingPet(Player* player, uint32 entry)
    {
        // Not exotic: Pet::LoadPetFromDB refuses those for hunters without Beast Mastery, so the pet could never be called
        CreatureTemplate const* creatureTemplate = sObjectMgr->GetCreatureTemplate(entry);
        if (!creatureTemplate || !creatureTemplate->IsTameable(false))
        {
            LOG_ERROR("module", "player_starting_pet: creature {} is not a tameable, non-exotic beast.", entry);
            return;
        }

        if (player->IsExistPet())
            return;

        Pet* pet = player->CreateTamedPetFrom(entry, SpellTameBeastEffect);
        if (!pet)
            return;

        pet->SetPower(POWER_HAPPINESS, FullHappiness);
        pet->GetMap()->AddToMap(pet->ToCreature());
        player->SetMinion(pet, true);
        pet->InitTalentForLevel();
        pet->SavePetToDB(PET_SAVE_AS_CURRENT);
        player->PetSpellInitialize();
    }
}

// Only new characters are touched. A pet is an ordinary saved pet from then on, so turning this off later changes nothing
// for hunters who already have one.
class player_starting_pet : public PlayerScript
{
public:
    player_starting_pet() : PlayerScript("player_starting_pet") { }

    void OnPlayerFirstLogin(Player* player) override
    {
        if (player->getClass() != CLASS_HUNTER || !sConfigMgr->GetOption<bool>("Worgoblin.StartingPet.Enable", true))
            return;

        uint32 const entry = GetStartingPet(player->getRace(true));
        if (!entry)
            return;

        for (uint32 spell : { SpellCallPet, SpellRevivePet, SpellDismissPet, SpellFeedPet })
            player->learnSpell(spell);

        GiveStartingPet(player, entry);
    }
};

void AddSC_starting_pet()
{
    new player_starting_pet();
}
