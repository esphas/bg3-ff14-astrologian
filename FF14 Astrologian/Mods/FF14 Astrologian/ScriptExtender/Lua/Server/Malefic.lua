
local debug = false

local malefics = { "MALEFIC_II", "MALEFIC_III", "MALEFIC_IV", "FALL_MALEFIC" }
local function isMaleficTarget(status)
    for _, malefic in ipairs(malefics) do
        local prefix = "EK_FF14_" .. malefic .. "_TARGET"
        if string.sub(status, 1, #prefix) == prefix then
            return {
                malefic = malefic,
                damageType = "EK_FF14_" .. malefic .. "_DAMAGE_TYPE",
                damageDealer = "EK_FF14_" .. malefic .. string.sub(status,-3),
            }
        end
    end
    return false
end
local function isMaleficDamageDealer(status)
    for _, malefic in ipairs(malefics) do
        if status == "EK_FF14_" .. malefic .. "_DAMAGE_DEALER" then
            return malefic
        end
    end
    return false
end

local maleficDamageTypes = {
    { id =  1, name = "Bludgeoning" },
    { id =  2, name = "Piercing" },
    { id =  3, name = "Slashing" },
    { id =  4, name = "Cold" },
    { id =  5, name = "Fire" },
    { id =  6, name = "Lightning" },
    { id =  7, name = "Thunder" },
    { id =  8, name = "Acid" },
    { id =  9, name = "Poison" },
    { id = 10, name = "Radiant" },
    { id = 11, name = "Necrotic" },
    { id = 12, name = "Force" },
    { id = 13, name = "Psychic" },
}

Ext.Osiris.RegisterListener("StatusApplied", 4, "before", function(target, status, causee, _)
    local malefic = isMaleficTarget(status)
    if not malefic then return end
    if debug then _P(status .. " : from " .. causee .. " to " .. target) end
    local damageType = maleficDamageTypes[Osi.Random(#maleficDamageTypes)+1]
    if debug then _P(malefic.damageType .. ": " .. damageType.id .. " - " .. damageType.name) end
    Osi.SetVarFixedString(target, malefic.malefic, malefic.damageDealer);
    Osi.ApplyStatus(target, malefic.damageType, damageType.id * 6.0, 1, causee)
end)

Ext.Osiris.RegisterListener("StatusRemoved", 4, "before", function (target, status, causee)
    local malefic = isMaleficDamageDealer(status)
    if not malefic then return end
    local damageDealer = Osi.GetVarFixedString(target, malefic)
    local prefix = "EK_FF14_" .. malefic
    if string.sub(damageDealer, 1, #prefix) ~= prefix then return end
    Osi.ApplyStatus(target, damageDealer, 6.0, 1, causee)
end)
