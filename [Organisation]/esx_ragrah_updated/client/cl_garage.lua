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

RMenu.Add('garageragrah', 'main', RageUI.CreateMenu("Garage", "Garage du ragrah"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('garageragrah', 'main'), true, true, true, function() 

            RageUI.ButtonWithStyle("Ranger la voiture", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
            if (Selected) then   
            local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
            if dist4 < 4 then
                DeleteEntity(veh)
                RageUI.CloseAll()
            end 
        end
    end) 

            if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'ragrah') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'ragrah') then 
                   
				   RageUI.ButtonWithStyle("Van Burrito", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("burrito3")
                    RageUI.CloseAll()
					
					  end
                end)
            end
			RageUI.ButtonWithStyle("BMX", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                Citizen.Wait(1)  
                spawnuniCar("bmx")
                RageUI.CloseAll()
                end
            end)
			
			RageUI.ButtonWithStyle("Primo", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                Citizen.Wait(1)  
                spawnuniCar("primo2")
                RageUI.CloseAll()
                end
            end)
			
			
			
					RageUI.ButtonWithStyle("Voiture Glendale", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                Citizen.Wait(1)  
                spawnuniCar("glendale")
                RageUI.CloseAll()
                end
            end)
     --   end
            
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
				if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'ragrah') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'ragrah') then
				DrawMarker(2, Config.pos.garagevoiture.position.x, Config.pos.garagevoiture.position.y, Config.pos.garagevoiture.position.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 35, 0, 78, 255, 0, 1, 2, 0, nil, nil, 0)	
				if dist3 <= 3.0 then
                                   
					ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour accéder au garage")
                    if IsControlJustPressed(1,51) then           
                        RageUI.Visible(RMenu:Get('garageragrah', 'main'), not RageUI.Visible(RMenu:Get('garageragrah', 'main')))
                    end   
                end
               end 
        end
end)

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
    local plaque = "ragra"..math.random(001,999)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
    SetVehicleMaxMods(vehicle)
	SetVehicleWindowTint(vehicle, 3)
	SetVehicleDirtLevel(vehicle, 0.0)
	local color = GetIsVehiclePrimaryColourCustom(vehicle)
	
	SetVehicleCustomPrimaryColour(vehicle, 35, 0, 78) -- violet
    SetVehicleCustomSecondaryColour(vehicle, 0, 0, 0) -- noir
end
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





