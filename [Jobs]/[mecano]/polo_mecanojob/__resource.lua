resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Mecano Job'

client_scripts {
  '@es_extended/locale.lua',
  '@menuv/menuv.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua',
  'client/menuf6.lua',
  'client/main.lua'
}

server_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua',
  'server/main.lua'
}

dependencies {
  'menuv'
}