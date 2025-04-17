function GetIdentifiers(src)
    local ids = {
        steam = "N/A", license = "N/A", discord = "N/A", ip = "N/A"
    }
    for _, id in ipairs(GetPlayerIdentifiers(src)) do
        if string.find(id, "steam:") then ids.steam = id
        elseif string.find(id, "license:") then ids.license = id
        elseif string.find(id, "discord:") then ids.discord = id
        elseif string.find(id, "ip:") then ids.ip = id end
    end
    return ids
end

function SendToDiscord(title, description, color)
    local embed = {{
        title = title,
        description = description,
        color = color,
        footer = { text = "Drizzly" },
        timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ')
    }}
    PerformHttpRequest(Config.WebhookURL, function() end, 'POST',
        json.encode({ username = "AntiCheat", embeds = embed }),
        { ['Content-Type'] = 'application/json' })
end
