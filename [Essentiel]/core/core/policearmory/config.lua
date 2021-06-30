Config = {}

-- Turn this to false if you want everyone to use this.
Config.OnlyPolicemen = true

-- This is how much ammo you should get per weapon you take out.
Config.ReceiveAmmo = 250

-- You don't need to edit these if you don't want to.
Config.Armory = { ["x"] = 484.55, ["y"] = -1002.04, ["z"] = 25.73, ["h"] = 188.05 }
Config.ArmoryPed = { ["x"] = 484.55, ["y"] = -1003.67, ["z"] = 25.73, ["h"] = 359.34, ["hash"] = "s_m_y_cop_01" }

-- This is the available weapons you can pick out.
Config.ArmoryWeapons = {
	{ ["hash"] = "weapon_smg", ["type"] = "rifle" },
	{ ["hash"] = "weapon_specialcarbine", ["type"] = "rifle" },
	{ ["hash"] = "weapon_combatpistol", ["type"] = "pistol" },
	{ ["hash"] = "weapon_nightstick", ["type"] = "pistol" },
	{ ["hash"] = "weapon_stungun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flashlight", ["type"] = "pistol" },
	{ ["hash"] = "weapon_fireextinguisher", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flaregun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_bzgas", ["type"] = "pistol" },
	{ ["hash"] = "weapon_musket", ["type"] = "pistol" },
	{ ["hash"] = "weapon_sniperrifle", ["type"] = "pistol" },
	{ ["hash"] = "weapon_pumpshotgun", ["type"] = "rifle" }
}
