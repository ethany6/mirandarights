fx_version 'cerulean'
game 'gta5'
use_experimental_fxv2_oal 'yes'
nui_callback_strict_mode 'true'
lua54 'yes'

name 'mirandarights'
author 'gc_ethany'
version '0.2'
repository 'https://github.com/ethany6/mirandarights'
description 'mirandarights'


shared_scripts {
    '@ox_lib/init.lua',
    'config/shared.lua',
}

client_scripts {
    'client/client.lua',
}

server_scripts {
    'server/server.lua',
}