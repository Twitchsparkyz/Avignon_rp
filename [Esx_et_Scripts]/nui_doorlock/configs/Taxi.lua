

-- Porte1
table.insert(Config.DoorList, {
	authorizedJobs = { ['taxi']=0 },
	locked = true,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = 1519319655, objHeading = 238.3483581543, objCoords = vector3(906.6434, -161.5644, 74.54778)},
		{objHash = 1519319655, objHeading = 58.205558776856, objCoords = vector3(908.1146, -159.1846, 74.54778)}
 },
	slides = false,
	maxDistance = 2.5,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Porte2
table.insert(Config.DoorList, {
	authorizedJobs = { ['taxi']=0 },
	locked = true,
	lockpick = false,
	audioRemote = false,
	doors = {
		{objHash = -2023754432, objHeading = 58.631664276124, objCoords = vector3(893.7596, -180.4168, 74.85624)},
		{objHash = -2023754432, objHeading = 238.01802062988, objCoords = vector3(895.1224, -178.2062, 74.85624)}
 },
	slides = false,
	maxDistance = 2.5,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Porte3
table.insert(Config.DoorList, {
	locked = true,
	objHeading = 328.84948730468,
	garage = false,
	maxDistance = 2.0,
	fixText = false,
	authorizedJobs = { ['taxi']=0 },
	objHash = -2023754432,
	audioRemote = false,
	objCoords = vector3(895.2414, -144.865, 77.04504),
	slides = false,
	lockpick = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- Porte_garage
table.insert(Config.DoorList, {
	locked = true,
	objHeading = 147.9923248291,
	garage = false,
	maxDistance = 6.0,
	fixText = false,
	authorizedJobs = { ['taxi']=0 },
	objHash = 2064385778,
	audioRemote = false,
	objCoords = vector3(900.085, -147.8304, 77.32048),
	slides = true,
	lockpick = false,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})