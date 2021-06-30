Config              = {}
Config.MarkerType   = -1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips    = false

Config.RequiredCopsWeed  	= 0
Config.RequiredCopsCoke  	= 0
--------------------------------
--------------------------------
Config.RequiredCopsMeth     = 1
Config.RequiredCopsMethlab  = 1
--------------------------------
--------------------------------
Config.RequiredCopsEcstasy  = 1
-------------------------------
Config.RequiredCopsBillet   = 1
-------------------------------
Config.RequiredCopsOpium    = 2

Config.TimeToFarm           = 3 * 1000
Config.TimeToProcess        = 4 * 1000
Config.TimeToSell           = 3 * 1000

Config.Locale = 'fr'

Config.Zones = {
    CokeField           = {x=1091.11,  y=-3195.62,    z=-38.99,   name = _U('coke_field'),         sprite = 501,    color = 40},       
    CokeProcessing      = {x=-2200.13,    y=308.39,    z=169.6,   name = _U('coke_processing'),    sprite = 478,    color = 40},
    CokeDealer          = {x=835.63,   y=-1211.73,    z=28.01,   name = _U('coke_dealer'),        sprite = 500,    color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------          
	EcstasyField        = {x=1012.35,   y=-3192.96,   z=-38.99,	name = _U('ecstasy_field'),		 sprite = 496,	color = 52},
	EcstasyProcessing   = {x=132.83,  y=-2203.1,  z=7.19,	    name = _U('ecstasy_processing'), sprite = 496,	color = 52},
	EcstasyDealer       = {x=428.44,   y=-741.84,   z=37.98,	name = _U('ecstasy_dealer'),	 sprite = 500,	color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	---------------------------------------------------------------------------------------------------------------------------
    WeedField           = {x=1037.53,  y=-3205.35,    z=-38.17,   name = _U('weed_field'),         sprite = 496,    color = 52},
    WeedProcessing      = {x=815.42,  y=-2511.82,   z=40.53,  name = _U('weed_processing'),    sprite = 496,    color = 52},
    WeedDealer          = {x=-967.27,  y=-1430.76,  z=7.76,   name = _U('weed_dealer'),        sprite = 500,    color = 75},
	---------------------------------------------------------------------------------------------------------------------------
	--BilletField         = {x=2477.41,  y=-401.92,   z=94.81,	name = _U('billet_field'),		 sprite = 500,	color = 1},
	--BilletProcessing    = {x=153.0732,  y=-3103.747,   z=5.929,	name = _U('billet_processing'),	 sprite = 500,	color = 1},
	--BilletDealer        = {x=287.60,  y=-303.62,    z=49.86,	name = _U('billet_dealer'),		 sprite = 500,	color = 1},
	---------------------------------------------------------------------------------------------------------------------------

}