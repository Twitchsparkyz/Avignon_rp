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

RMenu.Add('tenue', 'vGang', RageUI.CreateMenu("Vestaire", "~b~Vestiaire"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('tenue', 'vGang'), true, true, true, function()

            RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                    TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                end
            end)

            RageUI.ButtonWithStyle("Tenue pam",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 93, 0)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                end
            end)

            RageUI.ButtonWithStyle("Tenue pmo court",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 2, 2)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                end
            end)

            RageUI.ButtonWithStyle("Tenue pmo long",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 49, 2)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 17, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 1)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                end
            end)

            RageUI.ButtonWithStyle("Tenue psig",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 2, 1)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
                end
            end)

            RageUI.ButtonWithStyle("Tenue officier 2",nil, {nil}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetPedComponentVariation(GetPlayerPed(-1) , 8, 38, 0) --tshirt 
                    SetPedComponentVariation(GetPlayerPed(-1) , 11, 49, 1)  --torse
                    SetPedComponentVariation(GetPlayerPed(-1) , 3, 17, 0)  -- bras
                    SetPedComponentVariation(GetPlayerPed(-1) , 4, 59, 0)   --pants
                    SetPedComponentVariation(GetPlayerPed(-1) , 6, 24, 0)   --shoes
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
                end
            end)

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
    {x = 20.06, y = -914.73, z = 123.08}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'Gang') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'Gang') then 
                DrawMarker(2, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)
				



            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au vestiaire")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('tenue', 'vGang'), not RageUI.Visible(RMenu:Get('tenue', 'vGang')))
                end
            end
        end
    end
    end
end)
