
local debug = true

Ext.Osiris.RegisterListener("StatusApplied", 4, "after", function(object, status, causee, _storyActionID)
    if status ~= "EK_FF14_NOCTURNAL_WARD" then return end
    local duration = Osi.GetStatusCurrentLifetime(object, status) / 6.0
    local d = duration // 100;
    if debug then _P("NocturnalWard: " .. duration .. " // 100 -> " .. d) end
    if d > 0 then
        Osi.ApplyStatus(object, "EK_FF14_NOCTURNAL_WARD_TECHNICAL_100", d * 6.0, 1, causee)
    end
    d = duration % 100 // 10
    if debug then _P("NocturnalWard: " .. duration .. " % 100 // 10 -> " .. d) end
    if d > 0 then
        Osi.ApplyStatus(object, "EK_FF14_NOCTURNAL_WARD_TECHNICAL_10", d * 6.0, 1, causee)
    end
    d = duration % 10
    if debug then _P("NocturnalWard: " .. duration .. " % 10 -> " .. d) end
    if d > 0 then
        Osi.ApplyStatus(object, "EK_FF14_NOCTURNAL_WARD_TECHNICAL_1", d * 6.0, 1, causee)
    end
end)
