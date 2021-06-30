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

---------------- FONCTIONS ------------------

RMenu.Add('tenue', 'vpolice', RageUI.CreateMenu("Vestaire", "~b~Vestiaire"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('tenue', 'vpolice'), true, true, true, function()

            RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                end
            end)

            RageUI.ButtonWithStyle("Tenue pam eleve",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 1)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                end
            end)

             RageUI.ButtonWithStyle("Tenue pam MDL",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 2)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

             RageUI.ButtonWithStyle("Tenue pam MDLC",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 5)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

              RageUI.ButtonWithStyle("Tenue pam adjudant",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 8)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

              RageUI.ButtonWithStyle("Tenue pam adjudant CHEF",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 6)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

              RageUI.ButtonWithStyle("Tenue pam MAJOR",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 7)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

              RageUI.ButtonWithStyle("Tenue pam CAPITAINE",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 9)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

              RageUI.ButtonWithStyle("Tenue pam COMMANDANT ",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 10)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

              RageUI.ButtonWithStyle("Tenue pam COLONEL",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 3, 12)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 114, 0, true)      -- casque
                end
            end)

            RageUI.ButtonWithStyle("Tenue pmo long",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 49, 2)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 17, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 1)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 17, 0, true)      -- casque
                end
            end)

            RageUI.ButtonWithStyle("Tenue psig",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 2, 1)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                 -- SetPedComponentVariation(GetPlayerPed(-1) , 1, 56, 2)   -- masque
                 -- SetPedPropIndex(GetPlayerPed(-1), 1, 0, 0, true) -- lunettes
                 -- SetPedPropIndex(GetPlayerPed(-1), 0, -1, 0, true) -- casque
                end
        end)
        
        RageUI.ButtonWithStyle("Tenue PSIG Lourd",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
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
                end
            end)


            RageUI.ButtonWithStyle("Tenue officier 2",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 49, 1)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 17, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                end
            end)

            RageUI.ButtonWithStyle("Tenue Officier 1",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 49, 0)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 17, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
					SetPedComponentVariation(GetPlayerPed(-1) , 0, 17, 0)   --helmet
					SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
					SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                end
        end)

            RageUI.ButtonWithStyle("Tenue vigipirate",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 39, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 219, 0)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 87, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 28, 0, true)      -- casque
                end
            end)

            RageUI.ButtonWithStyle("Tenue fagn",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 71, 3) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 228, 7)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 31, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 92, 7)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                    SetPedComponentVariation(GetPlayerPed(-1) , 7, 1, 0)   -- chaine
                    SetPedComponentVariation(GetPlayerPed(-1) , 5, 0, 0)   -- sac
                    SetPedPropIndex(GetPlayerPed(-1), 0, 79, 0, true)      -- casque
                end
            end)
        
        

            RageUI.Separator("↓ ~o~Gestion GPB~s~ ↓")
            
            RageUI.ButtonWithStyle("Mettre Kevlar Gendarmerie normal",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 1, 2)   --bulletwear
                    SetPedArmour(GetPlayerPed(-1),25)
                end
        end)

            
        RageUI.ButtonWithStyle("Mettre Kevlar PSIG",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 1, 3)   --bulletwear
                    SetPedArmour(GetPlayerPed(-1),50)
                end
            end)

            RageUI.ButtonWithStyle("Enlever",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 9, 0, 0)   --bulletwear
                    SetPedArmour(GetPlayerPed(-1),0)
                end
            end)

        end, function()
        end, 1)
                        Citizen.Wait(0)
                                end
                            end)
--SetPedPropIndex(GetPlayerPed(-1), 0, 1, 1, true)       0: Hat\ 1: Glass\ 2: Ear\ 6: Watch\ 7: Bracelet
---------------------------------------------


local position = {
    {x = 461.74, y = -999.24, z = 30.69}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
                DrawMarker(20, 461.74, -999.24, 29.85+1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)



            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au vestiaire")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('tenue', 'vpolice'), not RageUI.Visible(RMenu:Get('tenue', 'vpolice')))
                end
            end
        end
    end
    end
end)