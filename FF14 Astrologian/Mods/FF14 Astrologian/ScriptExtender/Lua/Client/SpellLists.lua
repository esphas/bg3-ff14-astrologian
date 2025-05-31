
local debug = false

local FullListUuid = "f6ef406f-816a-4361-acb9-d5b86a31023c"
local SpellLists = {
    -- Cantrips
    {
        Uuid = "72e4e1af-22cf-4054-b1bb-16c8591872ba",
        Base = {
            "61f79a30-2cac-4a7a-b5fe-50c89d307dd6", -- Bard 0
            "b8faf12f-ca42-45c0-84f8-6951b526182a", -- Druid 0
        },
        Mods = {},
    },
    -- Level 1
    {
        Uuid = "94315fac-21b3-41fb-b2b9-182706f353f5",
        Base = {
            "dcb45167-86bd-4297-9b9d-c295be51af5b", -- Bard 1
            "2cd54137-2fe5-4100-aad3-df64735a8145", -- Druid 1
        },
        Mods = {},
    },
    -- Level 2
    {
        Uuid = "42448d75-a5a1-4f1c-89fe-79aec73ba9ac",
        Base = {
            "7ea8f476-97a1-4256-8f10-afa76a845cce", -- Bard 2
            "92126d17-7f1a-41d2-ae6c-a8d254d2b135", -- Druid 2
        },
        Mods = {},
    },
    -- Level 3
    {
        Uuid = "b08bb71b-3b07-482d-8d39-6a1fec98813a",
        Base = {
            "c213ca01-3767-457b-a5c8-fd4c1dd656e2", -- Bard 3
            "3156daf5-9266-41d0-b52c-5bc559a98654", -- Druid 3
        },
        Mods = {},
    },
    -- Level 4
    {
        Uuid = "1b4a10f7-4574-4964-82c9-6228f28e362b",
        Base = {
            "75e04c40-be8f-40a5-9acc-0b5d59d5f3a6", -- Bard 4
            "09c326c9-672c-4198-a4c0-6f07323bde27", -- Druid 4
        },
        Mods = {},
    },
    -- Level 5
    {
        Uuid = "f95550e1-3a1d-4f3f-b722-7f408d0d4664",
        Base = {
            "bd71fffb-e4d2-4233-9a31-13d43fba36e3", -- Bard 5
            "ff711c12-b59f-4fde-b9ea-6e5c38ec8f23", -- Druid 5
        },
        Mods = {},
    },
    -- Level 6
    {
        Uuid = "a4fc4454-d9cf-47bc-81be-255a85b0dc17",
        Base = {
            "586a8796-34f4-41f5-a3ef-95738561d55d", -- Bard 6
            "6a4e2167-55f3-4ba8-900f-14666b293e93", -- Druid 6
        },
        Mods = {},
    },
    -- Level 7
    {
        Uuid = "f50551a9-b7d6-4802-99fb-652c9c1fd2ef",
        Base = {
        },
        Mods = {
            ["d903677e-f24b-48ec-ab20-98dcc116a371"] = { -- 5e Spells
                "f923e058-b1d9-4b02-98ef-9daaa82a71b6", -- Bard 7
                "29c9cf78-3bd6-47dc-88b4-2dce54710124", -- Druid 7
            },
        },
    },
    -- Level 8
    {
        Uuid = "d7da2409-1e59-4287-865f-3fb2be0d919a",
        Base = {
        },
        Mods = {
            ["d903677e-f24b-48ec-ab20-98dcc116a371"] = { -- 5e Spells
                "073c09e5-ccb9-4153-a210-001225a30cbb", -- Bard 8
                "bdff0cba-d631-4b83-9562-63c0187df380", -- Druid 8
            },
        },
    },
    -- Level 9
    {
        Uuid = "0b0428ed-ef15-49f6-9326-4aabe9c7e9e1",
        Base = {
        },
        Mods = {
            ["d903677e-f24b-48ec-ab20-98dcc116a371"] = { -- 5e Spells
                "2bbd99d0-21b4-41cc-836e-e386a96fc8e6", -- Bard 9
                "9e388f0f-7432-4f29-bfe5-5358ebde4491", -- Druid 9
            },
        },
    },
}

local function Includes(list, element)
    for _, v in ipairs(list) do
        if v == element then
            return true
        end
    end
    return false
end

local function AddList(list, uuidList)
    for _, uuid in ipairs(uuidList) do
        local data = Ext.StaticData.Get(uuid, "SpellList").Spells
        local source = Ext.Types.Serialize(data)
        for _, v in ipairs(source) do
            if not Includes(list, v) then
                table.insert(list, v)
            end
        end
    end
end

local function SetSpellList(uuid, list)
    local data = Ext.StaticData.Get(uuid, "SpellList").Spells
    Ext.Types.Unserialize(data, list)
end

local function AstrologySpellLists()
    -- Cantrips
    local cantripList = {}
    local cantripDef = SpellLists[1]
    AddList(cantripList, cantripDef.Base)
    for modUuid, mod in pairs(cantripDef.Mods) do
        if Ext.Mod.IsModLoaded(modUuid) then
            AddList(cantripList, mod)
        end
    end
    SetSpellList(cantripDef.Uuid, cantripList)
    -- Spells
    local spellList = {}
    for i = 2, 10 do
        local spellDef = SpellLists[i]
        AddList(spellList, spellDef.Base)
        for modUuid, mod in pairs(spellDef.Mods) do
            if Ext.Mod.IsModLoaded(modUuid) then
                AddList(spellList, mod)
            end
        end
        local clone = {}
        for _, v in ipairs(spellList) do
            table.insert(clone, v)
        end
        SetSpellList(spellDef.Uuid, clone)
    end
    -- Full List
    local fullList = {}
    for _, v in ipairs(cantripList) do
        table.insert(fullList, v)
    end
    for _, v in ipairs(spellList) do
        table.insert(fullList, v)
    end
    SetSpellList(FullListUuid, fullList)
end

Ext.Events.StatsLoaded:Subscribe(AstrologySpellLists)
