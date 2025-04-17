fx_version 'cerulean'
game 'gta5'

author 'Drizzly'
description 'susano detections on qbcore'
version '2.0.0'

client_scripts {
    'config.lua',
    'client.lua',
    'utils.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'config.lua',
    'server.lua',
    'utils.lua'
}
