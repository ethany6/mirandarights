fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'mirandarights'
author 'gc_ethany'
version '0.2'
repository 'https://github.com/ethany6/mirandarights'
description 'mirandarights'

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/style.css',
    'ui/app.js',
    'ui/assets/*',
}

shared_scripts {
    'config/shared.lua',
}

client_scripts {
    'client/client.lua',
}
