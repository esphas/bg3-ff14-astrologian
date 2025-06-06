
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
    ["d903677e-f24b-48ec-ab20-98dcc116a371"] = { -- 5e Spells
        { -- Cantrips
        }, { -- Level 1
        }, { -- Level 2
        }, { -- Level 3
        }, { -- Level 4
        }, { -- Level 5
        }, { -- Level 6
        }, { -- Level 7
        }, { -- Level 8
        }, { -- Level 9
        }
    }
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
            _P(list)
        end
        Ext.Types.Unserialize(data, list)
    end
end

Ext.Events.StatsLoaded:Subscribe(AstrologySpellLists)
