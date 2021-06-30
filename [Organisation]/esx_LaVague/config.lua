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

Config.LaVagueStations = {

  LaVague = {

    Blip = {
      Pos     = { x = 101.70, y = -1937.35, z = 20.80},
      Sprite  = -1,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_KNIFE',      price = 8000 },
      { name = 'WEAPON_BAT',      price = 8000 },
      { name = 'WEAPON_SNSPISTOL',      price = 50000 },
      },

	  AuthorizedVehicles = {
		  { name = 'warrener',        label = 'Warrener - Jefe' },
          { name = 'stanier',         label = 'Stanier' },
	  },

    Cloakrooms = {
      { x = 360.86, y = -2032.18, z = 25.35}, -- Vestiaire
    },

    Armories = {
      { x = 353.01, y = -2033.67, z = 25.59}, -- Armurerie
    },

    Vehicles = {
      {
        Spawner    = { x = 326.32, y = -2041.5, z = 20.71 }, -- Menu véhicules
        SpawnPoint = { x = 334.25, y = -2039.47, z = 20.7}, -- Point d'apparitions
        Heading    = 52.28, -- Angle d'apparation
      },
    },

    VehicleDeleters = {
      { x = 316.01, y = -2031.57, z = 20.57 }, -- Ranger véhicule
    },

    BossActions = {
      { x = 361.5, y = -2041.57, z = 25.59 }, -- Actions Patron
    },
  },

}
