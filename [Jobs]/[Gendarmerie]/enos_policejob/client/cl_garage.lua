ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RMenu.Add('garagepolice', 'main', RageUI.CreateMenu("Garage", "Garage de la Gendarmerie"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('garagepolice', 'main'), true, true, true, function() 

            RageUI.ButtonWithStyle("Ranger la voiture", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
            if dist4 < 4 then
                DeleteEntity(veh)
                RageUI.CloseAll()
            end 
        end
    end) 

           -- if ESX.PlayerData.job.grade_name == 'recruit' or ESX.PlayerData.job.grade_name == 'recruit' then 
                  if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
                    RageUI.Separator("↓ ~o~     PAM     ~s~ ↓")
                    RageUI.ButtonWithStyle("Peugeot 5008", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("5008gn")
                    RageUI.CloseAll()
                    end
                end)
            end
                    
                    RageUI.ButtonWithStyle("Mercedes", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("police2")
                    RageUI.CloseAll()
                    end
                end)
            
                    RageUI.ButtonWithStyle("Trafic", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("traficgn")
                    RageUI.CloseAll()
                    end
                end)
                    
                                        
                     RageUI.Separator("↓ ~o~     PMO     ~s~ ↓")
                    
					RageUI.ButtonWithStyle("VW Arteon", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("police")
                    RageUI.CloseAll()
                    end
                end)
                    
                    RageUI.ButtonWithStyle("Moto Yamaha FJR 1300", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("policeb")
                    RageUI.CloseAll()
                    end
                end)
                    
                    RageUI.ButtonWithStyle("Clio", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("polmun2")
                    RageUI.CloseAll()
                    end
                end)
                    
                    RageUI.ButtonWithStyle("Megane RS", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("meganers")
                    RageUI.CloseAll()
                    end
                end)
           
                    
                     RageUI.Separator("↓ ~o~     PSIG     ~s~ ↓")
                    
                    RageUI.ButtonWithStyle("Sharan", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("vsharanpsig")
                    RageUI.CloseAll()
                    end
                end)
                    
                    
                    RageUI.Separator("↓ ~o~     Utilitaires     ~s~ ↓")
                    
                   
                     RageUI.ButtonWithStyle("Ford transit", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("transitgn")
                    RageUI.CloseAll()
                    end
                end)
                    
                    RageUI.ButtonWithStyle("sortir dehor camion banque fr", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("bdf")
                    RageUI.CloseAll()
                    end
                end)

                    RageUI.ButtonWithStyle("anti emeute canon", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("riot2")
                    RageUI.CloseAll()
                    end
                end)

                    RageUI.ButtonWithStyle("anti emeute", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("drap")
                    RageUI.CloseAll()
                    end
                end)








                    --[[
                    RageUI.ButtonWithStyle("BDF", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("bdf")
                    RageUI.CloseAll()
                    end
                end)  ]]--
                    
                    
                    RageUI.Separator("↓ ~o~     banaliser     ~s~ ↓")
                    
                    RageUI.ButtonWithStyle("Touran", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("dgrsp_vwtouran")
                    RageUI.CloseAll()
                    end
                end)
                    
                    
                    
                    

            
                end, function()
                end)

            Citizen.Wait(0)
        end
    end)

Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
                local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.garagevoiture.position.x, Config.pos.garagevoiture.position.y, Config.pos.garagevoiture.position.z)
            	local dist4 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.garagevoiture2.position.x, Config.pos.garagevoiture2.position.y, Config.pos.garagevoiture2.position.z)
           if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then    
                DrawMarker(2, Config.pos.garagevoiture.position.x, Config.pos.garagevoiture.position.y, Config.pos.garagevoiture.position.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 0, 0, 255, 0, 1, 2, 0, nil, nil, 0)
                DrawMarker(2, Config.pos.garagevoiture2.position.x, Config.pos.garagevoiture2.position.y, Config.pos.garagevoiture2.position.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 0, 0, 255, 0, 1, 2, 0, nil, nil, 0)
                 if dist3 <= 4.0 or dist4 <= 4.0 then    
                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder au garage")
                    if IsControlJustPressed(1,51) then           
                        RageUI.Visible(RMenu:Get('garagepolice', 'main'), not RageUI.Visible(RMenu:Get('garagepolice', 'main')))
                    end   
                end
            else
                Citizen.Wait(1500)
            end 
        end
end)



function spawnuniCar(car)
  local car = GetHashKey(car) 
  RequestModel(car)
    local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
    local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.garagevoiture.position.x, Config.pos.garagevoiture.position.y, Config.pos.garagevoiture.position.z)
    local dist4 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.garagevoiture2.position.x, Config.pos.garagevoiture2.position.y, Config.pos.garagevoiture2.position.z)
  
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
        local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
   
    if dist3 <= 10 then
        local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
     SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "Gendarm"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
    SetVehicleMaxMods(vehicle)
        else --dist4 <= 10 then court arriere commico
        local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture2.position.x, Config.spawn.spawnvoiture2.position.y, Config.spawn.spawnvoiture2.position.z, Config.spawn.spawnvoiture2.position.h, true, false)
      
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "Gendarm"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
    SetVehicleMaxMods(vehicle)
end
end



--- original --
--[[
function spawnuniCar(car)
    local car = GetHashKey(car)
    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "LSPD"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
    SetVehicleMaxMods(vehicle)
end
]]--


function SetVehicleMaxMods(vehicle)
     local props = {
      modEngine       = 2,
      modBrakes       = 2,
      modTransmission = 2,
      modSuspension   = 3,
      modTurbo        = true,
    }
    ESX.Game.SetVehicleProperties(vehicle, props)
  end



  ------------------------ HELICO

  RMenu.Add('garageheli', 'main', RageUI.CreateMenu("Garage", "Garage du LSPD"))



  Citizen.CreateThread(function()
      while true do
          RageUI.IsVisible(RMenu:Get('garageheli', 'main'), true, true, true, function() 
  
              RageUI.ButtonWithStyle("Ranger au garage", nil, {RightLabel = "→→→"},true, function(Hovered, Active, Selected)
              if (Selected) then   
              local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
              if dist4 < 4 then
                  DeleteEntity(veh)
                  RageUI.CloseAll()
              end 
          end
      end) 
  
              RageUI.ButtonWithStyle("Hélicoptère Gendarmerie", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
              if (Selected) then
              Citizen.Wait(1)  
              spawnuniCarre("supervolito")
              RageUI.CloseAll()
              end
          end)
               
                  end, function()
                  end)
  
              Citizen.Wait(0)
          end
      end)
  
  Citizen.CreateThread(function()
          while true do
              Citizen.Wait(0)
      
  
      
                  local plyCoords3 = GetEntityCoords(GetPlayerPed(-1), false)
                  local dist3 = Vdist(plyCoords3.x, plyCoords3.y, plyCoords3.z, Config.pos.garageheli.position.x, Config.pos.garageheli.position.y, Config.pos.garageheli.position.z)
            
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' or ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then    
            DrawMarker(2, Config.pos.garageheli.position.x, Config.pos.garageheli.position.y, Config.pos.garageheli.position.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 255, 0, 255, 0, 1, 2, 0, nil, nil, 0)	
              if dist3 <= 5.0 then
                   ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder au garage")
                      if IsControlJustPressed(1,51) then           
                          RageUI.Visible(RMenu:Get('garageheli', 'main'), not RageUI.Visible(RMenu:Get('garageheli', 'main')))
                      end   
                  end
                 end 
          end
  end)
  
  function spawnuniCarre(car)
      local car = GetHashKey(car)
      RequestModel(car)
      while not HasModelLoaded(car) do
          RequestModel(car)
          Citizen.Wait(0)
      end
      local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
      local vehicle = CreateVehicle(car, Config.spawn.spawnheli.position.x, Config.spawn.spawnheli.position.y, Config.spawn.spawnheli.position.z, Config.spawn.spawnheli.position.h, true, false)
      SetEntityAsMissionEntity(vehicle, true, true)
      local plaque = "Gendarm"..math.random(1,9)
      SetVehicleNumberPlateText(vehicle, plaque) 
      SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
      SetVehicleMaxMods(vehicle)
end

-------armurerie


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 

            for k in pairs(Config.pos.armurerie) do
                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 

                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.pos.armurerie[k].x, Config.pos.armurerie[k].y, Config.pos.armurerie[k].z)
                DrawMarker(2, Config.pos.armurerie[k].x, Config.pos.armurerie[k].y, Config.pos.armurerie[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)

                end
            end
        else 
            Citizen.Wait(1000)
        end
    end
end)



RMenu.Add('armurerielspd', 'main', RageUI.CreateMenu("Armurerie", " "))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('armurerielspd', 'main'), true, true, true, function()  
                    
            RageUI.ButtonWithStyle("Déposer les armes", nil, { },true, function(Hovered, Active, Selected)
                if (Selected) then   
					RemoveAllPedWeapons(GetPlayerPed(-1), false)
				end
            end)

            RageUI.ButtonWithStyle("Equipement de base", nil, { },true, function(Hovered, Active, Selected)
                if (Selected) then   
                    TriggerServerEvent('equipementbase')
                end
            end)


            if ESX.PlayerData.job.grade_name == 'officer' then
                for k,v in pairs(Config.armurerie) do
                RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                    if (Selected) then   
                        TriggerServerEvent('armurerie', v.arme, v.prix)
                    end
                end)
            end
        end

            if ESX.PlayerData.job.grade_name == 'sergeant' then
                for k,v in pairs(Config.arm) do
                RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                    if (Selected) then   
                        TriggerServerEvent('armurerie', v.arme, v.prix)
                    end
                end)
            end
        end

                    if ESX.PlayerData.job.grade_name == 'lieutenant' then
                    for k,v in pairs(Config.arm) do
                    RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                        if (Selected) then   
                            TriggerServerEvent('armurerie', v.arme, v.prix)
                        end
                    end)
                end
            end

            if ESX.PlayerData.job.grade_name == 'boss' then
                for k,v in pairs(Config.armi) do
                RageUI.ButtonWithStyle(v.nom, nil, { },true, function(Hovered, Active, Selected)
                    if (Selected) then   
                        TriggerServerEvent('armurerie', v.arme, v.prix)
                    end
                end)
            end
        end

    



        end, function()
        end)
    Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 	

                local plyCoords2 = GetEntityCoords(GetPlayerPed(-1), false)
                local dist2 = Vdist(plyCoords2.x, plyCoords2.y, plyCoords2.z, Config.pos.armurerie.position.x, Config.pos.armurerie.position.y, Config.pos.armurerie.position.z)
		        if dist2 <= 1.0 then
		        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 	
                    ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder à l'armurerie")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('armurerielspd', 'main'), not RageUI.Visible(RMenu:Get('armurerielspd', 'main')))
                    end   
                end
            end 
        else 
            Citizen.Wait(1500)
        end
        end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
	end
	ped = CreatePed("PED_TYPE_CIVMALE", "s_m_y_cop_01", 459.16, -988.84, 29.69, 128.67, false, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)