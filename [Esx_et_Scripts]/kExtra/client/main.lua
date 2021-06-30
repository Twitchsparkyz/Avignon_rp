local Extra = false
RMenu.Add('menu', 'extra', RageUI.CreateMenu("Extra", "~b~Menu EXTRA"))
RMenu:Get('menu', 'extra').Closed = function()
    Extra = false
end;

function AddMenuExtra()
    Extra = true
    Citizen.CreateThread(function()
    	while Extra do
            RageUI.IsVisible(RMenu:Get('menu', 'extra'), true, true, true, function()

				if IsPedInAnyVehicle(PlayerPedId(), false) then
					RageUI.Separator("↓↓↓ ~b~Menu Extra ~w~↓↓↓")
					
					for i = 1,20 do 
						if DoesExtraExist(GetVehiclePedIsIn(PlayerPedId(), 0), i) then
							RageUI.Checkbox("Extra "..i, "Permet d'ajoutée des Extras", IsVehicleExtraTurnedOn(GetVehiclePedIsIn(PlayerPedId(), 0), i), { Style = RageUI.CheckboxStyle.Tick }, function(Hovered, Selected, Active, Checked)
							end, function()
								SetVehicleExtra(GetVehiclePedIsIn(PlayerPedId(), 0), i, false)
							end, function()
								SetVehicleExtra(GetVehiclePedIsIn(PlayerPedId(), 0), i, true)
							end)
						end
					end
				else
					RageUI.Separator("~r~Vous Devez Être Dans un Véhicule")
				end
			end,  function()
            end)
            Wait(1)
        end
    end)
end

Citizen.CreateThread(function()
	while true do
		if IsControlJustPressed(1, 56) then
			RageUI.Visible(RMenu:Get('menu', 'extra'), not RageUI.Visible(RMenu:Get('menu', 'extra')))
			AddMenuExtra()            
		end
		Citizen.Wait(1)
	end
end)