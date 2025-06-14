
local debug = false

local AstSpellLists = {
    "72e4e1af-22cf-4054-b1bb-16c8591872ba", -- Cantrips
    "94315fac-21b3-41fb-b2b9-182706f353f5", -- Level 1
    "42448d75-a5a1-4f1c-89fe-79aec73ba9ac", -- Level 2
    "b08bb71b-3b07-482d-8d39-6a1fec98813a", -- Level 3
    "1b4a10f7-4574-4964-82c9-6228f28e362b", -- Level 4
    "f95550e1-3a1d-4f3f-b722-7f408d0d4664", -- Level 5
    "a4fc4454-d9cf-47bc-81be-255a85b0dc17", -- Level 6
    "f50551a9-b7d6-4802-99fb-652c9c1fd2ef", -- Level 7
    "d7da2409-1e59-4287-865f-3fb2be0d919a", -- Level 8
    "0b0428ed-ef15-49f6-9326-4aabe9c7e9e1", -- Level 9
    "f6ef406f-816a-4361-acb9-d5b86a31023c", -- Full List
}

local ModSpells = {
    ["fb5f528d-4d48-4bf2-a668-2274d3cfba96"] = { -- 5e Spells
        { -- Cantrips
            "Shout_Thunderclap",
            "Target_ControlFlames",
            "Target_CreateBonfire",
            "Target_Frostbite",
            "Target_GreenFlameBlade",
            "Target_Gust",
            "Target_Infestation",
            "Target_MagicStone",
            "Target_MoldEarth",
            "Target_Prestidigitation",
            "Target_PrimalSavagery",
            "Target_ShapeWater",
        }, { -- Level 1
            "Shout_DetectMagic",
            "Target_UnseenServant",
            "Shout_AbsorbElements",
        }, { -- Level 2
            "Shout_BorrowedKnowledge",
            "Shout_KineticJaunt",
            "Target_NathairsMischief",
            "Shout_WardingWind",
            "Target_ZoneofTruth",
            "Target_ContinualFlame",
            "Target_DustDevil",
            "Target_HealingSpirit",
            "Target_WitherAndBloom",
        }, { -- Level 3
            "Target_Antagonize",
            "Target_Catnap",
            "Target_EnemiesAbound",
            "Target_IntellectFortress",
            "Target_MotivationalSpeech",
            "Target_Nondetection",
            "Target_FlameArrows",
            "Shout_WaterWalk",
        }, { -- Level 4
            "Projectile_RaulothimsPsychicLance",
        }, { -- Level 5
            "Target_Mislead",
            "Target_SkillEmpowerment",
            "Target_SynapticStatic",
            "Shout_AntilifeShell",
            "Target_Maelstrom"
        }, { -- Level 6
            "Target_TrueSeeing",
        }, { -- Level 7
            "Target_Regenerate",
        }, { -- Level 8
            "Target_DominateMonster",
            "Target_Feeblemind",
            "Target_MindBlank",
        }, { -- Level 9
            "Target_Foresight",
            "Target_PowerWordHeal",
            "Target_PowerWordKill",
        }
    },
    ["84958e84-fd62-474f-bd1f-cbabc132c4b3"] = { -- Homebrew Spells
        { -- Cantrips
            "Projectile_IllusionaryDart",
            "Projectile_RockSlam",
            "Shout_FistsOfFire",
            "Shout_IceWeapon",
            "Shout_StoneForming",
            "Target_Burn",
            "Target_DecayingTouch",
            "Target_Freeze",
            "Target_Impact",
            "Target_Sparking_Blade",
            "Target_ThunderNote",
            "Target_WaterBullet",
        }, { -- Level 1
            "Projectile_GaleBolt",
            "Projectile_WaterBlast",
            "Shout_LightningTendril",
            "Target_BladeMirage",
            "Target_ThunderPunch",
            "Zone_ArcticBreath",
            "Zone_CrashingWave",
        }, { -- Level 2
	        "Projectile_Crackle",
        }, { -- Level 3
            "Target_FireCyclone",
            "Zone_VortexBlast",
        }, { -- Level 4
	        "Shout_OrbitalStones",
        }, { -- Level 5
        	"Projectile_SkyBurst",
        }, { -- Level 6
        }, { -- Level 7
        }, { -- Level 8
        }, { -- Level 9
        }
    },
    ["1d81bac8-2e91-45df-bc3c-5aa1cd2ee201"] = { -- 2e Spells
        { -- Cantrips
            "Projectile_PhaseBolt",
            "Shout_WarpStep",
        }, { -- Level 1
            "Projectile_FriendFetch",
            "Projectile_SnowBall",
            "Target_AntHaul",
            "Target_HydraulicPush",
            "Wall_WallOfShrubs",
            "Zone_BuffettingWinds",
            "Zone_ChillingSpray",
        }, { -- Level 2
            "Shout_MimicUndead",
            "Target_FeastOfAshes",
            "Target_FinalSacrifice",
            "Target_SoundBurst",
            "Target_TelekineticManeuver",
            "Target_WarriorRegret",
        }, { -- Level 3
            "Shout_FocusingHum",
            "Target_AgonzingDespair",
            "Target_GhostlyWeapon",
            "Projectile_MoonlightRay",
            "Projectile_SearingLight",
        }, { -- Level 4
            "Rush_MercurialStride",
            "Shout_CloakOfLight",
            "Shout_GirzanjesMarch",
            "Shout_VitalBeacon",
            "Target_BloodSprayCurse",
            "Zone_HydraulicTorrent",
        }, { -- Level 5
            "Shout_PlantForm",
            "Shout_RepellingPulse",
            "Shout_SynapticPulse",
            "Target_BloodFeast",
            "Target_ForcefulHand",
            "Target_LightningStorm",
            "Target_ScouringPulse",
            "Target_StormBurst",
            "Zone_BlazingFissure",
            "Zone_CrushingDespair",
        }, { -- Level 6
            "Target_ElementalConfluence",
        }, { -- Level 7
            "Target_EclipseBurst",
            "Target_MoonBurst",
        }, { -- Level 8
            "Projectile_PolarRay",
            "Target_HypnoticTerror",
            "Target_SummonIrii",
        }, { -- Level 9
        }
    },
    ["9deeb371-f01e-41b4-b20e-c5eee0751b12"] = { -- Valkrana Spellbook
        { -- Cantrips
        }, { -- Level 1
            "Projectile_ValkranaShadowfellSalvo",
            "Target_Valkrana_SkeletalLemmings",
        }, { -- Level 2
            "Target_ValkranaBoneLiquefaction",
            "Target_ValkranaCorpseGrenade",
            "Target_ValkranaSoulSecret",
        }, { -- Level 3
            "Target_ValkranaImpartUndeath",
            "Target_ValkranaSkeleport",
        }, { -- Level 4
            "Shout_ValkranaNegativeEnergyField",
            "Target_ValkranaUnsealSoul",
        }, { -- Level 5
            "Target_ValkranaDreadSkeleton",
            "Target_ValkranaRiggedGraveyard",
        }, { -- Level 6
            "Shout_ValkranaBoneEmperor",
            "Zone_ValkranaArcVivisector",
        }, { -- Level 7
        }, { -- Level 8
        }, { -- Level 9
        }
    },
}

local function Includes(list, element)
    for _, v in ipairs(list) do
        if v == element then return true end
    end
    return false
end

local function AppendList(list1, list2)
    for _, v in ipairs(list2) do
        if not Includes(list1, v) then
            table.insert(list1, v)
        end
    end
end

local function AddModSpells(spellLists, modUuid, modSpells)
    if not Ext.Mod.IsModLoaded(modUuid) then return end
    for level = 1, 10 do
        local list = spellLists[level]
        local spells = modSpells[level]
        AppendList(list, spells)
    end
end

local function AstrologySpellLists()
    local spellLists = {}
    for _, uuid in ipairs(AstSpellLists) do
        local data = Ext.StaticData.Get(uuid, "SpellList").Spells
        local list = Ext.Types.Serialize(data)
        table.insert(spellLists, list)
    end
    -- mods
    for modUuid, modSpells in pairs(ModSpells) do
        AddModSpells(spellLists, modUuid, modSpells)
    end
    -- merge
    for i = 3, 11 do
        AppendList(spellLists[i], spellLists[i-1])
    end
    -- set
    for i, uuid in ipairs(AstSpellLists) do
        local data = Ext.StaticData.Get(uuid, "SpellList").Spells
        local list = spellLists[i]
        if debug then
            _P("AstrologySpellLists: " .. i .. "|" .. uuid)
            for _, v in ipairs(list) do
                _P("  " .. v)
            end
        end
        Ext.Types.Unserialize(data, list)
    end
end

Ext.Events.StatsLoaded:Subscribe(AstrologySpellLists)
