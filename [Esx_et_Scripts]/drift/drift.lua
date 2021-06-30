local kmh = 3.2
local mph = 2.13693629
local carspeed = 0
-----------------
-----------------
-----------------
local driftmode = true -- on/off 
local speed = kmh -- ou mph
local drift_speed_limit = 160.0 
--local toggle = 81 -- ,

-- Script
Citizen.CreateThread(function()

	while true do

		Citizen.Wait(1)

		if IsControlJustPressed(1, -1) then

			driftmode = not driftmode

			if driftmode then
				TriggerEvent("chatMessage", 'MODE DRIFT', { 255,255,255}, '^2ON')
			else
				TriggerEvent("chatMessage", 'MODE DRIFT', { 255,255,255}, '^1OFF')
			end
		end

		if driftmode then

			if IsPedInAnyVehicle(GetPed(), false) then

				CarSpeed = GetEntitySpeed(GetCar()) * speed

				if GetPedInVehicleSeat(GetCar(), -1) == GetPed() then

					if CarSpeed <= drift_speed_limit then  

						if IsControlPressed(1, 21) then
		
							SetVehicleReduceGrip(GetCar(), true)
		
						else
		
							SetVehicleReduceGrip(GetCar(), false)
		
						end
					end
				end
			end
		end
	end
end)


-- Functions
function GetPed() return GetPlayerPed(-1) end
function GetCar() return GetVehiclePedIsIn(GetPlayerPed(-1),false) end