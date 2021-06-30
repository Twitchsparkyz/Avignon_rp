Config                            = {}

Config.DrawDistance               = 25.0
Config.Type = 21

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 20 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locales                    = 'fr'

Config.WhitelistedCops = {
	'ragrah'
}

--[[Config.armurerie = {
	{nom = "Pistolet", arme = "weapon_pistol"},
}

Config.arm = {
	{nom = "Pistolet", arme = "weapon_pistol"},
	{nom = "Fusil à pompe", arme = "weapon_pumpshotgun_mk2"},
}


Config.armi = {
	{nom = "Pistolet", arme = "weapon_pistol"},
	{nom = "Fusil à pompe", arme = "weapon_pumpshotgun_mk2"},
	{nom = "Pistolet de combat", arme = "weapon_combatpistol"},
	{nom = "Tazer", arme = "weapon_stungun"},
	{nom = "Sniper (en cas de GROS danger)", arme = "weapon_sniperrifle"},
	{nom = "M4", arme = "weapon_carbinerifle"},
	
}]]


Config.pos = {
	garagevoiture = {
		position = { x = 772.15, y = -285.6, z = 59.88 } -- Menu véhicules
	}

}

Config.spawn = {

	spawnvoiture = {
		position = { x = 784.27, y = -298.66, z = 59.88, h=117.83} -- Point d'apparitions
		}
}