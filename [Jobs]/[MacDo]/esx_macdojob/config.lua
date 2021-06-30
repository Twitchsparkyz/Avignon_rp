Config                            = {}
Config.DrawDistance               = 10.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 20 -- %

Config.AuthorizedVehicles = {
    { name = 'FoodTruck',  label = 'Véhicule Macdonald' },
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = 84.194, y = 285.409, z = 110.203 },
      Sprite  = 78,
      Display = 4,
      Scale   = 0.7,
      Colour  = 46,
    },
}





Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 87.71, y = 297.01, z = 110.22 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Name  = "Vestiaire",
        Type  = 0
    },

    Vaults = {
        Pos   = { x = 79.93, y = 294.74, z = 110.21 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Coffre",
        Type  = 0
    },

    Fridge = {
        Pos   = { x = 89.86, y = 296.6, z = 110.21 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Frigo",
        Type  = 0
    },

    PreparationSteak = {
        Pos   = { x = 95.16, y = 294.30, z = 110.21 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Cuire steak",
        Type  = 0
    },

    Vehicles = {
        Pos          = { x = 111.39, y = 278.79, z = 109.97 },
        SpawnPoint   = { x = 115.65, y = 280.39, z = 109.97 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Name  = "Garage véhicule",
        Type  = 0,
        Heading      = 356.21,
    },

    VehicleDeleters = {
        Pos   = { x = 118.36, y = 298.37, z = 109.97 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Name  = "Ranger le vehicule",
        Type  = 0
    },

    BossActions = {
        Pos   = { x = 85.57, y = 292.76, z = 110.22 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 100, b = 0 },
       Name  = "Menu patron",
        Type  = 0
    },

    KetchupFarm = {
        Pos   = { x = -596.09, y = -885.75, z = 25.57 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Name  = "Récupérer marchandises",
        Type  = 1
    },

    SachetKetchup = {
        Pos   = { x = 734.58, y = -553.8, z = 26.76 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Mise en sachet",
        Type  = 1
    },

    SellFarm = {
        Pos   = { x = 81.48, y = 81.85, z = 78.62 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Name  = "Vente",
        Type  = 1
    },


    Alim = {
        Pos   = { x = 118.82, y = 275.63, z = 109.97 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Name = "Boutique",
        Type  = 0,
        Items = {
            { name = 'salads',      label = _U('salads'),   price = 3 },
            { name = 'tomater',      label = _U('tomater'),   price = 2 },
            { name = 'steakc',       label = _U('steakc'),    price = 7 },
            { name = 'bread',     label = _U('bread'),  price = 2 },
            { name = 'fromage',    label = _U('fromage'), price = 3 },
            { name = 'patate',    label = _U('patate'), price = 3 },
            { name = 'soda',        label = _U('soda'),     price = 4 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 3 },
            { name = 'icetea',      label = _U('icetea'),   price = 4 },
            { name = 'energy',      label = _U('energy'),   price = 7 },
            { name = 'drpepper',    label = _U('drpepper'), price = 2 },
            { name = 'limonade',    label = _U('limonade'), price = 1 }
        },
    },

}


Config.Uniforms = {
  macdo_outfit = {
   male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 2,   ['torso_2'] = 4,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 113,
        ['pants_1'] = 22,   ['pants_2'] = 0,
        ['shoes_1'] = 24,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 0
    },
        female = {
        ['tshirt_1'] = 63,  ['tshirt_2'] = 0,
        ['torso_1'] = 23,   ['torso_2'] = 3,
        ['decals_1'] = 3,   ['decals_2'] = 0,
        ['arms'] = 12,
        ['pants_1'] = 24,   ['pants_2'] = 5,
        ['shoes_1'] = 1,   ['shoes_2'] = 1,
        ['chain_1'] = 0,  ['chain_2'] = 0
    }
  }

}





