local spawnedEntities = 0

-- Watch for blacklisted functions & memory signatures (including YARA-style)
CreateThread(function()
    Wait(5000)
    for _, funcName in pairs(Config.BlacklistedFunctions) do
        local fn = _G[funcName] or rawget(_G, funcName)
        if type(fn) == "function" then
            TriggerServerEvent("anticheat:flag", "Blacklisted function used: " .. funcName)
        end
    end

    local memDump = table.concat(debug.getinfo(1, "f").short_src or "", "\n")
    for _, sig in ipairs(Config.MemorySignatures) do
        if string.find(memDump, sig) then
        if string.find(memDump, sig) then
            TriggerServerEvent("anticheat:flag", "Memory signature found: " .. sig)
        end
    end
end)

-- Entity creation detection
local originalCreateVehicle = CreateVehicle
CreateVehicle = function(...)
    spawnedEntities += 1
    if spawnedEntities > Config.EntitySpamLimit then
        TriggerServerEvent("anticheat:flag", "Vehicle spam detected")
    end
    return originalCreateVehicle(...)
end

-- Anti mass entity spawn
CreateThread(function()
    while true do
        Wait(5000)
        spawnedEntities = 0
    end
end)

-- Noclip detection
CreateThread(function()
    while true do
        Wait(10000)
        if IsControlPressed(0, 21) and IsControlPressed(0, 22) then
            TriggerServerEvent("anticheat:flag", "Keybind/Noclip pattern detected")
        end
    end
end)
