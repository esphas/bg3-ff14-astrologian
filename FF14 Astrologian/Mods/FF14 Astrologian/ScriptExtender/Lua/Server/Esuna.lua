
local debug = true

Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function (character, status, _, _)
    local groups = {};
    if status == "EK_FF14_ESUNA_SCRIPTING1" then
        groups = { "SG_Poisoned", "SG_Disease", "SG_Paralyzed", "SG_Blinded" };
    elseif status == "EK_FF14_ESUNA_SCRIPTING2" then
        groups = { "SG_Poisoned", "SG_Disease", "SG_Paralyzed", "SG_Blinded", "SG_Cursed" };
    elseif status == "EK_FF14_ESUNA_SCRIPTING3" then
        groups = { "SG_Poisoned", "SG_Disease", "SG_Paralyzed", "SG_Blinded", "SG_Charmed", "SG_Petrified", "SG_Cursed", "SG_Stunned" };
    end
    if #groups <= 0 then return end
    if debug then _P("Esuna: cures 1 of " .. table.concat(groups, ", ")) end
    local availableGroup = {}
    for _, group in ipairs(groups) do
        if Osi.HasActiveStatusWithGroup(character, group) then
            table.insert(availableGroup, group)
        end
    end
    if #availableGroup <= 0 then return end
    if debug then _P("Esuna: found " .. table.concat(availableGroup, ", ")) end
    local pickedGroup = availableGroup[Osi.Random(#availableGroup)+1]
    if debug then _P("Esuna: cures " .. pickedGroup) end
    Osi.RemoveStatusesWithGroup(character, pickedGroup)
end)
