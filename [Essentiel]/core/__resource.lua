resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'server/main.lua',
	'core/policearmory/config.lua',
	'core/policearmory/server/main.lua',
	'core/utils/server/main.lua',
	'core/WeazelNewsCam/server.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'core/Animation_Arme/weapons.lua',
	'core/Menu_pause/pausemenu.lua',
	'core/policearmory/config.lua',
	'core/policearmory/client/main.lua',
	'core/recule_arme/client.lua',
	'core/utils/client/main.lua',
	'core/Watermark_Note_Discord/watermark.lua',
	'core/WeazelNewsCam/client.lua'
}

dependencies {
	'essentialmode',
	'es_extended',
	'async'
}