fx_version 'cerulean'

game 'gta5'

version '1.1'

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/function.lua',
	'server/main.lua'
}

client_scripts {
  'client.lua'
}

dependencies {
	'essentialmode',
	'async'
}
