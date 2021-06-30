---------------------------
-- Configuration du menu --
---------------------------

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Matériel", "~b~Selectionnez un outil à prendre")       
_menuPool:Add(mainMenu)
_menuPool:MouseControlsEnabled (false);
_menuPool:MouseEdgeEnabled (false);
_menuPool:ControlDisablingEnabled(false);
_menuPool:MouseControlsEnabled (false);

--------------------------------------------------------------------------------------
-- Fonctions d'affichage notification + chargement des animations et des modèles 3D --
--------------------------------------------------------------------------------------

function hintToDisplay(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

LoadAnim = function(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		
		Citizen.Wait(1)
	end
end

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

LoadModel = function(model)
	while not HasModelLoaded(model) do
		RequestModel(model)
		
		Citizen.Wait(1)
	end
end

---------------
-- Variables --
---------------

local ped = GetPlayerPed(-1)
local sorti = false

-- Configuration des vehicules a détecter : (Changer ici si ajout ou retrait de véhicules)

hash2 = {
	('POLICE'),
	('POLICE2'),
	('traficgn'),
	('vsavcube'),
	('vsav'),
	('flatbed3'),
}


------------
--- Code ---
------------

local bouclecone = false
local closestObject 
local vehicle

function prendre(propObject, hash)
 
	LoadAnim("move_strafe@melee_large_weapon_fps_gclub")
	TaskPlayAnim(PlayerPedId(), 'move_strafe@melee_large_weapon_fps_gclub', 'walk', 8.0, 8.0, -1, 50, 0, false, false, false)
	local pos = GetEntityCoords(GetPlayerPed(-1))
	local search
	for i, v in pairs(hash2) do 	    
		local result = GetClosestVehicle(pos['x'], pos['y'], pos['z'], 12.0, GetHashKey(v), 70)
		if result ~= 0 then
			vehicle = result
		    break
	    end
	end

	local detection = 3.3
	NetworkRequestControlOfEntity(propObject)
    
	
	if IsEntityAttachedToEntity(GetHashKey('prop_roadcone01a'), GetPlayerPed(-1)) == false then
		AttachEntityToEntity(propObject, GetPlayerPed(-1), GetPedBoneIndex(PlayerPedId(),  28422), -0.00, -0.0, -0.0, -90.0, 0.0, 0.0, 0.0, false, false, true, false, 2, true)
	end
	
	while IsEntityAttachedToEntity(propObject, GetPlayerPed(-1)) do

		Citizen.Wait(5)

		if IsPedDeadOrDying(GetPlayerPed(-1)) then
			ClearPedTasksImmediately(GetPlayerPed(-1))
			DetachEntity(propObject, true, true)
			sorti = false
		end
	     
		if DoesEntityExist(vehicle) then
			local coords = GetEntityCoords(vehicle) + GetEntityForwardVector(vehicle) * - detection                    
			if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), coords.x , coords.y, coords.z, true) <= 1.0 then
				hintToDisplay('Appuyez sur ~INPUT_CONTEXT~ pour ranger le cone')
				if (IsControlJustPressed(0, 38)) then
					sorti = false
					ClearPedTasksImmediately(GetPlayerPed(-1))                                                                                                                                                                                          

					DetachEntity(propObject, true, true)
					DeleteEntity(propObject)
					Citizen.Wait(500)
				end
			else
				hintToDisplay('Appuyez sur ~INPUT_CONTEXT~ pour poser le cone')
			end
		end

		if IsControlJustPressed(0, 38) then
			ClearPedTasksImmediately(GetPlayerPed(-1))
            DetachEntity(propObject, true, false)
            FreezeEntityPosition(propObject, true)
            PlaceObjectOnGroundProperly(propObject)
            sorti = false
		end
	end	
end


Citizen.CreateThread(function()
    while true do
		Citizen.Wait(5)
		local pos = GetEntityCoords(GetPlayerPed(-1))
		local closestObject = GetClosestObjectOfType(pos, 1.0, GetHashKey("prop_roadcone01a"), 70)
		if sorti == false then
			if DoesEntityExist(closestObject) then	
				hintToDisplay("Appuyez sur ~INPUT_VEH_DUCK~ pour reprendre le cone")		
				if (IsControlJustPressed(0, 73)) then
					SetVehicleDoorOpen(vehicle, 5, false, false)
					sorti = true
					prendre(closestObject, vehicle)	
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
  while true do                                                                                                      
	local pos = GetEntityCoords(GetPlayerPed(-1))
    
	for i, v in pairs(hash2) do 
		local result = GetClosestVehicle(pos['x'], pos['y'], pos['z'], 12.0, GetHashKey(v), 70)
		if result ~= 0 then
			vehicle = result
		    break
	    end
	end
	local detection = 3.3
	local closestObject = GetClosestObjectOfType(pos, 2.0, GetHashKey("prop_roadcone01a"), 70)                                                                       
    
	if DoesEntityExist(vehicle) then
        local coords = GetEntityCoords(vehicle) + GetEntityForwardVector(vehicle) * - detection                    
	    if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), coords.x , coords.y, coords.z, true) <= 1.0 then  
			_menuPool:ProcessMenus()
			if sorti == false then
				hintToDisplay("Appuyez sur ~INPUT_CONTEXT~ pour prendre un cone")                                       
				if IsControlJustPressed(0, 38) then
					SetVehicleDoorOpen(vehicle, 5, false, false)
					Wait(500)
					cones(mainMenu)
				    mainMenu:Visible(not mainMenu:Visible())	
				end	
			end	   
	    end
	end
  Citizen.Wait(1)
  end
end)

function cones(menu)
	mainMenu:Clear()
	
	local newitem1 = NativeUI.CreateItem("Cones", "Prendre un cone.")
	mainMenu:AddItem(newitem1)
	
	local newitem2 = NativeUI.CreateItem("Fermer le coffre", "Fermer le coffre.")
	mainMenu:AddItem(newitem2)
	
	menu.OnItemSelect = function(menu, item)

		if item == newitem1 then
			local obj = CreateObject(GetHashKey('prop_roadcone01a'), GetEntityCoords(PlayerPedId()), true)		
			LoadModel('prop_roadcone01a')	
			sorti = true
			prendre(obj, vehicle)					
			--mainMenu:Visible(not mainMenu:Visible())
		elseif item == newitem2 then
			SetVehicleDoorShut(vehicle, 5, false, false)
			--mainMenu:Visible(not mainMenu:Visible())
		end
	end
end