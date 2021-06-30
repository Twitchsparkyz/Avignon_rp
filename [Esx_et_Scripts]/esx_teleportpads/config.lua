Config = {}

Config.DrawDistance = 10.0

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