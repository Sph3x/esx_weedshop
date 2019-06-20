description 'Weed Shop'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'server/esx_weedshop.server.lua',
    'locales/fr.lua',
    'locales/en.lua',
    'config.lua'
}

client_scripts {
    '@es_extended/locale.lua',
    'client/esx_weedshop.client.lua',
    'client/esx_weedshop_gui.client.lua',
    'locales/fr.lua',
    'locales/en.lua',
    'config.lua'
}