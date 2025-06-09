
local debug = false

local malefics = { "MaleficII", "MaleficIII", "MaleficIV", "FallMalefic" }
local MALEFICS = { "MALEFIC_II", "MALEFIC_III", "MALEFIC_IV", "FALL_MALEFIC" }

local function isMaleficSpell(spell)
    for _, malefic in ipairs(malefics) do
        local prefix = "Target_EK_FF14_" .. malefic
        if string.sub(spell, 1, #prefix) == prefix then
            return true
        end
    end
    return false
end

local function isMaleficTarget(status)
    for _, malefic in ipairs(MALEFICS) do
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
    for _, malefic in ipairs(MALEFICS) do
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
    { id =  4, name = "Acid" },
    { id =  5, name = "Cold" },
    { id =  6, name = "Fire" },
    { id =  7, name = "Lightning" },
    { id =  8, name = "Poison" },
    { id =  9, name = "Thunder" },
    { id = 10, name = "Radiant" },
    { id = 11, name = "Necrotic" },
    { id = 12, name = "Force" },
    { id = 13, name = "Psychic" },
}

Ext.Osiris.RegisterListener("StartedPreviewingSpell", 4, "after", function(caster, spell, _isMostPowerful, _hasMultipleLevels)
    if not isMaleficSpell(spell) then return end
    for _, malefic in ipairs(MALEFICS) do
        local randomResult = maleficDamageTypes[Osi.Random(#maleficDamageTypes)+1]
        local damageType = "EK_FF14_" .. malefic .. "_DAMAGE_TYPE"
        if debug then _P(malefic .. ": " .. randomResult.id .. " - " .. randomResult.name) end
        Osi.ApplyStatus(caster, damageType, randomResult.id * 6.0, 1, caster)
    end
end)
