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

RMenu.Add('tenue', 'vmafiaitalienne', RageUI.CreateMenu("Vestaire", "~b~Vestiaire"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('tenue', 'vmafiaitalienne'), true, true, true, function()

            RageUI.ButtonWithStyle("Tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                end
            end)

            RageUI.ButtonWithStyle("Tenue mafiaitalienne",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
		--[[		
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

        if skin.sex == 0 then
					local clothesSkin = {
            		['tshirt_1'] = 75,    ['tshirt_2'] = 0,
					['ears_1'] = -1, 	  ['ears_2'] = 0,
            		['torso_1'] = 72,     ['torso_2'] = 2,
            		['decals_1'] = 0,     ['decals_2']= 0,
            		['mask_1'] = 0, 	  ['mask_2'] = 0,
            		['arms'] = 1,
            		['pants_1'] = 28, 	  ['pants_2'] = 0,
            		['shoes_1'] = 10,     ['shoes_2'] = 0,
            		['helmet_1'] 	= 0,  ['helmet_2'] = 0,
            		['bags_1'] = 0,      ['bags_2'] = 0,
					['glasses_1'] = 5,    ['glasses_2'] = 5,
					['chain_1'] = 0,      ['chain_2'] = 0,
            		['bproof_1'] = 0,     ['bproof_2'] = 0
					}
		  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
		  RequestModel(model)
          while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
          end

          SetPlayerModel(PlayerId(), model)
          SetModelAsNoLongerNeeded(model)
          end

        end)
      end
	  ]]
		  
					SetPedComponentVariation(GetPlayerPed(-1) , 1, 0, 0)   -- Mask
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 75, 3) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 72, 2)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 96, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 13, 0)   --pants
					SetPedComponentVariation(GetPlayerPed(-1) , 5, 23, 9)   --sac
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 10, 0)   --shoes
					SetPedComponentVariation(GetPlayerPed(-1) , 7, 3, 0)   -- Accessories
					SetPedComponentVariation(GetPlayerPed(-1) , 1, 51, 0)  -- masque
					SetPedPropIndex(GetPlayerPed(-1), 1, 5, 5, true)       -- lunettes
					SetPedPropIndex(GetPlayerPed(-1), 0, 21, 5, true)      -- casque
					
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
    { x = 1402.36, y = 1154.38, z = 117.5} -- Vestiaire
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'mafiaitalienne') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'mafiaitalienne') then 
                DrawMarker(2, position[k].x, position[k].y, position[k].z,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 0, 0, 255, 0, 1, 2, 0, nil, nil, 0)
				



            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au vestiaire")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('tenue', 'vmafiaitalienne'), not RageUI.Visible(RMenu:Get('tenue', 'vmafiaitalienne')))
                end
            end
        end
    end
    end
end)