Config = {}
Config.Blip			= {sprite= 50, color = 4}
--[[Config.BoatBlip		= {sprite= 410, color = 30}
Config.AirplaneBlip	= {sprite= 524, color = 188}
Config.MecanoBlip	= {sprite= 357, color = 26}]]
Config.Price		= 200 -- pound price to get vehicle back
Config.SwitchGaragePrice		= 1000 -- price to pay to switch vehicles in garage
Config.StoreOnServerStart = false -- Store all vehicles in garage on server start?
Config.Locale = 'fr'

Config.Garages = {
	Garage_Centre = {
		Pos = {x=219.380, y=-811.275, z=30.72},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x=229.700, y= -800.1149, z= 30.5722},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=215.124, y=-791.377, z=30.946},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 		 		
	},
	
	Garage_palace = {
		Pos = {x=-3001.84, y= 98.22, z=11.65},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x=-2999.66, y= 95.35, z= 10.65},
			Heading = 143.11,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-2996.93, y= 93.01, z= 11.63},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		},
	
	},
	
	Garage_mairie = {
		Pos = {x= -556.98, y= -141.65, z= 38.44},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -552.57, y= -143.38, z= 38.44},
			Heading = 244.89,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= -559.97, y= -146.92, z= 38.44},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		},
	
	},
	
	Garage_hopital = {
		Pos = {x= 260.94, y= -1516.40, z= 29.20},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 255.75, y= -1520.04, z= 29.20},
			Heading = 33.71,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 250.02, y= -1523.37, z= 29.20},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		},
	
	},
	
	Garage_citebedeaute = {
		Pos = {x=-217.46, y= -1496.54, z=31.30},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x=-219.35, y= -1492.15, z= 31.30},
			Heading = 313.30,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=-224.92, y= -1488.73, z= 31.35},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		},
	
	},

	Garage_felixpyat = {
		Pos = {x= 754.75, y= -296.37, z= 59.99},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 761.33, y= -299.72, z= 59.99},
			Heading = 193.17,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 758.03, y= -298.91, z= 59.99},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		},
	
	},

	Garage_emmaJohn = {
		Pos = {x= 1699.67, y= 4945.14, z= 42.34},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= 1679.14, y= 4922.14, z= 42.10},
			Heading = 27.12,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= 1684.01, y= 4919.05, z= 42.08},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		},
	
	},

		Garage_vigne = {
		Pos = {x= -1908.83, y= 2013.03, z= 141.20},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x= -1906.79, y= 2017.14, z= 141.05},
			Heading = 275.02,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x= -1906.47, y= 2021.31, z= 140.80},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		},
	
	},
	
	Garage_Centre2 = {
		Pos = {x = -1523.191,y = -451.017,z = 35.596},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -1519.22,y = -434.582,z = 35.442},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -1528.022,y = -443.280,z = 35.442},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Paleto = {
		Pos = {x=105.359, y=6613.586, z=32.3973},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x=128.7822, y= 6622.9965, z= 31.7828},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x=126.3572, y=6608.4150, z=31.8565},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_SandyShore = {
		Pos = {x=1694.571, y=3610.924, z=35.319},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x=1713.492, y= 3598.938, z= 35.338},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = 1695.156,y = 3601.061,z = 35.530},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Ocean1 = {
		Pos = {x = -3140.323,y = 1124.463,z = 20.706},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -3132.638,y = 1126.662,z = 20.667},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -3136.902,y = 1102.685,z = 20.654},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Ocean2 = {
		Pos = {x = -2982.561,y = 327.506,z = 14.935},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -2977.238,y = 337.777,z = 14.768},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -2971.814,y = 355.331,z = 14.771},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Sud = {
		Pos = {x = 443.6696,y = -1969.4372,z = 24.401},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = 437.8140,y = -1958.572,z = 22.957},
			Heading = 182.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = 457.91,y = -1971.343,z = 22.553},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Lake = {
		Pos = {x = -73.165504455566,y = 908.08734130859,z = 235.62712097168 },
		Marker = { w= 1.0, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -72.099822998047,y = 902.85479736328,z = 235.63186645508 },
			Heading = 134.409,
			Marker = { w= 1.0, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -66.987632751465,y = 891.65881347656,z = 235.55270385742 },
			Marker = { w= 1.0, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Occaz = {
		Pos = {x = 1136.3771972656,y = 2666.6303710938,z = 38.013275146484 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = 1120.9813232422,y = 2668.8684082031,z = 38.048095703125 },
			Heading = 179.84,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = 1121.9963378906,y = 2660.1179199219,z = 37.996875762939 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_Groove = {
		Pos = {x = -69.514305114746,y = -1822.9477539063,z = 26.941974639893 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -67.72095489502,y = -1835.7784423828,z = 26.883722305298 },
			Heading = 225.887,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -60.4020652771,y = -1829.5288085938,z = 26.836933135986 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_venise = {
		Pos = {x = -1081.974609375,y = -1254.1881103516,z = 5.4244246482849 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -1077.2590332031,y = -1239.3200683594,z = 5.161093711853 },
			Heading = 144.887,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -1097.2971191406,y = -1253.8725585938,z = 5.2441983222961 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_concess = {
	--	Pos = {x = -1161.11,y = -1689.02,z = 4.45 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -1161.11,y = -1689.02,z = 4.50 },
			Heading = 125.92,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -1171.33,y = -1739.17,z = 4.17 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 
			},
	Garage_Gendarmerie = {
	--	Pos = {x = -1161.11,y = -1689.02,z = 4.45 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = 438.78,y = -1026.02,z = 28.78 },
			Heading = 7.53,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = 450.55,y = -976.02,z = 25.7 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 
	
	},
	Garage_tequila = {
		Pos = {x = -575.66357421875,y = 318.41366577148,z = 84.614906311035 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = -569.47564697266,y = 323.53549194336,z = 84.474433898926 },
			Heading = 22.52,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = -560.84375,y = 322.41586303711,z = 84.402587890625 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_banque = {
		Pos = {x = 363.48370361328,y = 296.83682250977,z = 103.50011444092 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = 378.00622558594,y = 288.13024902344,z = 103.1661529541 },
			Heading = 62.22,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = 364.76132202148,y = 285.18911743164,z = 103.37410736084 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	Garage_mirrorpark = {
		Pos = {x = 1033.9229736328,y = -767.10662841797,z = 58.003326416016 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = 1040.6834716797,y = -778.18170166016,z = 58.022853851318 },
			Heading = 359.92,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = 1022.7816772461,y = -763.78955078125,z = 57.961227416992 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
	
	
	-- Garage_Tournoi = {
		-- Pos = {x = 3171.8381347656,y = -1667.3009033203,z = 6.4746117591858 },
		-- Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		-- Name = _U('garage_name'),
		-- HelpPrompt = _U('open_car_garage'),
		-- Functionmenu = OpenMenuGarage,
		-- SpawnPoint = {
			-- Pos = {x = 3164.1762695313,y = -1667.0953369141,z = 6.4746117591858 },
			-- Heading = 264.63,
			-- Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			-- HelpPrompt = _U('spawn_car'),
			-- Functionmenu = ListVehiclesMenu,
		-- },
		-- DeletePoint = {
			-- Pos = {x = 3158.0983886719,y = -1661.5126953125,z = 7.0836601257324 },
			-- Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			-- HelpPrompt = _U('store_car'),
			-- Functionmenu = StockVehicleMenu,
		-- }, 	
	-- },
	-- Garage_YouTool = {
		-- Pos = {x = 2709.8679199219,y = 3455.1743164063,z = 56.317573547363 },
		-- Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		-- Name = _U('garage_name'),
		-- HelpPrompt = _U('open_car_garage'),
		-- Functionmenu = OpenMenuGarage,
		-- SpawnPoint = {
			-- Pos = {x = 2691.1271972656,y = 3454.1496582031,z = 55.785736083984 },
			-- Heading = 239.90,
			-- Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			-- HelpPrompt = _U('spawn_car'),
			-- Functionmenu = ListVehiclesMenu,
		-- },
		-- DeletePoint = {
			-- Pos = {x = 2702.1945800781,y = 3454.7746582031,z = 55.667736053467 },
			-- Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			-- HelpPrompt = _U('store_car'),
			-- Functionmenu = StockVehicleMenu,
		-- }, 	
	-- },
	Garage_YellowJack = {
		Pos = {x = 1993.02,y = 3057.11,z = 47.08 }, --Point Fourrière
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = _U('garage_name'),
		HelpPrompt = _U('open_car_garage'),
		SpawnPoint = {
			Pos = {x = 2000.66,y = 3057.43,z = 47.08  }, --Point véhicule
			Heading = 330.90,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('spawn_car')
		},
		DeletePoint = {
			Pos = {x = 1988.29,y = 3059.95,z = 47.08  }, --Point de rentrer véhicule
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_car')
		}, 	
	},
}

Config.GaragesMecano = {
	Bennys = {
		Name = _U('bennys_pound'),
		SpawnPoint = {
			Pos = {x = 477.729,y = -1888.856,z = 26.094},
			Heading = 303.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = 459.733,y = -1890.335,z = 25.776},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
	police = {
		Name = _U('police_pound'),
		SpawnPoint = {
			Pos = {x = 449.253,y = -1024.322,z = 28.57},
			Heading = 100.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = 452.305,y = -996.752,z = 25.776},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
	police2 = {
		Name = _U('police_pound'),
		SpawnPoint = {
			Pos = {x = 1868.325,y = 3694.566,z = 33.61},
			Heading = 100.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = 1860.925,y = 3706.958,z = 33.36},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
	police3 = {
		Name = _U('police_pound'),
		SpawnPoint = {
			Pos = {x = -474.000,y = 6029.71,z = 30.94},
			Heading = 226.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = _U('take_from_pound')
		},
		DeletePoint = {
			Pos = {x = -462.932,y = 60.41,z = 31.34},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = _U('store_in_pound')
		}, 	
	},
}