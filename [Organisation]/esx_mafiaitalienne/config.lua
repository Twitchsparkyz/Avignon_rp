Config                            = {}
Config.DrawDistance               = 10.0
Config.MarkerType                 = 3
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 220, g = 25, b = 25 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.mafiaitalienneStations = {

  mafiaitalienne = {

    Blip = {
      Pos     = { x = 101.70, y = -1937.35, z = 20.80},
      Sprite  = -1,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
     -- { name = 'WEAPON_KNIFE',      price = 8000 },
     -- { name = 'WEAPON_BAT',      price = 8000 },
     -- { name = 'WEAPON_SNSPISTOL',      price = 50000 },
      },

	  AuthorizedVehicles = {
		  { name = 'dubsta2',        label = '4x4 Dubsta' },
          { name = 'oracle2',         label = 'Voiture Oracle' },
	  },

    Cloakrooms = {
      { x = 1402.36, y = 1154.38, z = 117.5}, -- Vestiaire
    },

    Armories = {
      { x = 1399.5, y = 1132.64, z = 117.49}, -- Armurerie
    },

    Vehicles = {
      {
        Spawner    = { x = 1370.23, y = 1147.54, z = 113.76 }, -- Menu véhicules
        SpawnPoint = { x = 1359.34, y = 1157.59, z = 113.76 }, -- Point d'apparitions
        Heading    = 142.9, -- Angle d'apparation
      },
    },

    VehicleDeleters = {
      { x = 1359.59, y = 1138.11, z = 113.76 }, -- Ranger véhicule
    },

    BossActions = {
      { x = 1391.76, y = 1158.84, z = 114.34 }, -- Actions Patron
    },
  },

}