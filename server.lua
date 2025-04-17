local knownEvents = {
    ["playerConnecting"] = true,
    ["anticheat:flag"] = true,
    ["screenshot-basic:upload"] = true
}

RegisterServerEvent("anticheat:flag")
AddEventHandler("anticheat:flag", function(reason)
    local src = source
    local ids = GetIdentifiers(src)
    SendToDiscord("🛡️ AntiCheat Detection", ("Player %s (%s) flagged: %s"):format(src, ids.license, reason), 16711680)
    if Config.EnableScreenshot then
        TriggerClientEvent("screenshot-basic:request", src, {
            upload = Config.WebhookURL,
            headers = { ['Content-Type'] = 'application/json' }
        })
    end
    DropPlayer(src, "Kicked by AntiCheat: " .. reason)
end)

AddEventHandler("__cfx_internal:triggerEvent", function(eventName, payload, src)
    if not knownEvents[eventName] and not string.match(eventName, "^qb%-") then
        TriggerEvent("anticheat:flag", src, "Unknown or spoofed event: " .. eventName)
    end
end)

AddEventHandler('explosionEvent', function(sender, ev)
    CancelEvent()
    TriggerEvent("anticheat:flag", sender, "Explosion event detected")
end)

for _, exp in ipairs(Config.ExportWatchlist) do
    if _G[exp] ~= nil then
        print("[AntiCheat] Suspicious export in use: " .. exp)
    end
end
