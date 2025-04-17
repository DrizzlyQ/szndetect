Config = {}

Config.WebhookURL = 'YOUR_DISCORD_WEBHOOK_URL'
Config.EnableScreenshot = true

Config.BlacklistedFunctions = {
    "loadstring", "load", "Citizen.InvokeNative", "AddExplosion",
    "ExecuteCommand", "RunCode", "GetResourceState"
}

Config.MemorySignatures = {
    "Loader.exe",
    "<requestedExecutionLevel level='requireAdministrator' uiAccess='false' />",
    "cNxm.tNq",
    "curl_easy_header",
    "curl_url_get",
    "* \ SW",
    "curl_mime_headers",
    "curl_easy_nextheader",
    "BRRz^{+",
    "<trustInfo xmlns="urn:schemas-microsoft-com:asm.v3">",
    "0m0.egO",
    ""dTMPqxU",
    "F:\pwTk",
    "Cp%_U:\0",
    "curl_url_strerror",
    "Rpgiric",
    "%s%4@)",
    "JDbEs87",
    "<* pc-",
    "sCan{C+",
    "Susano", "SUS::", "susa_menu", "client/main.lua", "TeleportToWaypoint",
    "susaopen", "StartSusano", "CreateVehicle", "TaskWarpPedIntoVehicle"
}

Config.BlacklistedTriggers = {
    "esx:getSharedObject", "HCheat:TempDisableDetection", "redst0nia:checking",
    "gcPhone:_internalAddMessage", "gcPhone:tchat_channel",
    "illegal:spawnCar", "suspicious:netevent"
}

Config.ExportWatchlist = {
    "AddExplosion", "TriggerServerEvent", "RunCode"
}

Config.EntitySpamLimit = 10 -- entities per 5 sec
