

-- PoliceGarage
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	objHash = 2130672747,
	slides = true,
	objCoords = vector3(431.412, -1000.772, 26.6966),
	objHeading = 0.0,
	audioRemote = false,
	lockpick = false,
	fixText = false,
	garage = false,
	maxDistance = 6.0,
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- PoliceGarage2
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	objHash = 2130672747,
	slides = true,
	objCoords = vector3(452.3006, -1000.772, 26.6966),
	objHeading = 0.0,
	audioRemote = false,
	lockpick = false,
	fixText = false,
	garage = false,
	maxDistance = 6.0,
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})



-- PoliceGarageHelico
table.insert(Config.DoorList, {
	authorizedJobs = { ['police']=0 },
	objHash = -692649124,
	slides = false,
	objCoords = vector3(464.3086, -984.5284, 43.77124),
	objHeading = 89.999977111816,
	audioRemote = false,
	lockpick = false,
	fixText = false,
	garage = false,
	maxDistance = 6.0,
	locked = true,		
	-- oldMethod = true,
	-- audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6},
	-- audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7},
	-- autoLock = 1000
})

-- gabz_mrpd    garagebite 1
table.insert(Config.DoorList, {
    textCoords = vector3(410.0258, -1028.32, 29.2202),
    objCoords = vector3(410.0258, -1024.22, 29.2202),
    objHeading = 270,
    slides = true,
    setText = true,
    garage = true,
    objHash = -1635161509,
    maxDistance = 6,
    fixText = false,
    locked = true,
    lockpick = false,
    audioRemote = true,
    authorizedJobs = {
        ['police'] = 0,
    }
})

-- gabz_mrpd    garagebite 2
table.insert(Config.DoorList, {
    textCoords = vector3(410.0258, -1020.19, 29.2202),
    objCoords = vector3(410.0258, -1024.226, 29.22022),
    objHeading = 270,
    slides = true,
    maxDistance = 6,
    garage = true,
    objHash = -1868050792,
    setText = true,
    fixText = false,
    locked = true,
    lockpick = false,
    audioRemote = true,
    authorizedJobs = {
        ['police'] = 0,
    }
})