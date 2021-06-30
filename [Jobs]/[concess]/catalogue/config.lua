Config                            = {}
Config.DrawDistance               = 10.0
Config.MarkerColor                = { r = 255, g = 255, b = 255 }
--language currently available EN and SV
Config.Locale                     = 'en'
--this is how much the price shows from the purchase price
-- exapmle the cardealer boughts it for 2000 if 2 then it says 4000
Config.Price = 2 -- this is times how much it should show

Config.Zones = {

  ShopInside = {
    Pos     = { x = -1181.29, y = -1704.47, z = 4.45 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 186.3622,
    Type    = -1,
  },

  Katalog = {
    Pos     = { x = -1180.59, y = -1711.49, z = 4.45 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 177.28,
    Type    = 27,
  },

  GoDownFrom = {
    Pos   = { x = -1176.91, y = -1717.96, z = 17.04 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 27,
  },

  GoUpFrom = {
    Pos   = { x = -1176.91, y = -1717.96, z = 17.04 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 27,
  },

}