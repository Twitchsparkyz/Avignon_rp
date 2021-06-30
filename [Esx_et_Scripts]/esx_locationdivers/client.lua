---------------------------------------------------------------
---------- esx_locationdivers mit en place par Duch' ----------
---------------------------------------------------------------

ESX 					= nil
local PlayerData 		= {}
local menuOpen 			= false
-------------------------------------------------------
---- ACTIVER/DESACTIVER L'EVENEMENT ( à modifier )-----
-------------------------------------------------------
local seashark 			= true
local voiture 			= true
local bateau            = true
local velo 		        = false
local telepherique1 	= true
local telepherique2 	= true
local yatch             = false
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

-- location bateau
Citizen.CreateThread(function()

    if bateau == true then
	
		RequestModel(400514754)
		while not HasModelLoaded(400514754) do
			Wait(1)
		end

		local ped1 =  CreatePed(4,  0x6AF4185D  , 500.4251, 5601.6562, 0.5900, 183.00, false, true)
			SetEntityHeading(ped1, 183.00)
			FreezeEntityPosition(ped1, true)
			SetEntityInvincible(ped1, true)
			SetBlockingOfNonTemporaryEvents(ped1, true)
	end
end)

Citizen.CreateThread(function()

    if bateau == true then
	
		for _,k in pairs(locations) do
			--createBlip(k.coordsIn.x, k.coordsIn.y, k.coordsIn.z, 371, 1, "Location de Moto Cross", 5)
		end
	
		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locations) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn.x, k.coordsIn.y, k.coordsIn.z, true) < 50)then
				DrawMarker(-1,k.coordsIn.x,k.coordsIn.y, k.coordsIn.z-0.5,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn.x, k.coordsIn.y, k.coordsIn.z, true) < 6)then
					showInfo("Appuyez sur ~INPUT_CONTEXT~ pour louer ~g~une supercross")
					if(IsControlJustPressed(1, 38)) then
						showMenu(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

--[[Citizen.CreateThread(function()
    if bateau == true then

	local blip = AddBlipForCoord(2810.867, -668.062, 1.566)
		SetBlipSprite (blip, 371)
		SetBlipDisplay(blip, 2)
		SetBlipScale  (blip, 0.8)
		SetBlipColour (blip, 5)
		SetBlipAsShortRange(blip, true) 
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(('Location Bateau'))
		EndTextCommandSetBlipName(blip)
  end
end)]]

function showMenu(k)

	local essence 		= 100
	local elements = {
		{label = 'sanchez', value = 'sanchez', price = 500}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
		    css   = 'entreprise',
			title = 'Location de Supercross --- [ 500€ ]',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
				ESX.Game.SpawnVehicle(data.current.value, k.coordsOut[1], k.coordsOut[2], function(vehicle)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
					TriggerEvent("advancedFuel:setEssence", essence , GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
				end)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end

-- location seashark

Citizen.CreateThread(function()

    if seashark == true then
	
		RequestModel(GetHashKey("a_m_y_beach_01"))
			while not HasModelLoaded(GetHashKey("a_m_y_beach_01")) do
				Wait(1)
			end

		local ped1 =  CreatePed(4,  0xD1FEB884  , -1612.1522, -1126.4547, -10.3193, 135.10928, false, true)
			SetEntityHeading(ped1, 135.10928)
			FreezeEntityPosition(ped1, true)
			SetEntityInvincible(ped1, true)
			SetBlockingOfNonTemporaryEvents(ped1, true)
	end
	
end)

Citizen.CreateThread(function()

    if seashark == true then

		for _,k in pairs(locations4) do
			createBlip(k.coordsIn4.x, k.coordsIn4.y, k.coordsIn4.z, 471, 1, "Location de jet ski", 5)
		end


		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locations4) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn4.x, k.coordsIn4.y, k.coordsIn4.z, true) < 50)then
					DrawMarker(-1,k.coordsIn4.x,k.coordsIn4.y, k.coordsIn4.z-0.5,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn4.x, k.coordsIn4.y, k.coordsIn4.z, true) < 6)then
					showInfo("Appuyez sur ~INPUT_CONTEXT~ pour louer un jet ski")
					if(IsControlJustPressed(1, 38)) then
						showMenu4(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

function showMenu4(k)

	local essence 		= 100
	local elements = {
		{label = 'jet ski', value = 'seashark', price = 300}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
			css   = 'entreprise', 
			title = 'Location de Seashark --- [ 300€ ]',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
				ESX.Game.SpawnVehicle(data.current.value, k.coordsOut4[1], k.coordsOut4[2], function(vehicle)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
					TriggerEvent("advancedFuel:setEssence", essence , GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
				end)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end

-- location Auto-Tamponneuse

Citizen.CreateThread(function()

    if seashark == true then

		for _,k in pairs(locations6) do
			--createBlip(k.coordsIn4.x, k.coordsIn4.y, k.coordsIn4.z, 471, 1, "Location d'Auto-Tamponneuse", 5)
		end


		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locations4) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn4.x, k.coordsIn4.y, k.coordsIn4.z, true) < 50)then
					DrawMarker(-1,k.coordsIn4.x,k.coordsIn4.y, k.coordsIn4.z-0.5,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn4.x, k.coordsIn4.y, k.coordsIn4.z, true) < 6)then
					showInfo("Appuyez sur ~b~[E]~w~ pour louer une ~r~Auto-Tamponneuse~w~.")
					if(IsControlJustPressed(1, 38)) then
						showMenu4(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

function showMenu4(k)

	local essence 		= 100
	local elements = {
		{label = 'Auto-Tamponneuse', value = 'lambokart', price = 15}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
			css   = 'entreprise', 
			title = 'Location d\'Auto-Tamponneuse --- ~r~[ 15€ ]~w~',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
				ESX.Game.SpawnVehicle(data.current.value, k.coordsOut4[1], k.coordsOut4[2], function(vehicle)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
					TriggerEvent("advancedFuel:setEssence", essence , GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
				end)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end 


-- location voiture aeroport

Citizen.CreateThread(function()

    if voiture == true then
    
		RequestModel(GetHashKey("ig_popov"))
			while not HasModelLoaded(GetHashKey("ig_popov")) do
				Wait(1)
			end

		local ped1 =  CreatePed(4,  0x267630FE , -966.8138, -2693.9235, 0.8306, 138.71543, false, true)
			SetEntityHeading(ped1, 138.71543)
			FreezeEntityPosition(ped1, true)
			SetEntityInvincible(ped1, true)
			SetBlockingOfNonTemporaryEvents(ped1, true)
	end
end)

Citizen.CreateThread(function()

    if voiture == true then

		for _,k in pairs(locations5) do
			--createBlip(k.coordsIn5.x, k.coordsIn5.y, k.coordsIn5.z, 100, 0.5, "Location de voiture", 69)
		end


		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locations5) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn5.x, k.coordsIn5.y, k.coordsIn5.z, true) < 50)then
					DrawMarker(-1,k.coordsIn5.x,k.coordsIn5.y, k.coordsIn5.z-0,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn5.x, k.coordsIn5.y, k.coordsIn5.z, true) < 6)then
					showInfo("Appuyez sur ~INPUT_CONTEXT~ pour louer un ~g~vehicule Kart 250cm3")
					if(IsControlJustPressed(1, 38)) then
						showMenu5(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

function showMenu5(k)

	local essence = 90
	local elements = {
		{label = 'Kart 250cm3', value = 'Shifter_kart', price = 500}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
			css   = 'entreprise',
			title = 'Location de Kart 250cm3 --- [ 500€ ]',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
				ESX.Game.SpawnVehicle(data.current.value, k.coordsOut5[1], k.coordsOut5[2], function(vehicle)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
					TriggerEvent("advancedFuel:setEssence", essence , GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
					
				end)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
				
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end

-- telephérique chiliad
Citizen.CreateThread(function()

    if telepherique1 == true then
    
		RequestModel(GetHashKey("s_m_y_construct_02"))
			while not HasModelLoaded(GetHashKey("s_m_y_construct_02")) do
				Wait(1)
			end

		local ped1 =  CreatePed(4,  0xC5FEFADE  , 444.7735, 5572.0200, 780.1888, 183.00, false, true)
			SetEntityHeading(ped1, 272.33)
			FreezeEntityPosition(ped1, true)
			SetEntityInvincible(ped1, true)
			SetBlockingOfNonTemporaryEvents(ped1, true)
	 end
end)

Citizen.CreateThread(function()

    if telepherique1 == true then

		for _,k in pairs(locations3) do
			createBlip(k.coordsIn3.x, k.coordsIn3.y, k.coordsIn3.z, 485, 1, "Téléphérique", 4)
		end


		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locations3) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn3.x, k.coordsIn3.y, k.coordsIn3.z, true) < 50)then
					DrawMarker(-1,k.coordsIn3.x,k.coordsIn3.y, k.coordsIn3.z-0.5,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn3.x, k.coordsIn3.y, k.coordsIn3.z, true) < 6)then
					showInfo("Appuyez sur ~INPUT_CONTEXT~ pour prendre le téléphérique vers Paleto Bay")
					if(IsControlJustPressed(1, 38)) then
						showMenu2(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

function showMenu2(k)

	local elements = {
		{label = 'Téléphérique --- [ 200 $ ]', value = '---', price = 200}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
			css   = 'entreprise', 
			title = 'Téléphérique',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
						
				ESX.ShowNotification('Vous prenez le téléphérique, veuillez patienter  ...')
				Citizen.Wait(2000)	
				DoScreenFadeOut(1000)
				Citizen.Wait(10000)
				SetEntityCoords(GetPlayerPed(-1), -741.719, 5595.351, 40.6545)
				DoScreenFadeIn(1000)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end

-- location velo

--[[Citizen.CreateThread(function()

    if velo == true then
	
		RequestModel(GetHashKey("a_m_y_beach_01"))
			while not HasModelLoaded(GetHashKey("a_m_y_beach_01")) do
				Wait(1)
			end

		local ped1 =  CreatePed(4,  0xD1FEB884  , -1612.1522, -1126.4547, -10.3193, 135.10928, false, true)
			SetEntityHeading(ped1, 135.10928)
			FreezeEntityPosition(ped1, true)
			SetEntityInvincible(ped1, true)
			SetBlockingOfNonTemporaryEvents(ped1, true)
	end
	
end)

Citizen.CreateThread(function()

    if velo == true then

		for _,k in pairs(locations6) do
			--createBlip(k.coordsIn6.x, k.coordsIn6.y, k.coordsIn6.z, 226, 1, "Location de velo", 5)
		end


		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locations6) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn6.x, k.coordsIn6.y, k.coordsIn6.z, true) < 50)then
					DrawMarker(-1,k.coordsIn6.x,k.coordsIn6.y, k.coordsIn6.z-0.5,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn6.x, k.coordsIn6.y, k.coordsIn6.z, true) < 6)then
					showInfo("Appuyez sur ~INPUT_CONTEXT~ pour louer une Moto cross")
					if(IsControlJustPressed(1, 38)) then
						showMenu4(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

function showMenu4(k)

	local essence 		= 50
	local elements = {
		{label = 'Supercross 250cm3', value = 'sanchez', price = 400}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
			css   = 'entreprise',
			title = 'Location de Supercross 250cm3 --- [ 400$ ]',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
				ESX.Game.SpawnVehicle(data.current.value, k.coordsOut6[1], k.coordsOut6[2], function(vehicle)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
					TriggerEvent("advancedFuel:setEssence", essence , GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
				end)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end]]

---- telepherique paleto bay

Citizen.CreateThread(function()

    if telepherique2 == true then
    
		RequestModel(GetHashKey("s_m_y_construct_02"))
			while not HasModelLoaded(GetHashKey("s_m_y_construct_02")) do
				Wait(1)
			end

		local ped1 =  CreatePed(4,  0xC5FEFADE  , -739.6201, 5595.4140, 40.6545, 86.00, false, true)
			SetEntityHeading(ped1, 86.33)
			FreezeEntityPosition(ped1, true)
			SetEntityInvincible(ped1, true)
			SetBlockingOfNonTemporaryEvents(ped1, true)
	end
end)

Citizen.CreateThread(function()

    if telepherique2 == true then

		for _,k in pairs(locations2) do
			createBlip(k.coordsIn2.x, k.coordsIn2.y, k.coordsIn2.z, 485, 1, "Téléphérique", 4)
		end


		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locations2) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn2.x, k.coordsIn2.y, k.coordsIn2.z, true) < 50)then
					DrawMarker(-1,k.coordsIn2.x,k.coordsIn2.y, k.coordsIn2.z-0.5,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIn2.x, k.coordsIn2.y, k.coordsIn2.z, true) < 6)then
					showInfo("Appuyez sur ~INPUT_CONTEXT~ pour prendre le téléphérique vers le Mont Chiliad")
					if(IsControlJustPressed(1, 38)) then
						showMenu3(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

function showMenu3(k)

	local elements = {
		{label = 'Téléphérique --- [ 200 $ ]', value = '---', price = 200}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
			css   = 'entreprise', 
			title = 'Téléphérique',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
				
				ESX.ShowNotification('Vous prenez le téléphérique, veuillez patienter  ...')
				Citizen.Wait(2000)
				DoScreenFadeOut(1000)
				Citizen.Wait(10000)
				SetEntityCoords(GetPlayerPed(-1), 449.1991, 5572.1684, 780.1888)
				DoScreenFadeIn(1000)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end


function showInfo(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, false, 1, 0)
end

function createBlip(x,y,z,id, onlyShortRange, name,color)
	local blip = AddBlipForCoord(x,y,z)
	SetBlipSprite(blip, id)
	SetBlipAsShortRange(blip, onlyShortRange)
	BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)
    SetBlipColour(blip, color)
    return blip
end

-- location Yatch
Citizen.CreateThread(function()

    if yatch == true then
	
		RequestModel(400514754)
		while not HasModelLoaded(400514754) do
			Wait(1)
		end

		local ped1 =  CreatePed(4,  0x6AF4185D  , 500.4251, 5601.6562, 0.5900, 183.00, false, true)
			SetEntityHeading(ped1, 183.00)
			FreezeEntityPosition(ped1, true)
			SetEntityInvincible(ped1, true)
			SetBlockingOfNonTemporaryEvents(ped1, true)
	end
end)

Citizen.CreateThread(function()

    if yatch == true then
		
		for _,k in pairs(locationsy) do
			createBlip(k.coordsIny.x, k.coordsIny.y, k.coordsIny.z, 371, 1, "Location de Yatch", 5)
		end
	
		while true do 
			Citizen.Wait(1)

			for _,k in pairs(locationsy) do
				local pedCoords = GetEntityCoords(PlayerPedId())

				if(GetDistanceBetweenCoords(pedCoords, k.coordsIny.x, k.coordsIny.y, k.coordsIny.z, true) < 50)then
				DrawMarker(-1,k.coordsIny.x,k.coordsIny.y, k.coordsIny.z-0.5,0,0,0,0,0,0,3.501,3.5001,0.5001,0,155,255,200,0,0,0,0)
				end
				if(GetDistanceBetweenCoords(pedCoords, k.coordsIny.x, k.coordsIny.y, k.coordsIny.z, true) < 6)then
					showInfo("Appuyez sur ~INPUT_CONTEXT~ pour louer un yatch")
					if(IsControlJustPressed(1, 38)) then
						showMenuy(k)
						menuOpen = true
					end
				end
			end
		end
	end
end)

function showMenuy(k)

	local essence 		= 100
	local elements = {
		{label = 'yatch', value = 'sr650fly', price = 50000}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		 
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{   css   = 'entreprise',
			title = 'Location de yatch --- [ 50 000€ ]',
			elements = elements
		},
		function(data, menu)
			for i=1, #elements, 1 do
				ESX.Game.SpawnVehicle(data.current.value, k.coordsOuty[1], k.coordsOuty[2], function(vehicle)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1)
					TriggerEvent("advancedFuel:setEssence", essence , GetVehicleNumberPlateText(vehicle), GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
				end)
				TriggerServerEvent('esx_locationdivers:buy', data.current.price)
				print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end




