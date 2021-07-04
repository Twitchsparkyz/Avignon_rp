ESX                           = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

end)

Config = {}

Config.CarLock = { 
    ControlKey          = 303,      -- Which button for Open and Lock vehicle ? 303 = U , for other keybinds look here https://docs.fivem.net/game-references/controls/
    NotCarFound         = "Your vehicle was not ~r~detected~w~",
    CarLocked           = "Your vehicle is ~r~Locked~s~",
    CarOpen             = "Your vehicle is ~g~Open~s~",
    LimiterIsOn         = "Limiteur ~b~On",
    LimiterIsOff        = "Limiteur ~b~Off",
    SearchAreaRadius    = 20.0,
    BlinkingLightsON    = true,     -- Flashing Headlights on Opening and Closing vehicle
    CarBleepOnOpen      = true,     -- Bleep at Open vehicle
    CarBleepOnClose     = true,     -- Bleep at Close vehicle
    CarBleepDistance    = 5.0,      -- Radius how far the sound is audible to other players
    CarBleepVolume      = 0.5,      -- Volume of the sound / MAX = 1.0 / MIN = 0.1
    SpeedLimiter        = true,     -- Option to turn a speedlimiter on or off
    SpeedLimiterKey     = 183,       -- Which button for the limiter? default: 29 = B , for other keybinds look here : https://docs.fivem.net/game-references/controls/
}

Citizen.CreateThread(function()
  local dict = "anim@mp_player_intmenu@key_fob@"
  RequestAnimDict(dict)
  while not HasAnimDictLoaded(dict) do
      Citizen.Wait(0)
  end
  while true do
    Citizen.Wait(0)
	if (IsControlJustPressed(1, 303)) then
		local coords = GetEntityCoords(GetPlayerPed(-1))
		local hasAlreadyLocked = false
		cars = ESX.Game.GetVehiclesInArea(coords, 30)
		local carstrie = {}
		local cars_dist = {}		
		notowned = 0
		if #cars == 0 then
			ESX.ShowNotification("Il n'y a pas de véhicule vous appartenant à proximité.")
		else
			for j=1, #cars, 1 do
				local coordscar = GetEntityCoords(cars[j])
				local distance = Vdist(coordscar.x, coordscar.y, coordscar.z, coords.x, coords.y, coords.z)
				table.insert(cars_dist, {cars[j], distance})
			end
			for k=1, #cars_dist, 1 do
				local z = -1
				local distance, car = 999
				for l=1, #cars_dist, 1 do
					if cars_dist[l][2] < distance then
						distance = cars_dist[l][2]
						car = cars_dist[l][1]
						z = l
					end
				end
				if z ~= -1 then
					table.remove(cars_dist, z)
					table.insert(carstrie, car)
				end
			end
			for i=1, #carstrie, 1 do
				local plate = ESX.Math.Trim(GetVehicleNumberPlateText(carstrie[i]))
				ESX.TriggerServerCallback('carlock:isVehicleOwner', function(owner)
					if owner and hasAlreadyLocked ~= true then
						local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(carstrie[i]))
						vehicleLabel = GetLabelText(vehicleLabel)
						local lock = GetVehicleDoorLockStatus(carstrie[i])
						if lock == 1 or lock == 0 then
							SetVehicleDoorShut(carstrie[i], 0, false)
							SetVehicleDoorShut(carstrie[i], 1, false)
							SetVehicleDoorShut(carstrie[i], 2, false)
							SetVehicleDoorShut(carstrie[i], 3, false)
							SetVehicleDoorsLocked(carstrie[i], 2)
							PlayVehicleDoorCloseSound(carstrie[i], 1)
							ESX.ShowNotification('Vous avez ~r~verrouillé~s~ votre ~y~Vehicule~s~.')
							if not IsPedInAnyVehicle(PlayerPedId(), true) then
								TaskPlayAnim(PlayerPedId(), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
							end
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							hasAlreadyLocked = true
						elseif lock == 2 then
							SetVehicleDoorsLocked(carstrie[i], 1)
							PlayVehicleDoorOpenSound(carstrie[i], 0)
							ESX.ShowNotification('Vous avez ~g~déverrouillé~s~ votre ~y~Vehicule~s~.')
							if not IsPedInAnyVehicle(PlayerPedId(), true) then
								TaskPlayAnim(PlayerPedId(), dict, "fob_click_fp", 8.0, 8.0, -1, 48, 1, false, false, false)
							end
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 2)
							Citizen.Wait(150)
							SetVehicleLights(carstrie[i], 0)
							hasAlreadyLocked = true
						end
					else
						notowned = notowned + 1
					end
					if notowned == #carstrie then
						ESX.ShowNotification("Il n'y a pas de véhicule vous appartenant à proximité.")
					end	
				end, plate)
			end			
		end
	end
  end
end)



-- Speed Limiter Event
Citizen.CreateThread(function()
	--CheckESX()
  	local resetSpeedOnEnter = true
  	while true do
		Citizen.Wait(0)
		local playerPed = GetPlayerPed(-1)
		local vehicle = GetVehiclePedIsIn(playerPed,false)
		if Config.CarLock.SpeedLimiter then
			if GetPedInVehicleSeat(vehicle, -1) == playerPed and IsPedInAnyVehicle(playerPed, false) then
				
			if resetSpeedOnEnter then
				maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
				SetEntityMaxSpeed(vehicle, maxSpeed)
				resetSpeedOnEnter = false
			end
			-- Speed Limiter Off
			if IsControlJustReleased(0,Config.CarLock.SpeedLimiterKey) and IsControlPressed(0,131) then
				maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
				SetEntityMaxSpeed(vehicle, maxSpeed)
				ESX.ShowHelpNotification("~BLIP_12~ "..Config.CarLock.LimiterIsOff, 2000)
			-- Speed Limiter On
			elseif IsControlJustReleased(0,Config.CarLock.SpeedLimiterKey) then
				cruise = GetEntitySpeed(vehicle)
				SetEntityMaxSpeed(vehicle, cruise)
				cruise = math.floor(cruise * 3.6 + 0.5)
				ESX.ShowHelpNotification("~BLIP_11~ "..Config.CarLock.LimiterIsOn.." ~b~"..cruise.."~w~ km/h", 4000)
			end
			else
			resetSpeedOnEnter = true
			end
		end
  end
end)