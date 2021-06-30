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

local PlayerData, CurrentActionData, handcuffTimer, dragStatus, blipsCops, currentTask, spawnedVehicles = {}, {}, {}, {}, {}, {}, {}
local HasAlreadyEnteredMarker, isDead, IsHandcuffed, hasAlreadyJoined, playerInService, isInShopMenu = false, false, false, false, false, false
local LastStation, LastPart, LastPartNum, LastEntity, CurrentAction, CurrentActionMsg
dragStatus.isDragged = false
blip = nil
local policeDog = false
local PlayerData = {}
closestDistance, closestEntity = -1, nil
local IsHandcuffed, DragStatus = false, {}
DragStatus.IsDragged          = false
local attente = 0
local currentTask = {}







local function LoadAnimDict(dictname)
	if not HasAnimDictLoaded(dictname) then
		RequestAnimDict(dictname) 
		while not HasAnimDictLoaded(dictname) do 
			Citizen.Wait(1)
		end
	end
end
	


ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	local PlayerData = {}
	local ped = PlayerPedId()
	local vehicle = GetVehiclePedIsIn( ped, false )
	
	
	
	

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)


loadDict = function(dict)
    while not HasAnimDictLoaded(dict) do Wait(0) RequestAnimDict(dict) end
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RMenu.Add('police', 'main', RageUI.CreateMenu("LSPD", "Intéraction"))
RMenu.Add('police', 'inter', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'info', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'doc', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'renfort', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'voiture', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'chien', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'cam', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'megaphone', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))
RMenu.Add('police', 'PPA', RageUI.CreateSubMenu(RMenu:Get('police', 'main'), "LSPD", "Intéraction"))  --add submenu ppa



Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('police', 'main'), true, true, true, function()

            RageUI.Checkbox("Prendre/Quitter son service",nil, service,{},function(Hovered,Ative,Selected,Checked)
                if Selected then

                    service = Checked


                    if Checked then
                        onservice = true
						RageUI.Popup({
							message = "Vous avez pris votre service !"})

                        
                    else
                        onservice = false
						RageUI.Popup({
							message = "Vous avez quitter votre service !"})

                    end
                end
            end)

			if onservice then

				RageUI.ButtonWithStyle("Infos LSPD", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'info'))
				
				RageUI.ButtonWithStyle("Intéractions sur personne", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'inter'))

				RageUI.ButtonWithStyle("Intéractions sur véhicules", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'voiture'))
				
----------------------------------------------------------Menu PPA	----------------------------------------------------------------------------------
				
				--TEST 1  --donne au policer
				if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and (ESX.PlayerData.job.grade_name == 'boss' or ESX.PlayerData.job.grade_name == 'capitaine' or ESX.PlayerData.job.grade_name == 'major') then
				RageUI.ButtonWithStyle("PPA", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'PPA'))
				else
				RageUI.ButtonWithStyle('PPA', description, {RightBadge = RageUI.BadgeStyle.Lock }, false, function(Hovered, Active, Selected)
						if (Selected) then
							end 
						end)
					end	
-----------------------------------------------------------FIN MENU PPA-------------------------------------------------------------------------------					
					
					
					
					

				RageUI.ButtonWithStyle("Demande de renfort", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'renfort'))



				if IsPedInAnyVehicle(PlayerPedId(), false) then
				RageUI.ButtonWithStyle("Mégaphone", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'megaphone'))
				else
				RageUI.ButtonWithStyle('Mégaphone', description, {RightBadge = RageUI.BadgeStyle.Lock }, false, function(Hovered, Active, Selected)
						if (Selected) then
							end 
						end)
					end
					

				RageUI.ButtonWithStyle("Poser/Prendre Radar",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
					if Selected then
						RageUI.CloseAll()       
						TriggerEvent('police:POLICE_radar')
					end
				end)

				RageUI.ButtonWithStyle("Menu Chien", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'chien'))

				if ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then
				RageUI.ButtonWithStyle("Menu Caméra", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('police', 'cam'))
				else
					RageUI.ButtonWithStyle('Menu Caméra', description, {RightBadge = RageUI.BadgeStyle.Lock }, false, function(Hovered, Active, Selected)
						if (Selected) then
							end 
						end)
					end
				end


    end, function()
	end)

		RageUI.IsVisible(RMenu:Get('police', 'inter'), true, true, true, function()

			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			RageUI.ButtonWithStyle("Donner une Amende",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
				if Selected then
					RageUI.CloseAll()        
					OpenBillingMenu() 
				end
			end)

			RageUI.ButtonWithStyle("Prendre Carte d'identité", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then   
                	RageUI.CloseAll()
                	OpenIdentityCardMenu(closestPlayer)
            	end
            end)

            RageUI.ButtonWithStyle("Fouiller", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if (Selected) then  
                    RageUI.CloseAll()
                    OpenBodySearchMenu(closestPlayer)
                    ExecuteCommand("me La personne fouille")
                end
            end)    

        RageUI.ButtonWithStyle("Menotter/démenotter", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
            if (Selected) then 
                TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(closestPlayer))
            end
        end)

            RageUI.ButtonWithStyle("Escorter", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                TriggerServerEvent('esx_policejob:drag', GetPlayerServerId(closestPlayer))
            end
        end)

            RageUI.ButtonWithStyle("Mettre dans un véhicule", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                TriggerServerEvent('esx_policejob:putInVehicle', GetPlayerServerId(closestPlayer))
                end
            end)
			
			
			RageUI.ButtonWithStyle("props", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then   
                	RageUI.CloseAll()
                	OpenMenuProps()
            	end
             end)
            
            
            RageUI.ButtonWithStyle("Retirer props", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then   
             	local trackedEntities = {
		            'prop_roadcone02a',
		            'prop_barrier_work05',
		            'p_ld_stinger_s',
		            'prop_boxpile_07d',
		            'hei_prop_cash_crate_half_full'
            }
                
            
            local playerPed = PlayerPedId()
		    local coords = GetEntityCoords(playerPed)--
    		
		for i=1, #trackedEntities, 1 do
			local object = GetClosestObjectOfType(coords, 3.0, GetHashKey(trackedEntities[i]), false, false, false)

			if DoesEntityExist(object) then
			DeleteEntity(object)
        end
    end
    
            	end
             end)
        
			

    end, function()
	end)

	RageUI.IsVisible(RMenu:Get('police', 'info'), true, true, true, function()

		RageUI.ButtonWithStyle("Prise de service",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'prise'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("Fin de service",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'fin'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("Pause de service",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'pause'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("Standby",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'standby'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("Control en cours",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'control'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("Refus d'obtempérer",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'refus'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

		RageUI.ButtonWithStyle("Crime en cours",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local info = 'crime'
				TriggerServerEvent('police:PriseEtFinservice', info)
			end
		end)

    end, function()
	end)
	
--[[
-----------------------------------------------------------PPA -------------------------------------------------------------
	RageUI.IsVisible(RMenu:Get('police', 'PPA'), true, true, true, function()


RageUI.ButtonWithStyle("Donner PPA", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
                        while (UpdateOnscreenKeyboard() == 0) do
                                 DisableAllControlActions(0);
                                 Wait(0);
                        end
    if (GetOnscreenKeyboardResult()) 
        then
        local PPAplayer = GetOnscreenKeyboardResult()
         if PPAplayer == nil --check sur la valeur entrée
            then 
                ESX.ShowNotification('~r~ ID joueur non valide 1')
                
                    else
                    TriggerEvent('esx_license:addLicense', PPAplayer, 'weapon')
					ESX.ShowNotification('PPA donné')	
					ExecuteCommand("me La personne donne le PPA")
					exports.JD_logs:discord("PPA Donné : "..PPAplayer, GetPlayerServerId(PlayerId()), PPAplayer, '#13FF00', 'PPA')
            end
            end

end
end, function()
        end)
        
		RageUI.ButtonWithStyle("Confisquer le PPA", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
				
				        DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
                        while (UpdateOnscreenKeyboard() == 0) do
                                 DisableAllControlActions(0);
                                 Wait(0);
                        end
    if (GetOnscreenKeyboardResult()) 
        then
            local FinPPAplayer = GetOnscreenKeyboardResult()
            --  local Active = NetworkIsPlayerConnected(GetPlayerServerId(FinPPAplayer))
            if FinPPAplayer == nil --check sur la valeur entrée
            then 
                ESX.ShowNotification('~r~ ID joueur non valide 3 ')
           -- else if  Active == false
             --  then 
              --  ESX.ShowNotification('~r~ ID joueur non valide 4')
              --  print(FinPPAplayer)
              --  print (Active)
              --  print (Playername)
                else
                    TriggerEvent('esx_license:removeLicense', FinPPAplayer, 'weapon')
					ESX.ShowNotification('~y~ PPA confisqué')
				    ExecuteCommand("me La personne confisque le PPA")
				    print (Active)
				    print (PlayerName)
					exports.JD_logs:discord("PPA Confisqué : "..FinPPAplayer, GetPlayerServerId(PlayerId()), FinPPAplayer, '#FF0000', 'PPA')
					
            
        end
    end
--end
end
end)
end, function()
        end)

----------------------------------------Fin PPA-------------------------------------------------------------------------------	
]]--


-----------------------------------------------------------PPA -------------------------------------------------------------
					RageUI.IsVisible(RMenu:Get('police', 'PPA'), true, true, true, function()


RageUI.ButtonWithStyle("Donner PPA", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then
									
				local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                   if closestPlayer ~= -1 and closestDistance <= 3.0 then
					TriggerServerEvent('esx_policejob:addLicense',GetPlayerServerId(closestPlayer))
					--TriggerEvent('esx_license:addLicense', GetPlayerServerId(closestPlayer), 'weapon')
					ESX.ShowNotification('PPA donné')	
					ExecuteCommand("me La personne donne le PPA")
					exports.JD_logs:discord("PPA Donné : "..GetPlayerServerId(closestPlayer), GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer), '#13FF00', 'PPA')	
			
				else 
				    ESX.ShowNotification('~r~ Personne à proximité')
					end
                end
            end)
				
				
				
		RageUI.ButtonWithStyle("Confisquer le PPA", nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                    if closestPlayer ~= -1 and closestDistance <= 3.0 then
                    TriggerServerEvent('esx_policejob:removeLicense',GetPlayerServerId(closestPlayer))
					--TriggerEvent('esx_license:removeLicense', GetPlayerServerId(Player), 'weapon')
				    ESX.ShowNotification('PPA confisqué')
				    ExecuteCommand("me La personne confisque le PPA")
				    exports.JD_logs:discord("PPA Confisqué : "..GetPlayerServerId(closestPlayer), GetPlayerServerId(PlayerId()), GetPlayerServerId(closestPlayer), '#FF0000', 'PPA')
			    else
			        ESX.ShowNotification('~r~ Personne à proximité')
				    end
            end
        end)
		
		end, function()
			end)

----------------------------------------PPA-------------------------------------------------------------------------------









	RageUI.IsVisible(RMenu:Get('police', 'cam'), true, true, true, function()

		RageUI.ButtonWithStyle("Caméra 1", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 25) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 2", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 26) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 3", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 27) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 4", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 1) 
			end
		end)


		RageUI.ButtonWithStyle("Caméra 5", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 2) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 6", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 3) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 7", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 4) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 8", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 5) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 9", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 6) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 10", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 7) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 11", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 8) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 12", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 9) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 13", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 10) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 14", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 11) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 15", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 12) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 16", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 13) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 17", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 14) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 18", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 15) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 19", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 16) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 20", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 17) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 21", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 18) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 22", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 19) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 23", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 20) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 24", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 21) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 25", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 22) 
			end
		end)

		RageUI.ButtonWithStyle("Caméra 26", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerEvent('cctv:camera', 23) 
			end
		end)

	end, function()
	end)


	RageUI.IsVisible(RMenu:Get('police', 'megaphone'), true, true, true, function()

		RageUI.ButtonWithStyle("Arrêter vous immédiatement !", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "stop_the_f_car", 0.6) 
			end
		end)

		RageUI.ButtonWithStyle("Conducteur, STOP votre véhicule", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "stop_vehicle-2", 0.6)
			end
		end)
		
		RageUI.ButtonWithStyle("Stop, les mains en l'air", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "dont_make_me", 0.6)
			end
		end)

		RageUI.ButtonWithStyle("Stop, plus un geste ! ou on vous tue", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "stop_dont_move", 0.6)
			end
		end)

		RageUI.ButtonWithStyle("Reste ici et ne bouge plus !", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "stay_right_there", 0.6)
			end
		end)

		RageUI.ButtonWithStyle("Disperssez vous de suite ! ", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
			if Selected then   
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 30.0, "disperse_now", 0.6)
			end
		end)

			end, function()
			end)

	
	
	
	
	
	
	RageUI.IsVisible(RMenu:Get('police', 'renfort'), true, true, true, function()

		RageUI.ButtonWithStyle("Petite demande",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				local raison = 'petit'
				local elements  = {}
				local playerPed = PlayerPedId()
				local coords  = GetEntityCoords(playerPed)
				local name = GetPlayerName(PlayerId())
			TriggerServerEvent('renfort', coords, raison)
		end
	end)

	RageUI.ButtonWithStyle("Moyenne demande",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
		if Selected then
			local raison = 'importante'
			local elements  = {}
			local playerPed = PlayerPedId()
			local coords  = GetEntityCoords(playerPed)
			local name = GetPlayerName(PlayerId())
		TriggerServerEvent('renfort', coords, raison)
	end
end)

RageUI.ButtonWithStyle("Grosse demande",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
	if Selected then
		local raison = 'omgad'
		local elements  = {}
		local playerPed = PlayerPedId()
		local coords  = GetEntityCoords(playerPed)
		local name = GetPlayerName(PlayerId())
	TriggerServerEvent('renfort', coords, raison)
end
end)

    end, function()
	end)

	RageUI.IsVisible(RMenu:Get('police', 'voiture'), true, true, true, function()
		local coords  = GetEntityCoords(PlayerPedId())
		local vehicle = ESX.Game.GetVehicleInDirection()

		RageUI.ButtonWithStyle("Rechercher une plaque",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
			if Selected then 
				LookupVehicle()
				RageUI.CloseAll()
			end
			end)

			RageUI.ButtonWithStyle("Mettre en fourrière", nil, { RightLabel = "→" }, true, function(Hovered, Active, Selected)
				if Selected then

					TaskStartScenarioInPlace(PlayerPedId(), 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)

					currentTask.busy = true
					currentTask.task = ESX.SetTimeout(10000, function()
						ClearPedTasks(playerPed)
						ESX.Game.DeleteVehicle(vehicle)
						ESX.ShowNotification("~o~Mise en fourrière effectuée")
						currentTask.busy = false
						Citizen.Wait(100) -- sleep the entire script to let stuff sink back to reality
					end)

					-- keep track of that vehicle!
					Citizen.CreateThread(function()
						while currentTask.busy do
							Citizen.Wait(1000)

							vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 3.0, 0, 71)
							if not DoesEntityExist(vehicle) and currentTask.busy then
								ESX.ShowNotification("~r~Le véhicule a bougé!")
								ESX.ClearTimeout(currentTask.task)
								ClearPedTasks(playerPed)
								currentTask.busy = false
								break
							end
						end
					end)
				end
			end)
	
	end, function()
	end)

	RageUI.IsVisible(RMenu:Get('police', 'chien'), true, true, true, function()

			RageUI.ButtonWithStyle("Sortir/Rentrer le chien",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
				if Selected then
					if not DoesEntityExist(policeDog) then
                        RequestModel(351016938)
                        while not HasModelLoaded(351016938) do Wait(0) end
                        policeDog = CreatePed(4, 351016938, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.0, -0.98), 0.0, true, false)
                        SetEntityAsMissionEntity(policeDog, true, true)
                        ESX.ShowNotification('~g~Chien Spawn')
                    else
                        ESX.ShowNotification('~r~Chien Rentrer')
                        DeleteEntity(policeDog)
                    end
				end
			end)

			RageUI.ButtonWithStyle("Assis",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
				if Selected then
					if DoesEntityExist(policeDog) then
                        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog), true) <= 5.0 then
                            if IsEntityPlayingAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 3) then
                                ClearPedTasks(policeDog)
                            else
                                loadDict('rcmnigel1c')
                                TaskPlayAnim(PlayerPedId(), 'rcmnigel1c', 'hailing_whistle_waive_a', 8.0, -8, -1, 120, 0, false, false, false)
                                Wait(2000)
                                loadDict("creatures@rottweiler@amb@world_dog_sitting@base")
                                TaskPlayAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 8.0, -8, -1, 1, 0, false, false, false)
                            end
                        else
                            ESX.ShowNotification('dog_too_far')
                        end
                    else
                        ESX.ShowNotification('no_dog')
                    end
				end
			end)

		RageUI.ButtonWithStyle("Cherche de drogue",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				if DoesEntityExist(policeDog) then
					if not IsPedDeadOrDying(policeDog) then
						if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
							local player, distance = ESX.Game.GetClosestPlayer()
							if distance ~= -1 then
								if distance <= 3.0 then
									local playerPed = GetPlayerPed(player)
									if not IsPedInAnyVehicle(playerPed, true) then
										TriggerServerEvent('esx_policedog:hasClosestDrugs', GetPlayerServerId(player))
									end
								end
							end
						end
					else
						ESX.ShowNotification('Votre chien est mort')
					end
				else
					ESX.ShowNotification('Vous n\'avez pas de chien')
				end
			end
		end)

		RageUI.ButtonWithStyle("Dire d'attaquer",nil, {RightLabel = nil}, true, function(Hovered, Active, Selected)
			if Selected then
				if DoesEntityExist(policeDog) then
					if not IsPedDeadOrDying(policeDog) then
						if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
							local player, distance = ESX.Game.GetClosestPlayer()
							if distance ~= -1 then
								if distance <= 3.0 then
									local playerPed = GetPlayerPed(player)
									if not IsPedInCombat(policeDog, playerPed) then
										if not IsPedInAnyVehicle(playerPed, true) then
											TaskCombatPed(policeDog, playerPed, 0, 16)
										end
									else
										ClearPedTasksImmediately(policeDog)
									end
								end
							end
						end
					else
						ESX.ShowNotification('Votre chien est mort')
					end
				else
					ESX.ShowNotification('Vous n\'avez pas de chien')
			end
		end
	end)

    end, function()
	end)

	Citizen.Wait(0)
	end
end)

function OpenIdentityCardMenu(player)

  if Config.EnableESXIdentity then

    ESX.TriggerServerCallback('esx_LaVaguejob:getOtherPlayerData', function(data)

      local jobLabel    = nil
      local sexLabel    = nil
      local sex         = nil
      local dobLabel    = nil
      local heightLabel = nil
      local idLabel     = nil

      if data.job.grade_label ~= nil and  data.job.grade_label ~= '' then
        jobLabel = 'Job : ' .. data.job.label .. ' - ' .. data.job.grade_label
      else
        jobLabel = 'Job : ' .. data.job.label
      end

      if data.sex ~= nil then
        if (data.sex == 'm') or (data.sex == 'M') then
          sex = 'Male'
        else
          sex = 'Female'
        end
        sexLabel = 'Sex : ' .. sex
      else
        sexLabel = 'Sex : Unknown'
      end

      if data.dob ~= nil then
        dobLabel = 'DOB : ' .. data.dob
      else
        dobLabel = 'DOB : Unknown'
      end

      if data.height ~= nil then
        heightLabel = 'Height : ' .. data.height
      else
        heightLabel = 'Height : Unknown'
      end

      if data.name ~= nil then
        idLabel = 'ID : ' .. data.name
      else
        idLabel = 'ID : Unknown'
      end

      local elements = {
        {label = ('name :') .. data.firstname .. " " .. data.lastname, value = nil},
        {label = sexLabel,    value = nil},
        {label = dobLabel,    value = nil},
        {label = heightLabel, value = nil},
        {label = jobLabel,    value = nil},
        {label = idLabel,     value = nil},
      }

      if data.drunk ~= nil then
        table.insert(elements, {label = ('Etylotest :') .. data.drunk .. '%', value = nil})
      end

      if data.licenses ~= nil then

        table.insert(elements, {label = '--- Licenses ---', value = nil})

        for i=1, #data.licenses, 1 do
          table.insert(elements, {label = data.licenses[i].label, value = nil})
        end

      end

      ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'citizen_interaction',
        {
          title    = _U('citizen_interaction'),
          align    = 'top-left',
          elements = elements,
        },
        function(data, menu)

        end,
        function(data, menu)
          menu.close()
        end
      )

    end, GetPlayerServerId(player))

  else

    ESX.TriggerServerCallback('esx_LaVaguejob:getOtherPlayerData', function(data)

      local jobLabel = nil

      if data.job.grade_label ~= nil and  data.job.grade_label ~= '' then
        jobLabel = 'Job : ' .. data.job.label .. ' - ' .. data.job.grade_label
      else
        jobLabel = 'Job : ' .. data.job.label
      end

        local elements = {
          {label = _U('name') .. data.name, value = nil},
          {label = jobLabel,              value = nil},
        }

      if data.drunk ~= nil then
        table.insert(elements, {label = _U('bac') .. data.drunk .. '%', value = nil})
      end

      if data.licenses ~= nil then

        table.insert(elements, {label = '--- Licenses ---', value = nil})

        for i=1, #data.licenses, 1 do
          table.insert(elements, {label = data.licenses[i].label, value = nil})
        end

      end

      ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'citizen_interaction',
        {
          title    = _U('citizen_interaction'),
          align    = 'top-left',
          elements = elements,
        },
        function(data, menu)

        end,
        function(data, menu)
          menu.close()
        end
      )

    end, GetPlayerServerId(player))

  end

end

function OpenBillingMenu()

	ESX.UI.Menu.Open(
	  'dialog', GetCurrentResourceName(), 'billing',
	  {
		title = "Amende"
	  },
	  function(data, menu)
	  
		local amount = tonumber(data.value)
		local player, distance = ESX.Game.GetClosestPlayer()
  
		if player ~= -1 and distance <= 3.0 then
  
		  menu.close()
		  if amount == nil then
			  ESX.ShowNotification("~r~Problèmes~s~: Montant invalide")
		  else
			local playerPed        = GetPlayerPed(-1)
			TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
			Citizen.Wait(5000)
			  TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_police', ('police'), amount)
			  Citizen.Wait(100)
			  ESX.ShowNotification("~r~Vous avez bien envoyer la facture")
		  end
  
		else
		  ESX.ShowNotification("~r~Problèmes~s~: Aucun joueur à proximitée")
		end
  
	  end,
	  function(data, menu)
		  menu.close()
	  end
	)
  end

function OpenVehicleInfosMenu(vehicleData)
	ESX.TriggerServerCallback('esx_policejob:getVehicleInfos', function(retrivedInfo)
		local elements = {{label = _U('plate', retrivedInfo.plate)}}

		if retrivedInfo.owner == nil then
			table.insert(elements, {label = _U('owner_unknown')})
		else
			table.insert(elements, {label = _U('owner', retrivedInfo.owner)})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_infos', {
			css      = 'police',
			title    = _U('vehicle_info'),
			align    = 'top-left',
			elements = elements
		}, nil, function(data, menu)
			menu.close()
		end)
	end, vehicleData.plate)
end

function LookupVehicle()
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'lookup_vehicle', {
		title = _U('search_database_title'),
	}, function(data, menu)
		local length = string.len(data.value)
		if not data.value or length < 2 or length > 8 then
			ESX.ShowNotification(_U('search_database_error_invalid'))
		else
			ESX.TriggerServerCallback('esx_policejob:getVehicleInfos', function(retrivedInfo)
				local elements = {{label = _U('plate', retrivedInfo.plate)}}
				menu.close()

				if not retrivedInfo.owner then
					table.insert(elements, {label = _U('owner_unknown')})
				else
					table.insert(elements, {label = _U('owner', retrivedInfo.owner)})
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_infos', {
					title    = _U('vehicle_info'),
					align    = 'top-left',
					elements = elements
				}, nil, function(data2, menu2)
					menu2.close()
				end)
			end, data.value)

		end
	end, function(data, menu)
		menu.close()
	end)
end

RegisterNetEvent('openf6')
AddEventHandler('openf6', function()
	RageUI.Visible(RMenu:Get('police', 'main'), not RageUI.Visible(RMenu:Get('police', 'main')))
end)

RegisterNetEvent('renfort:setBlip')
AddEventHandler('renfort:setBlip', function(coords, raison)
	if raison == 'petit' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-2\n~w~Importance: ~g~Légère.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		color = 2
	elseif raison == 'importante' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-3\n~w~Importance: ~o~Importante.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		color = 47
	elseif raison == 'omgad' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		PlaySoundFrontend(-1, "FocusIn", "HintCamSounds", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-99\n~w~Importance: ~r~URGENTE !\nDANGER IMPORTANT', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "FocusOut", "HintCamSounds", 1)
		color = 1
	end
	local blipId = AddBlipForCoord(coords)
	SetBlipSprite(blipId, 161)
	SetBlipScale(blipId, 1.2)
	SetBlipColour(blipId, color)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Demande renfort')
	EndTextCommandSetBlipName(blipId)
	Wait(80 * 1000)
	RemoveBlip(blipId)
end)

RegisterNetEvent('police:InfoService')
AddEventHandler('police:InfoService', function(service, nom)
	if service == 'prise' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Prise de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-8\n~w~Information: ~g~Prise de service.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'fin' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Fin de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-10\n~w~Information: ~g~Fin de service.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'pause' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Pause de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-6\n~w~Information: ~g~Pause de service.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'standby' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Mise en standby', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-12\n~w~Information: ~g~Standby, en attente de dispatch.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'control' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Control routier', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-48\n~w~Information: ~g~Control routier en cours.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'refus' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Refus d\'obtemperer', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-30\n~w~Information: ~g~Refus d\'obtemperer / Delit de fuite en cours.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'crime' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Crime en cours', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-31\n~w~Information: ~g~Crime en cours / poursuite en cours.', 'CHAR_CALL911', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	end
end)

-------------------------- Intéraction 

RegisterNetEvent('esx_policejob:handcuff')
AddEventHandler('esx_policejob:handcuff', function()

  IsHandcuffed    = not IsHandcuffed;
  local playerPed = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    if IsHandcuffed then

        RequestAnimDict('mp_arresting')
        while not HasAnimDictLoaded('mp_arresting') do
            Citizen.Wait(100)
        end

      TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)
      DisableControlAction(2, 37, true)
      SetEnableHandcuffs(playerPed, true)
      SetPedCanPlayGestureAnims(playerPed, false)
      FreezeEntityPosition(playerPed,  true)
      DisableControlAction(0, 24, true) -- Attack
      DisableControlAction(0, 257, true) -- Attack 2
      DisableControlAction(0, 25, true) -- Aim
      DisableControlAction(0, 263, true) -- Melee Attack 1
      DisableControlAction(0, 37, true) -- Select Weapon
      DisableControlAction(0, 47, true)  -- Disable weapon
      DisplayRadar(false)

    else

      ClearPedSecondaryTask(playerPed)
      SetEnableHandcuffs(playerPed, false)
      SetPedCanPlayGestureAnims(playerPed,  true)
      FreezeEntityPosition(playerPed, false)
      DisplayRadar(true)

    end

  end)
end)

RegisterNetEvent('esx_policejob:drag')
AddEventHandler('esx_policejob:drag', function(cop)
  IsDragged = not IsDragged
  CopPed = tonumber(cop)
end)

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then
      if IsDragged then
        local ped = GetPlayerPed(GetPlayerFromServerId(CopPed))
        local myped = GetPlayerPed(-1)
        AttachEntityToEntity(myped, ped, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
      else
        DetachEntity(GetPlayerPed(-1), true, false)
      end
	else 
		Citizen.Wait(250)
    end
  end
end)

RegisterNetEvent('esx_policejob:putInVehicle')
AddEventHandler('esx_policejob:putInVehicle', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

  if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

    local vehicle = GetClosestVehicle(coords.x,  coords.y,  coords.z,  5.0,  0,  71)

    if DoesEntityExist(vehicle) then

      local maxSeats = GetVehicleMaxNumberOfPassengers(vehicle)
      local freeSeat = nil

      for i=maxSeats - 1, 0, -1 do
        if IsVehicleSeatFree(vehicle,  i) then
          freeSeat = i
          break
        end
      end

      if freeSeat ~= nil then
        TaskWarpPedIntoVehicle(playerPed,  vehicle,  freeSeat)
      end

    end

  end

end)

RegisterNetEvent('esx_policejob:OutVehicle')
AddEventHandler('esx_policejob:OutVehicle', function(t)
  local ped = GetPlayerPed(t)
  ClearPedTasksImmediately(ped)
  plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
  local xnew = plyPos.x+2
  local ynew = plyPos.y+2

  SetEntityCoords(GetPlayerPed(-1), xnew, ynew, plyPos.z)
end)

-- Handcuff
Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then
      DisableControlAction(0, 142, true) -- MeleeAttackAlternate
      DisableControlAction(0, 30,  true) -- MoveLeftRight
      DisableControlAction(0, 31,  true) -- MoveUpDown
    end
  end
end)

----------------------------------------------- Fouiller

function OpenBodySearchMenu(player)
	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)
		local elements = {}

		for i=1, #data.accounts, 1 do
			if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then
				table.insert(elements, {
					label    = 'argent sale ', ESX.Math.Round(data.accounts[i].money),
					value    = 'black_money',
					itemType = 'item_account',
					amount   = data.accounts[i].money
				})

				break
			end
		end

		table.insert(elements, {label = 'Armes'})

		for i=1, #data.weapons, 1 do
			table.insert(elements, {
				label    = ESX.GetWeaponLabel(data.weapons[i].name)..' avec '..data.weapons[i].ammo.. ' Munitions',
				value    = data.weapons[i].name,
				itemType = 'item_weapon',
				amount   = data.weapons[i].ammo
			})
		end

		table.insert(elements, {label = 'Items'})

		for i=1, #data.inventory, 1 do
			if data.inventory[i].count > 0 then
				table.insert(elements, {
					label    = data.inventory[i].count..' x'..data.inventory[i].label,
					value    = data.inventory[i].name,
					itemType = 'item_standard',
					amount   = data.inventory[i].count
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search', {
			title    = 'fouille',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			if data.current.value then
				TriggerServerEvent('esx_policejob:confiscatePlayerItem', GetPlayerServerId(player), data.current.itemType, data.current.value, data.current.amount)
				OpenBodySearchMenu(player)
			end
		end, function(data, menu)
			menu.close()
		end)
	end, GetPlayerServerId(player))
end





local HasAlreadyEnteredMarker = false
local LastEntity              = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local CurrentTask             = {}

function OpenMenuProps()

ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'citizen_interaction',
			{
				title    = _U('traffic_interaction'),
				align    = 'top-left',
				elements = {
					{label = _U('cone'),		value = 'prop_roadcone02a'},
					{label = _U('barrier'),		value = 'prop_barrier_work05'},
					{label = _U('spikestrips'),	value = 'p_ld_stinger_s'},
					{label = _U('box'),			value = 'prop_boxpile_07d'},
					{label = _U('cash'),		value = 'hei_prop_cash_crate_half_full'}
				}
			}, function(data2, menu2)
				local model     = data2.current.value
				local playerPed = PlayerPedId()
				local coords    = GetEntityCoords(playerPed)
				local forward   = GetEntityForwardVector(playerPed)
				local x, y, z   = table.unpack(coords + forward * 1.0)

				if model == 'prop_roadcone02a' then
					z = z + 2.0
				end

				ESX.Game.SpawnObject(model, {
					x = x,
					y = y,
					z = z
				}, function(obj)
					SetEntityHeading(obj, GetEntityHeading(playerPed))
					PlaceObjectOnGroundProperly(obj)
				end)

			end, function(data2, menu2)
				menu2.close()
			end)
	end
	

	
	
	
	





-- BLIPS

Citizen.CreateThread(function()
    local policemap = AddBlipForCoord(439.14, -982.3, 30.69)
    SetBlipSprite(policemap, 60)
    SetBlipColour(policemap, 38)
    SetBlipScale(policemap, 0.99)
    SetBlipAsShortRange(policemap, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("[ETAT] Gendarmerie")
    EndTextCommandSetBlipName(policemap)
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
	--    RegisterNetEvent('esx_policejob:onDuty')
			if IsControlJustReleased(0 ,167) then
				RageUI.Visible(RMenu:Get('police', 'main'), not RageUI.Visible(RMenu:Get('police', 'main')))
			end
		else
			Citizen.Wait(1500)
	end
	end
end)