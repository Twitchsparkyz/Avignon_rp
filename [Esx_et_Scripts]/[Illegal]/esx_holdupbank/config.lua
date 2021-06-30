Config = {}
Config.Locale = 'fr'
Config.NumberOfCopsRequired = 0
Config.TimerBeforeNewRob = 5400 -- seconds
Config.GiveBlackMoney = true -- give black money? If disabled it will give cash instead.

Banks = {
	["fleeca"] = {
		position = { ['x'] = 147.04908752441, ['y'] = -1044.9448242188, ['z'] = 29.36802482605 },
		reward = math.random(600000,1400000),
		nameofbank = "Pillbox Hill",
		lastrobbed = 0
	},
	["fleeca2"] = {
		position = { ['x'] = -2957.6674804688, ['y'] = 481.45776367188, ['z'] = 15.697026252747 },
		reward = math.random(600000,1400000),
		nameofbank = "Fleeca Bank (Autoroute)",
		lastrobbed = 0
	},
	["fleeca3"] = {
		position = { ['x'] = -1211.984, ['y'] = -336.121, ['z'] = 37.7 },
		reward = math.random(600000,1400000),
		nameofbank = "Rockford Hills",
		lastrobbed = 0
	},
	["fleeca4"] = {
		position = { ['x'] = 309.967, ['y'] = -282.954, ['z'] = 54.1 },
		reward = math.random(600000,1400000),
		nameofbank = "Vinewood Hardwick Avenue",
		lastrobbed = 0
	},
	["fleeca5"] = {
		position = { ['x'] = -354.732, ['y'] = -53.979, ['z'] = 49.0 },
		reward = math.random(600000,1400000),
		nameofbank = "Burton Rockford Hills",
		lastrobbed = 0
	},
	["blainecounty"] = {
		position = { ['x'] = -107.06505584717, ['y'] = 6474.8012695313, ['z'] = 31.62670135498 },
		reward = math.random(600000,1400000),
		nameofbank = "Blaine County Savings Bank",
		lastrobbed = 0
	},
	["PrincipalBank"] = {
		position = { ['x'] = 255.001098632813, ['y'] = 225.855895996094, ['z'] = 101.005694274902 },
		reward = math.random(5000000,10000000),
		nameofbank = "Banque Principal",
		lastrobbed = 0
	}
}