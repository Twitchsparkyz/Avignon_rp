Config = {}

Config.Locale = 'fr'

Config.Price = 100
Config.EnableESXIdentity  = true
Config.MaxSalary          = 3000
Config.EnableControls = true
Config.StatusMax      = 1000000
Config.TickTime2      = 1000
Config.UpdateInterval = 10000
Config.DrawDistance = 10.0
Config.Size   = {x = 1.5, y = 1.5, z = 1.0}
Config.Color  = {r = 102, g = 102, b = 204}
Config.Type   = 1

Config.MarkerSize             = {x = 1.5, y = 1.5, z = 1.0}
Config.MarkerColor            = {r = 102, g = 102, b = 204}
Config.RoomMenuMarkerColor    = {r = 102, g = 204, b = 102}
Config.MarkerType             = 27
Config.Zones                  = {}
Config.Properties             = {}
Config.EnablePlayerManagement = true
Config.Properties             = {}


Config.TickTime         = 100
Config.UpdateClientTime = 9000
-- Fill this if you want to see the blips,
-- If you have esx_clothesshop you should not fill this
-- more than it's already filled.
Config.ShopsBlips = {
	Ears = {
		Pos = nil,
		Blip = nil
	},
	Mask = {
		Pos = { 
			{ x = -1338.129, y = -1278.200, z = 3.872 },
		},
		Blip = { sprite = 362, color = 2 }
	},
	Helmet = {
		Pos = nil,
		Blip = nil
	},
	Glasses = {
		Pos = nil,
		Blip = nil
	}
}

Config.ZonesAccess = {
	Ears = {
		Pos = {
			{x= 80.374,		y= -1389.493,	z= 28.406},
			{x= -709.426,   y= -153.829,	z= 36.535},
			{x= -163.093,   y= -302.038,	z= 38.853},
			{x= 420.787,	y= -809.654,	z= 28.611},
			{x= -817.070,	y= -1075.96,	z= 10.448},
			{x= -1451.300,  y= -238.254,	z= 48.929},
			{x= -0.756,		y= 6513.685,	z= 30.997},
			{x= 123.431,	y= -208.060,	z= 53.677},
			{x= 1687.318,   y= 4827.685,	z= 41.183},
			{x= 622.806,	y= 2749.221,	z= 41.208},
			{x= 1200.085,   y= 2705.428,	z= 37.342},
			{x= -1199.959,  y= -782.534,	z= 16.452},
			{x= -3171.867,  y= 1059.632,	z= 19.983},
			{x= -1095.670,  y= 2709.245,	z= 18.227},
		}
		
	},
	
	Mask = {
		Pos = {
			{x = -1338.129, y = -1278.200, z = 3.872},
		}
	},
	
	Helmet = {
		Pos = {
			{x= 81.576,		y= -1400.602,	z= 28.406},
			{x= -705.845,   y= -159.015,	 z= 36.535},
			{x= -161.349,   y= -295.774,	 z= 38.853},
			{x= 419.319,	y= -800.647,	 z= 28.611},
			{x= -824.362,   y= -1081.741,	z= 10.448},
			{x= -1454.888,  y= -242.911,	 z= 48.931},
			{x= 4.770,		y= 6520.935,	 z= 30.997},
			{x= 121.071,	y= -223.266,	 z= 53.377},
			{x= 1689.648,   y= 4818.805,	 z= 41.183},
			{x= 613.971,	y= 2749.978,	 z= 41.208},
			{x= 1189.513,   y= 2703.947,	 z= 37.342},
			{x= -1204.025,  y= -774.439,	 z= 16.452},
			{x= -3164.280,  y= 1054.705,	 z= 19.983},
			{x= -1103.125,  y= 2700.599,	 z= 18.227},
		}
	},
	
	Glasses = {
		Pos = {
			{x= 75.287,		y= -1391.131,	z= 28.406},
			{x= -713.102,   y= -160.116,	 z= 36.535},
			{x= -156.171,   y= -300.547,	 z= 38.853},
			{x= 425.478,	y= -807.866,	 z= 28.611},
			{x= -820.853,   y= -1072.940,	z= 10.448},
			{x= -1458.052,  y= -236.783,	 z= 48.918},
			{x= 3.587,		y= 6511.585,	 z= 30.997},
			{x= 131.335,	y= -212.336,	 z= 53.677},
			{x= 1694.936,   y= 4820.837,	 z= 41.183},
			{x= 613.972,	y= 2768.814,	 z= 41.208},
			{x= 1198.678,   y= 2711.011,	 z= 37.342},
			{x= -1188.227,  y= -764.594,	 z= 16.452},
			{x= -3173.192,  y= 1038.228,	 z= 19.983},
			{x= -1100.494,  y= 2712.481,	 z= 18.227},
		}
	}
}



Config.Healing = 3 -- // If this is 0, then its disabled.. Default: 3.. That means, if a person lies in a bed, then he will get 1 health every 3 seconds.

Config.objects = {
	ButtonToSitOnChair = 58, -- // Default: G -- // https://docs.fivem.net/game-references/controls/
	ButtonToLayOnBed = 38, -- // Default: E -- // https://docs.fivem.net/game-references/controls/
	ButtonToStandUp = 23, -- // Default: F -- // https://docs.fivem.net/game-references/controls/
	SitAnimation = {anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER'},
	BedBackAnimation = {dict='anim@gangops@morgue@table@', anim='ko_front'},
	BedStomachAnimation = {anim='WORLD_HUMAN_SUNBATHE'},
	BedSitAnimation = {anim='WORLD_HUMAN_PICNIC'},
	locations = {
		{object="v_med_bed2", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-1.4, direction=0.0, bed=true},
		{object="v_serv_ct_chair02", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.0, direction=168.0, bed=false},
		{object="prop_off_chair_04", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="prop_off_chair_03", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="prop_off_chair_05", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_club_officechair", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_ilev_leath_chr", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_corp_offchair", verticalOffsetX=0.0, verticalOffsetY=0.0, verticalOffsetZ=-0.4, direction=168.0, bed=false},
		{object="v_med_emptybed", verticalOffsetX=0.0, verticalOffsetY=0.13, verticalOffsetZ=-0.2, direction=90.0, bed=false},
		{object="Prop_Off_Chair_01", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="apa_mp_h_din_chair_12", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="ex_mp_h_din_chair_04", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="prop_table_02_chr", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="prop_table_04_chr", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="p_dinerchair_01_s", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="prop_table_01_chr_a", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.0, direction=180.0, bed=false},
		{object="apa_mp_h_din_chair_04", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="p_clb_officechair_s", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="gr_dlc_gr_yacht_props_seat_03", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=-0.5, direction=180.0, bed=false},
		{object="v_ret_gc_chair03", verticalOffsetX=0.0, verticalOffsetY=-0.1, verticalOffsetZ=0.2, direction=180.0, bed=false}
	}
}

-- // YOU WILL FIND ALL BUTTONS HERE FOR CODE BELOW;P
-- [[ https://docs.fivem.net/game-references/controls/ ]]

Config.Text = {
	SitOnChair = '~INPUT_THROW_GRENADE~ pour sasseoir',
	SitOnBed = '~INPUT_PICKUP~ pour se mettre sur le lit',
	LieOnBed = '~INPUT_PICKUP~ se coucher',
	SwitchBetween = '~INPUT_CELLPHONE_LEFT~ ~INPUT_CELLPHONE_RIGHT~ basculer',
	Standup = '~INPUT_ARREST~ pour se lever!',
}



Config.Pads = { 

	

	-- Pompier bas	

    {   --entrer dans l'assensseur au bas

		Text = 'Touche ~INPUT_CONTEXT~ pour aller ~y~Au parking VL~s~.',
		Marker = vector3(327.19, -603.53, 42.35),
		MarkerSettings = {r = 255, g = 55, b = 55, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(319.12, -559.34, 27.80), h = 0.87 }
	},

	{   --sortie du haut vers le bas
		Text = 'Touche ~INPUT_CONTEXT~ pour descendre ~y~Dans les locaux~s~.',
		Marker = vector3(319.12, -559.34, 27.80),
		MarkerSettings = {r = 255, g = 55, b = 55, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(327.19, -603.53, 42.35), h = 180.0 }
	},
	
	{   --entrer dans l'assensseur au toit

		Text = 'Touche ~INPUT_CONTEXT~ pour aller ~y~Au parking VL~s~.',
		Marker = vector3(332.19, -595.93, 42.35),
		MarkerSettings = {r = 255, g = 55, b = 55, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(339.11, -584.14, 73.20), h = 0.87 }
	},

	{   --sortie du toit vers l'entrée
		Text = 'Touche ~INPUT_CONTEXT~ pour descendre ~y~Dans les locaux~s~.',
		Marker = vector3(339.11, -584.14, 73.20),
		MarkerSettings = {r = 255, g = 55, b = 55, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(332.19, -595.93, 42.35), h = 180.0 }
	},

	----------------------------drogues
	{   --entrer dans la weed
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer~s~.',
		Marker = vector3(152.00, 2280.08, 94.08), -- Point de TP ENTRER
		MarkerSettings = {r = 0, g = 0, b = 55, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1066.33, -3183.38, -39.16), h = 0.87 } -- Point de spawn intérieur weed
	},

	{   --sortie dans la weed
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Sortir~s~.',
		Marker = vector3(1066.33, -3183.38, -39.16), -- Point de TP SORTIE
		MarkerSettings = {r = 0, g = 0, b = 0, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(152.00, 2280.08, 94.08), h = 180.0 } -- Point de spawn Extérieur weed
	},

	{   --entrer dans la coke
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer~s~.',
		Marker = vector3(322.06, -146.61, 64.56), -- Point de TP ENTRER
		MarkerSettings = {r = 0, g = 0, b = 55, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1088.74, -3187.61, -38.99), h = 0.87 }
	},

	{   --sortie de la coke
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Sortir~s~.',
		Marker = vector3(1088.74, -3187.61, -38.99), -- Point de TP SORTIE
		MarkerSettings = {r = 0, g = 0, b = 0, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(322.06, -146.61, 64.56), h = 180.0 }
	},

	{   --entrer dans la Ecsta
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer~s~.',
		Marker = vector3(-1451.97, 545.4, 120.8),
		MarkerSettings = {r = 0, g = 0, b = 55, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(996.85, -3200.61, -36.90), h = 0.87 }
	},

	{   --sortie dans la ecsta
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Sortir~s~.',
		Marker = vector3(996.85, -3200.61, -36.90),
		MarkerSettings = {r = 0, g = 0, b = 0, a = 100, type = -1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-1451.97, 545.4, 120.8), h = 274.47 }
	},

	-----------------------------circuit kart
	{   --entrer dans le circuit

		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer dans le circuit du Karting~s~.',
		Marker = vector3(1065.63, 217.25, 84.02),
		MarkerSettings = {r = 0, g = 255, b = 0, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-49.73, -3200.52, 15.20), h = 0.87 }
	},

	{   --sortie du circuit
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Sortir~s~.',
		Marker = vector3(-49.73, -3200.52, 15.20),
		MarkerSettings = {r = 0, g = 255, b = 0, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1065.63, 217.25, 84.02), h = 180.0 }
	},

	{   --entrer dans le restaurant

		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer dans le restaurant~s~.',
		Marker = vector3(-50.1, -3148.15, 15.20),
		MarkerSettings = {r = 0, g = 255, b = 0, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-51.89, -3130.92, 38.35), h = 0.87 }
	},

	{   --sortie du circuit
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Sortir~s~.',
		Marker = vector3(-51.89, -3130.92, 38.35),
		MarkerSettings = {r = 0, g = 255, b = 0, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-50.1, -3148.15, 15.20), h = 180.0 }
	},

	-----------------------------circuit Moto cross
	{   --entrer dans le circuit

		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer dans le circuit Moto cross~.',
		Marker = vector3(1062.51, 212.56, 84.02),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1539.50, -3266.26, 27.41), h = 0.87 }
	},

	{   --sortie du circuit
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Sortir~s~.',
		Marker = vector3(1539.50, -3266.26, 27.41),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 1, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1062.51, 212.56, 84.02), h = 180.0 }
	},

	
	{   --entre restaurant
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer au restaurant~s~.',
		Marker = vector3(1529.03, -3260.85, 27.50),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1540.56, -3279.34, 51.20), h = 0.87 }  
	},

	{   --sortie restaurant
		Text = 'Touche ~INPUT_CONTEXT~ ~y~pour sortir~s~.',
		Marker = vector3(1540.56, -3279.34, 51.20),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(1529.03, -3260.85, 27.50), h = 180.0 }
	},


	
	

	
	-- eglise notre dame
	
    {   --entrermaison
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer~s~.',
		Marker = vector3(-2208.10, 186.92, 180.90),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-766.84, -21.44, 11.55), h = 0.87 }  
	},

	{   --sortie eglise
		Text = 'Touche ~INPUT_CONTEXT~ ~y~pour sortir~s~.',
		Marker = vector3(-766.84, -21.44, 11.55),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-2208.10, 186.92, 180.90), h = 180.0 }
	},

	-- le palace
	
    {   --entre palace
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer~s~.',
		Marker = vector3(-3024.05, 80.54, 10.65),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-3028.71, 73.45, 11.99), h = 0.87 }  
	},

	{   --sortie palace
		Text = 'Touche ~INPUT_CONTEXT~ ~y~pour sortir~s~.',
		Marker = vector3(-3028.71, 73.45, 11.99),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1.5, z = 0.5},
		TeleportPoint = { coords = vector3(-3024.05, 80.54, 10.65), h = 180.0 }
	},
	-- Alesiens
		{   --entre porte 7
		Text = 'Touche ~INPUT_CONTEXT~ pour ~y~Entrer.',
		Marker = vector3(-147.16, -1596.46, 34.83),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1, z = 0.5},
		TeleportPoint = { coords = vector3(997.08, -3158.04, -38.91), h = 249.99 }  
	},

	{   --sortie garage sous terrain
		Text = 'Touche ~INPUT_CONTEXT~ ~y~pour sortir~s~.',
		Marker = vector3(997.08, -3158.04, -38.91),
		MarkerSettings = {r = 0, g = 0, b = 255, a = 100, type = 25, x = 1.5, y = 1, z = 0.5},
		TeleportPoint = { coords = vector3(-147.16, -1596.46, 34.83), h = 299.76 }
	}
	
	
}