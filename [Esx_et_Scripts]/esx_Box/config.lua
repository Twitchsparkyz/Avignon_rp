

MF_Boxer = {}
local MFB = MF_Boxer



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end)
Citizen.CreateThread(function(...)
  while not ESX do 
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end) 
    Citizen.Wait(0)
  end
end)




Config               = {}

Config.DrawDistance  = 1
Config.MarkerColor   = {r = 204, g = 204, b = 0}
Config.Blip          = {sprite = 0, color = 1}

Config.Marker = {x = -1724.49, y = -1114.28, z = 13.15}

Config.Ring = {x = -1718.32, y = -1119.32, z = 14.19}
Config.Ring_Dist = 7.5 -- maximum distance from ring when boxing

Config.Pos = {
  [1] = {x = -1718.60, y = -1123.91, z = 14.19, h = 6.98},
  [2] = {x = -1718.73, y = -1114.94, z = 14.19, h = 192.51}
}

--[[Config               = {}

Config.DrawDistance  = 3
Config.MarkerColor   = {r = 204, g = 204, b = 0}
--Config.Blip          = {sprite = 311, color = 1}

Config.Marker = {x = -50.82, y = -1278.08, z = 29.22}

Config.Ring = {x = -31.90, y = -1230.86, z = 30.06}
Config.Ring_Dist = 7.5 -- maximum distance from ring when boxing

Config.Pos = {
  [1] = {x = -29.79, y = -1233.11, z = 30.06, h = 298.04},
  [2] = {x = -34.14, y = -1228.66, z = 29.80, h = 131.68}
}]]



Config.AllowedBets = {
  0,
  500,
  1000,
  1500,
  2000,
  2500,
  3000
}















--MaleOutfit = {["moles_2"]=0,[".*"]=-1,["lipstick_3"]=0,["chest_3"]=0,["arms_2"]=0,["bodyb_1"]=0,["watches_1"]=-1,["chain_2"]=0,["complexion_2"]=0,["arms"]=15,["bags_1"]=0,["lipstick_1"]=0,["makeup_4"]=0,["bproof_1"]=0,["skin"]=0,["chain_1"]=0,["makeup_2"]=0,["blush_2"]=0,["bodyb_2"]=0,["lipstick_4"]=0,["shoes_1"]=34,["face"]=0,["chest_1"]=0,["mask_2"]=0,["sun_1"]=0,["tshirt_2"]=0,["bracelets_1"]=-1,["watches_2"]=0,["bproof_2"]=0,["tshirt_1"]=15,["helmet_1"]=-1,["decals_1"]=0,["age_2"]=0,["lipstick_2"]=0,["blemishes_2"]=0,["makeup_1"]=0,["blemishes_1"]=0,["moles_1"]=0,["torso_1"]=91,["decals_2"]=0,["torso_2"]=0,["pants_1"]=12,["age_1"]=0,["blush_1"]=0,["helmet_2"]=0,["bracelets_2"]=0,["blush_3"]=0,["sex"]=0,["complexion_1"]=0,["bags_2"]=0,["chest_2"]=0,["pants_2"]=0,["shoes_2"]=0,["makeup_3"]=0,["sun_2"]=0,["mask_1"]=0}
