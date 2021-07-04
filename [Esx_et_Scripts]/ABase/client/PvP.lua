-- CLIENTSIDED --

AddEventHandler("playerSpawned", function()
    NetworkSetFriendlyFireOption(true)
    SetCanAttackFriendly(PlayerPedId(), true, true)
end)


---------- disable pnj Carjacking
Citizen.CreateThread(function()
    while true do
        Wait(800)

        local player = GetPlayerPed(-1)
        local PlayerPedId = PlayerPedId(player)

        local veh = GetVehiclePedIsTryingToEnter(PlayerPedId)
        if veh ~= nil and DoesEntityExist(veh) then

            local lockStatus = GetVehicleDoorLockStatus(veh)
            if lockStatus == 7 then
                SetVehicleDoorsLocked(veh, 2)
            end

            local ped = GetPedInVehicleSeat(veh, -1)
            if ped then
                SetPedCanBeDraggedOut(ped, false)
            end

        end
    end
end)


----- Disable aim assist

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		SetPlayerLockonRangeOverride(PlayerId(), 0.0)
	end
end)