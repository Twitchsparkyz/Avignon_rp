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

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
	ESX.PlayerData.job2 = job2
end)

---------------- FONCTIONS ------------------

RMenu.Add('tenue', 'vragrah', RageUI.CreateMenu("Vestaire", "~b~Vestiaire"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('tenue', 'vragrah'), true, true, true, function()

            RageUI.ButtonWithStyle("Tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                end
            end)

            RageUI.ButtonWithStyle("Tenue ragrah",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
			  
					SetPedComponentVariation(GetPlayerPed(-1) , 1, 57, 21)   -- Mask
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 18, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 128, 2)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 33, 0)   --pants
					SetPedComponentVariation(GetPlayerPed(-1) , 5, 23, 1)   --sac
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 7, 4)   --shoes
					SetPedComponentVariation(GetPlayerPed(-1) , 7, 3, 1)   -- Accessories
					SetPedPropIndex(GetPlayerPed(-1), 1, -1, 0, true)       -- lunettes
					SetPedPropIndex(GetPlayerPed(-1), 0, -1, 0, true)      -- casque
					
					end
					end)
					
					--[[
					SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 53, 0)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 20, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedComponentVariation(GetPlayerPed(-1) , 1, 56, 1)  -- masque
                    SetPedPropIndex(GetPlayerPed(-1), 1, 0, 0, true)       -- lunettes
                    SetPedPropIndex(GetPlayerPed(-1), 0, 81, 0, true)      -- casque
					]]--
						
--0: Face\ 1: Mask\ 2: Hair\ 3: Torso\ 4: Leg\ 
--5: Parachute / bag\ 6: Shoes\ 7: Accessory\ 
--8: Undershirt\ 9: Kevlar\ 10: Badge\ 11: Torso 2


            
--[[
            RageUI.ButtonWithStyle("Tenue Officier 1",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 49, 0)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 17, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
					SetPedComponentVariation(GetPlayerPed(-1) , 0, 17, 0)   --helmet
                end
            end)
			]]

      --[[      RageUI.Separator("↓ ~o~Gestion GPB~s~ ↓")

            RageUI.ButtonWithStyle("Mettre",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 1, 0)   --bulletwear
                end
            end)

            RageUI.ButtonWithStyle("Enlever",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 0, 0)   --bulletwear
                end
            end)]]

        end, function()
        end, 1)
                        Citizen.Wait(0)
                                end
                            end)

---------------------------------------------


local position = {
    { x = 816.33, y = -231.6, z = 66.74} -- Vestiaire
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'ragrah') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'ragrah') then 
                DrawMarker(2, position[k].x, position[k].y, position[k].z,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 35, 0, 78, 255, 255, 0, 1, 2, 0, nil, nil, 0)
				



            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au vestiaire")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('tenue', 'vragrah'), not RageUI.Visible(RMenu:Get('tenue', 'vragrah')))
                end
            end
        end
    end
    end
end)