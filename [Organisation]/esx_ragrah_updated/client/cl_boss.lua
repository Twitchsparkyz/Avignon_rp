ESX = nil
local societyragrahmoney = nil

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
    RefreshragrahMoney()
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
	ESX.PlayerData.job2 = job2
    RefreshragrahMoney()
end)


---------------- FONCTIONS ------------------

RMenu.Add('patron', 'boss', RageUI.CreateMenu("ragrah", "Actions Patron"))
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('patron', 'boss'), true, true, true, function()

            if societyragrahmoney ~= nil then
                RageUI.ButtonWithStyle("Argent société :", nil, {RightLabel = "$" .. societyragrahmoney}, true, function()
                end)
            end

            RageUI.ButtonWithStyle("Retirer argent de société",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                if Selected then
                    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_society_money_amount_' .. 'ragrah',
                    {
                        title = ('Montant')
                    }, function(data, menu)
                    local amount = tonumber(data.value)

                if amount == nil then
                    ESX.ShowNotification('Montant invalide')
                else
                    menu.close()
                    TriggerServerEvent('esx_society:withdrawMoney', 'ragrah', amount)
                        end
                    end)
                end
            end)
			
			
			
            RageUI.ButtonWithStyle("Déposer argent de société",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                if Selected then
                    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount_' .. 'ragrah',
                    {
                        title = ('Montant')
                    }, function(data, menu)
        
                        local amount = tonumber(data.value)
        
                        if amount == nil then
                            ESX.ShowNotification('Montant invalide')
                        else
                            menu.close()
                            TriggerServerEvent('esx_society:depositMoney', 'ragrah', amount)
                        end
                    end)
                end
            end) 

           RageUI.ButtonWithStyle("Accéder aux actions de Management",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                if Selected then
                    aboss()
                    RageUI.CloseAll()
                end
            end)


        end, function()
        end, 1)
                        Citizen.Wait(0)
                                end
                            end)

---------------------------------------------

local position = {
    {x = 825.1, y = -231.65, z = 74.96} -- Actions Patron
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'ragrah' and ESX.PlayerData.job.grade_name == 'boss') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'ragrah' and ESX.PlayerData.job2.grade_name == 'boss') then 

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
            DrawMarker(2, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 35, 0, 78, 255, 255, 0, 1, 2, 0, nil, nil, 0)

        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au Actions Patron")
                if IsControlJustPressed(1,51) then
                    RefreshragrahMoney()
                    RageUI.Visible(RMenu:Get('patron', 'boss'), not RageUI.Visible(RMenu:Get('patron', 'boss')))
                end
        end
    end
    else Citizen.Wait(500)
    end
    end
end)

function aboss()
    TriggerEvent('esx_society:openBossMenu', 'ragrah', function(data, menu)
        menu.close()
    end, {wash = false})
end

function RefreshragrahMoney()
    if (ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name == 'boss') or (ESX.PlayerData.job2 ~= nil and ESX.PlayerData.job2.grade_name == 'boss') then
        ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
            UpdateSocietyragrahMoney(money)
        end, ESX.PlayerData.job2.name)
    end
end

function UpdateSocietyragrahMoney(money)
    societyragrahmoney = ESX.Math.GroupDigits(money)
end

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end



