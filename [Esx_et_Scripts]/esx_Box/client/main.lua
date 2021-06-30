local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}





ESX = nil
local PlayerData = {}
local MenuOpened = false
local Bet = Config.AllowedBets[1]
local Result = ""
local Boxing = false
local InRing = false
local AnnounceString = false
local LastFor = 5
local Pos = 0
local DrawCountDown = false
local CountDown = 3
local Fighters = {
  [1] = false,
  [2] = false
}

local medkit = nil
local MFB = MF_Boxer


Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

Citizen.CreateThread(function ()
  AddBlip(Config.Marker.x, Config.Marker.y, Config.Marker.z, Config.Blip.sprite, Config.Blip.color, "paris boxe")
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.50, 0.50)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
end

function AddBlip(x, y, z, sprite, color, name)
  local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite (blip, Config.Blip.sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 1.2)
    SetBlipColour (blip, Config.Blip.color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)
    return blip
end

function Teleport(coords)
  local ped = GetPlayerPed()
  SetEntityCoords(ped, coords.x, coords.y, coords.z)
end

function StartCountDown()
  DrawCountDown = true
  SetAudioFlag("LoadMPData", true)
  CountDown = 3
  PlaySoundFrontend(-1, "3_2_1", "HUD_MINI_GAME_SOUNDSET", 1)
  Wait(1000)
  CountDown = 2
  PlaySoundFrontend(-1, "3_2_1", "HUD_MINI_GAME_SOUNDSET", 1)
  Wait(1000)
  CountDown = 1
  PlaySoundFrontend(-1, "3_2_1", "HUD_MINI_GAME_SOUNDSET", 1)
  Wait(600)
  PlaySoundFrontend(-1, "GO", "HUD_MINI_GAME_SOUNDSET", 1)
  Wait(400)
  CountDown = "GO"
  local ped = GetPlayerPed(-1)
  FreezeEntityPosition(ped, false)
  Wait(1000)
  DrawCountDown = false
end

function cd(num)
  SetTextCentre(true)
  SetTextFont(6)
  SetTextScale(2.0, 2.0)
  SetTextColour(0, 200, 255, 255)
  SetTextDropShadow(0, 0, 0, 0, 255)
  SetTextEdge(2, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(num)
  DrawText(0.5, 0.25)
end

function OpenFightMenu()
  MenuOpened = true

  local elements = {}

  for i,v in ipairs(Config.AllowedBets) do
    table.insert(elements, {label = "€".. v, value = v})
  end

  ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'bet',
    {
      title    = "Change votre pari",
      align    = 'top-right',
      elements = elements
    }, function(data, menu)
      if data.current.value then
        ESX.TriggerServerCallback('esx_fighting:EditBet', function(success)
          if success then
            MenuOpened = false
            menu.close()
            ESX.ShowNotification("Vous avez validé votre pari")
          end
        end, data.current.value)
      end
    end, function(data, menu)
      MenuOpened = false
      menu.close()
  end)
end

function JoinFight(pos)
  local medkit = CreateObject(GetHashKey("prop_boxing_glove_01"), 0, 0, 0, true, true, true)
  local medkitd = CreateObject(GetHashKey("prop_boxing_glove_01"), 0, 0, 0, true, true, true)
  ESX.TriggerServerCallback('esx_fighting:JoinFight', function(success)
    if success then
      local ped = GetPlayerPed(-1)
     -- Teleport(Config.Pos[pos])
     

         
      FreezeEntityPosition(ped, true)
      SetEntityHealth(ped, 200)
      SetEntityHeading(ped, Config.Pos[pos].h)
      Pos = pos
      InRing = true

if InRing then

HandleOutfit()

end


  
Citizen.CreateThread(function()
  -- body


while InRing do
  Citizen.Wait(200)
if InRing then

            AttachEntityToEntity(medkit, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005 ), -0.02, 0, 0, 0, 100.0, 60.0, true, true, false, true, 1, true) -- object is attached to right hand    
          
        AttachEntityToEntity(medkitd, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 18905), -0.02, 0, 0, 0, 90.0, -100.0, true, true, false, true, 1, true) -- object is attached to right hand    





else
 

   
DeleteEntity(medkit)

DeleteEntity(medkitd)




end
end
end)




         




   else
      ESX.ShowNotification("Vous n'avez pas assez d'argent")

    end
  end, pos)

end

function LeaveFight(pos)
  
  ESX.TriggerServerCallback('esx_fighting:LeaveFight', function(success)
    if success then
      local ped = GetPlayerPed(-1)
      FreezeEntityPosition(ped, false)
      ESX.ShowNotification("Vous avez quitté le combat")
      InRing = false

if not InRing then

HandleOutfit()

end


    else
     ESX.ShowNotification("Vous n'êtes pas sur le ring")
    
    end
  end, pos)
end

function Initialize(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end
    PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieFunctionParameterString(Result)
    PushScaleformMovieFunctionParameterString(AnnounceString)
    PopScaleformMovieFunctionVoid()
    return scaleform
end

function Announce(winner)
  if winner then
    AnnounceString = "Vous avez gagnez " .. Bet*2 .. " €"
    Result = "~g~Vainqueur"
    PlaySoundFrontend(-1, "WIN", "HUD_AWARDS", 1)
    Citizen.Wait(LastFor * 1000)
    AnnounceString = false
    SetEntityHealth(GetPlayerPed(-1), 200)
  else
    AnnounceString = "Vous avez perdu " .. Bet .. " €"
    Result = "~r~Perdant"
    PlaySoundFrontend(-1, "LOSER", "HUD_AWARDS", 1)
    Citizen.Wait(LastFor * 1000)
    AnnounceString = false
    TriggerEvent('esx_ambulancejob:revive')
  end
end

RegisterNetEvent("esx_fighting:BetEdited")
AddEventHandler("esx_fighting:BetEdited", function (prize)
  Bet = prize
end)

RegisterNetEvent("esx_fighting:EditPos")
AddEventHandler("esx_fighting:EditPos", function (pos, state)
  Fighters[pos] = state
end)

RegisterNetEvent("esx_fighting:StartFight")
AddEventHandler("esx_fighting:StartFight", function ()
  Boxing = true
  StartCountDown()
end)

RegisterNetEvent("esx_fighting:Result")
AddEventHandler("esx_fighting:Result", function (result)
  Boxing = false
  InRing = false
  Pos = 0
  Announce(result)
end)

Citizen.CreateThread(function()
  local healthoverride = false
  while true do
    Wait(0)

    local coords = GetEntityCoords(GetPlayerPed(-1))

    if DrawCountDown then
      cd(tostring(CountDown))
    end

    if InRing and not Boxing and Pos ~= 0 then
      ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour quitter le combat")
      if IsControlPressed(0, Keys['E']) and not MenuOpened then
        LeaveFight(Pos)
        Wait(750)
      end
    end

    if Boxing then
      if GetCurrentPedWeapon(GetPlayerPed(-1), 0)~=-1569615261 then
        SetCurrentPedWeapon(GetPlayerPed(-1), -1569615261, true)
      end
      if GetDistanceBetweenCoords(Config.Ring.x,Config.Ring.y,Config.Ring.z,GetEntityCoords(GetPlayerPed(-1)),false)>Config.Ring_Dist then
        SetEntityCoords(GetPlayerPed(-1),vector3(Config.Pos[Pos].x,Config.Pos[Pos].y,Config.Pos[Pos].z))
        SetEntityHeading(GetPlayerPed(-1),Config.Pos[Pos].h)
      end
      if not healthoverride then SetPedMaxHealth(GetPlayerPed(-1), 500); SetEntityHealth(GetPlayerPed(-1), 500); healthoverride = true end
      if GetEntityHealth(GetPlayerPed(-1)) < 150 then
        SetEntityHealth(GetPlayerPed(-1), 200)
        SetPedMaxHealth(GetPlayerPed(-1), 200)
        healthoverride = false
        TriggerServerEvent("esx_fighting:SendResult", Pos)
        Boxing = false
        InRing = false
      end
    end

    if not Boxing and healthoverride then SetPedMaxHealth(GetPlayerPed(-1), 200); SetEntityHealth(GetPlayerPed(-1), 200); healthoverride = false end

    if(GetDistanceBetweenCoords(coords, Config.Marker.x, Config.Marker.y, Config.Marker.z, true) < Config.DrawDistance) then
      DrawText3Ds(Config.Marker.x, Config.Marker.y, Config.Marker.z, "~b~Mise: ~r~€" .. Bet) 
      if GetDistanceBetweenCoords(coords, Config.Marker.x, Config.Marker.y, Config.Marker.z, true) < 2.0 and not Fighters[1] and not Fighters[2] then
        ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ Pour modifier votre pari")
        if IsControlPressed(0, Keys['E']) and not MenuOpened then
          OpenFightMenu()
        end
      end
    end

    if(GetDistanceBetweenCoords(coords, Config.Pos[1].x,Config.Pos[1].y, Config.Pos[1].z, true) <= Config.DrawDistance) and not Fighters[1] then
    DrawText3Ds(Config.Pos[1].x, Config.Pos[1].y, 4.152683, "Commencer un combat [~r~E~w~]") 
      if GetDistanceBetweenCoords(coords, Config.Pos[1].x, Config.Pos[1].y, Config.Pos[1].z+1, true) < 2.0 then
        ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour rejoindre le combat")
        if IsControlPressed(0, Keys['E']) then




          JoinFight(1)
          Wait(750)
        end
      end
    end

    if(GetDistanceBetweenCoords(coords, Config.Pos[2].x, Config.Pos[2].y, Config.Pos[2].z, true) <= Config.DrawDistance) and not Fighters[2] then
      DrawText3Ds(-1169.04, -1707.94, 4.152683, "Commencer un combat [~r~E~w~]") 
      if GetDistanceBetweenCoords(coords, Config.Pos[2].x, Config.Pos[2].y, Config.Pos[2].z+1, true) < 1.0 then
        ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~ pour rejoindre le combat")
        if IsControlPressed(0, Keys['E']) then



          JoinFight(2)
          Wait(750)
        end
      end
    end

  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if AnnounceString then
      scaleform = Initialize("mp_big_message_freemode")
      DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255, 0)
    end
  end
end)




function HandleOutfit()
  if not OldOutfit and InRing then
    OldOutfit = {}
    TriggerEvent('skinchanger:getSkin', function(skin)
      for k,v in pairs(skin) do OldOutfit[k] = v; end
    end)
    TriggerEvent('skinchanger:loadSkin', MaleOutfit)
    --AddGloves(GetPlayerPed(-1),true)
    InOutfit = true
  else
    TriggerEvent('skinchanger:loadSkin', OldOutfit)
    --RemoveGloves()
    InOutfit = false
    OldOutfit = false
  end
  DoingAction = false
end


RegisterNetEvent("hb_notifications:display")
AddEventHandler("hb_notifications:display", function(pos, msg, hue, time, sound)
  
  ShowNotify(pos, msg, hue, time, sound)
end)

function ShowNotify(pos, msg, hue, time, sound)
  if msg ~= nil and msg ~= "" then
    if time == nil then
      time = Config.DefaultFadeOut
    end
    
    
    TriggerEvent('message:show', pos, msg, hue)
    if sound == true then
      SendNUIMessage({message = 'play', sound = 'notification.ogg', volume = 0.3})
    end
    Wait(time)
    TriggerEvent('message:hide')
  else
    print("ERROR: A code of the server owner tried to draw a text with unknown values")
  end
end 
  

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    
    if IsControlPressed(0, 177) then 
      TriggerEvent('message:hide')
    end
  end
end)







RegisterNetEvent('message:hide')
AddEventHandler('message:hide', function()
	SendNUIMessage({
      type = "message",
	  position = nil,
      display = false,
	  message = nil,
	  color = nil
    })
 end)
  
AddEventHandler("onResourceStart", function(resource) 
	if resource == GetCurrentResourceName() then
		TriggerEvent("message:hide", true)
	end
end)

AddEventHandler("onClientResourceStart", function(resource) 
		TriggerEvent("message:hide", true)
	--else
		return
	--end
end)