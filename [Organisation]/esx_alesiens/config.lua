Config                            = {}
Config.DrawDistance               = 100.0
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

Config.alesiensStations = {

  alesiens = {

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
		  { name = 'primo',        label = 'Primo' },
          { name = 'dubsta3',         label = 'Dubsta 6x6' },
	  },

    Cloakrooms = {
      { x = 1009.82, y = -3167.87, z = -38.91}, -- Vestiaire
    },

    Armories = {
      { x = 1004.74, y = -3149.61, z = -38.91}, -- Armurerie
    },

    Vehicles = {
      {
        Spawner    = { x = -108.41, y = -1591.62, z = 31.86 }, -- Menu véhicules
        SpawnPoint = { x = -117.28, y = -1609.55, z = 31.85 }, -- Point d'apparitions
        Heading    = 317.92, -- Angle d'apparation
      },
    },

    VehicleDeleters = {
      { x = -109.07, y = -1598.54, z = 31.7 }, -- Ranger véhicule
    },

    BossActions = {
      { x = 1003.69, y = -3169.92, z = -34.08 }, -- Actions Patron
    },
  },

}