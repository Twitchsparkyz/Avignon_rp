resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@async/async.lua',
	'@es_extended/locale.lua',
	'config.lua',
	'locales/fr.lua',
	'server/*.lua',
	'server/classes/*.lua'
}
client_scripts {
	'@es_extended/locale.lua',
	'client/classes/*.lua',
	'config.lua',
	'locales/fr.lua',
	'client/*.lua',
	'client/*.js',
}
dependencies {
	'es_extended',
	'esx_skin',
	'instance',
	'cron',
}
ui_page 'html/ui.html'
files {
	'html/ui.html',
	'html/css/app.css',
	'html/scripts/app.js'
}
files {	
	'weaponrevolver.meta'
}
data_file 'WEAPONINFO_FILE' 'weaponrevolver.meta'