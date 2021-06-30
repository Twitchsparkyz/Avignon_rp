resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'


description 'KickBoxing By Kevin'

ui_page 'html/index.html'


server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"config.lua",
	"server/main.lua"
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client/main.lua',
}

files {
    'html/index.html',
    'html/style.css',
    'html/listener.js',
    'html/sound/notification.ogg',
    'html/fonts/pdown.ttf'
}
