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

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.WhitelistedCops = {
	'police'
}

Config.armurerie = {
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
	
}


Config.pos = {
	garagevoiture = {
		position = {x = 460.04, y = -986.86, z = 25.7}
  },
    
    garagevoiture2 = {
		position = {x = 477.31,  y = -1021.93, z = 28.03}
	},
	garageheli = {
		position = {x = 449.09, y = -981.13, z = 43.69}
	},
	armurerie = {
		position = {x = 482.59, y = -995.6, z = 30.69} 
	}
}

Config.spawn = {

	spawnvoiture = {
		position = {x = 457.45, y = -982.75, z = 25.7, h = 87.916}
       	},
    
    spawnvoiture2 = {
		position = {x = 481.29, y = -1022.22, z = 27.97, h = 269.67}
	},
	spawnheli = {
		position = {x = 448.69, y = -981.65, z = 43.69, h = 87.916}
	},
}
