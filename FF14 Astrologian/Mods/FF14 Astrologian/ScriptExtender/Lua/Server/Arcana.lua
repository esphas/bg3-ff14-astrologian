
local debug = false

local arcanas = {"Balance", "Bole", "Arrow", "Ewer", "Spear", "Spire"}
local royalRoads = {"POTENCY", "POTENCY", "DURATION", "AREA", "DURATION", "AREA"}
local minorArcanas = {"LORD", "LADY", "LORD", "LADY", "LORD", "LADY"}

-- 抽卡
local function DrawArcana(entity, redraw)
    local arcanaIndex = Osi.Random(6)
    if redraw then
        local arcanaLastIndex = Osi.GetVarInteger(entity, "EK_FF14_ArcanaDraw")
        if arcanaLastIndex ~= nil then
            while arcanaIndex == arcanaLastIndex do
                arcanaIndex = Osi.Random(6)
            end
        end
    end
    Osi.SetVarInteger(entity, "EK_FF14_ArcanaDraw", arcanaIndex)
    local arcana = arcanas[arcanaIndex+1]
    local statusArcanaDraw = "EK_FF14_ARCANA_SLOT_DRAW_THE_" .. arcana:upper()
    if debug then _P("DrawArcana: " .. Osi.IntegerToString(arcanaIndex)  .. "|" .. statusArcanaDraw) end
    Osi.ApplyStatus(entity, statusArcanaDraw, -1, 1, entity)
end

-- 抽暂留卡
--   一般而言，暂留卡应该是通过暂留技能将抽取的奥秘卡转换而来的
--   该函数仅作为工具方法，用于在特定情况下直接补充暂留卡
local function DrawSpread(entity)
    local arcanaIndex = Osi.Random(6)
    local arcana = arcanas[arcanaIndex+1]
    local statusArcanaSpread = "EK_FF14_ARCANA_SLOT_SPREAD_THE_" .. arcana:upper()
    if debug then _P("DrawSpread: " .. Osi.IntegerToString(arcanaIndex)  .. "|" .. statusArcanaSpread) end
    Osi.ApplyStatus(entity, statusArcanaSpread, -1, 1, entity)
end

-- 抽小奥秘卡
local function DrawMinorArcana(entity)
    local minorArcanaIndex = Osi.Random(6)
    local minorArcana = minorArcanas[minorArcanaIndex+1]
    local statusMinorArcana = "EK_FF14_ARCANA_SLOT_MINOR_ARCANA_" .. minorArcana:upper() .. "_OF_CROWNS"
    if debug then _P("DrawMinorArcana_6_0: " .. Osi.IntegerToString(minorArcanaIndex)  .. "|" .. statusMinorArcana) end
    Osi.ApplyStatus(entity, statusMinorArcana, -1, 1, entity)
end

-- 袖内抽卡
local function SleeveDraw(entity)
    if Osi.HasPassive(entity, "EK_FF14_ArcanaDraw") == 1 and Osi.HasPassive(entity, "EK_FF14_ArcanaSlotDraw") == 0 then
        if debug then _P("SleeveDraw(Draw) ->") end
        DrawArcana(entity, false)
    end
    if Osi.HasPassive(entity, "EK_FF14_ArcanaRoyalRoad") == 1 and Osi.HasPassive(entity, "EK_FF14_ArcanaSlotRoyalRoad") == 0 then
        local royalRoadIndex = Osi.Random(6)
        local royalRoad = royalRoads[royalRoadIndex+1]
        local statusRoyalRoad = "EK_FF14_ARCANA_SLOT_ROYAL_ROAD_" .. royalRoad:upper()
        if debug then _P("SleeveDraw(RoyalRoad): " .. Osi.IntegerToString(royalRoadIndex)  .. "|" .. statusRoyalRoad) end
        Osi.ApplyStatus(entity, statusRoyalRoad, -1, 1, entity)
    end
    if Osi.HasPassive(entity, "EK_FF14_ArcanaSpread") == 1 and Osi.HasPassive(entity, "EK_FF14_ArcanaSlotSpread") == 0 then
        local arcanaIndex = Osi.Random(6)
        local arcana = arcanas[arcanaIndex+1]
        local statusArcanaSpread = "EK_FF14_ARCANA_SLOT_SPREAD_THE_" .. arcana:upper()
        if debug then _P("SleeveDraw(Spread): " .. Osi.IntegerToString(arcanaIndex)  .. "|" .. statusArcanaSpread) end
        Osi.ApplyStatus(entity, statusArcanaSpread, -1, 1, entity)
    end
    if (Osi.HasPassive(entity, "EK_FF14_ArcanaMinorArcana_4_0") == 1 or Osi.HasPassive(entity, "EK_FF14_ArcanaMinorArcana_6_0") == 1) and Osi.HasPassive(entity, "EK_FF14_ArcanaSlotMinorArcana") == 0 then
        if debug then _P("SleeveDraw(Draw) ->") end
        DrawMinorArcana(entity)
    end
end

-- 天宫图补充手卡
local function HoroscopeDraw(entity)
    if Osi.HasPassive(entity, "EK_FF14_ArcanaDraw") == 1 and Osi.HasPassive(entity, "EK_FF14_ArcanaSlotDraw") == 0 then
        if debug then _P("HoroscopeDraw(Draw) ->") end
        DrawArcana(entity, false)
    end
    if Osi.HasPassive(entity, "EK_FF14_ArcanaSpread") == 1 and Osi.HasPassive(entity, "EK_FF14_ArcanaSlotSpread") == 0 then
        if debug then _P("HoroscopeDraw(Spread) ->") end
        DrawSpread(entity)
    end
end

Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, causee, _)
    if status == "EK_FF14_DRAW_TECHNICAL" then
        DrawArcana(character, false)
    elseif status == "EK_FF14_REDRAW_TECHNICAL" then
        DrawArcana(character, true)
    elseif status == "EK_FF14_MINOR_ARCANA_TECHNICAL" then
        DrawMinorArcana(character)
    elseif status == "EK_FF14_SLEEVE_DRAW_TECHNICAL" then
        SleeveDraw(character)
    elseif status == "EK_FF14_HOROSCOPE_TECHNICAL" then
        HoroscopeDraw(character)
    end
end)
