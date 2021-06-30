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

--JOB2
RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
	ESX.PlayerData.job2 = job2
end)


---------------- FONCTIONS ------------------

RMenu.Add('Gang', 'coffre', RageUI.CreateMenu("Gang", "Coffre"))
RMenu.Add('Gang', 'Retrait argent Sale', RageUI.CreateSubMenu(RMenu:Get('Gang', 'coffre'), "Gang", "coffre"))
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Gang', 'coffre'), true, true, true, function()

			if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'Gang') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'Gang') then

            RageUI.ButtonWithStyle("Prendre Objet(s)",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
                if Selected then
                    OpenGetStocksGangMenu()
					RageUI.CloseAll()
                end
			end)
		end
			
			
			if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'Gang') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'Gang')  then 

            RageUI.ButtonWithStyle("Déposer Objet(s)",nil, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
				if Selected then
					OpenPutStocksGangMenu()
					RageUI.CloseAll()
                end
			end)
		end
			
		
			RageUI.ButtonWithStyle("Prendre Arme(s)",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
				if Selected then
					OpenGetWeaponMenu()
					RageUI.CloseAll()
				end
			end)
		
			
		
			RageUI.ButtonWithStyle("Déposer Arme(s)",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
				if Selected then
					OpenPutWeaponMenu()
					RageUI.CloseAll()
				end
			end)
			
			
			
---=====================================	RETRAIT ARGENT SALE ======================		
			
			
			if ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'Gang' and ESX.PlayerData.job2.grade_name == 'boss'  then
			RageUI.ButtonWithStyle("Retrait argent Sale", nil, {RightLabel = "→"},true, function()
				end, RMenu:Get('Gang', 'Retrait argent Sale'))
				else
				RageUI.ButtonWithStyle('Retrait argent Sale', description, {RightBadge = RageUI.BadgeStyle.Lock }, false, function(Hovered, Active, Selected)
						if (Selected) then
							end 
						end)
					end	
			
			
---===================================== FIN RETRAIT ARGENT SALE ======================				
			
		
			RageUI.ButtonWithStyle("Déposer Argent sale",nil, {RightLabel = ""}, true, function(Hovered, Active, Selected)
				if Selected then
					OpenPutBlackMoney()
					RageUI.CloseAll()
				end
			end)
			
		




        end, function()
		
        end)
		
                        



---===================================== MENU RETRAIT ARGENT SALE BOSS ======================	
			
			RageUI.IsVisible(RMenu:Get('Gang', 'Retrait argent Sale'), true, true, true, function()
			    
			    
			RageUI.ButtonWithStyle("Prendre Argent sale",nil, {RightLabel = ""}, true, function()
				if Selected then
					OpenGetBlackMoney()
					RageUI.CloseAll()
				end
					end)
					
					end, function()
			end)
			
			Citizen.Wait(0)
                        end 
                        end, function()
                            end)
--=====================================================================================	





---------------------------------------------

local position = {
    {x = 18.46, y = -921.26, z = 123.08}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do
            if (ESX.PlayerData.job and ESX.PlayerData.job.name == 'Gang') or (ESX.PlayerData.job2 and ESX.PlayerData.job2.name == 'Gang') then 

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
            DrawMarker(2, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 255, 255, 0, 1, 2, 0, nil, nil, 0)

        
            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au coffre")
                if IsControlJustPressed(1,51) then
                    RageUI.Visible(RMenu:Get('Gang', 'coffre'), not RageUI.Visible(RMenu:Get('Gang', 'coffre')))
                end
            end
        end
    end
    end
end)

function OpenGetStocksGangMenu()
	ESX.TriggerServerCallback('esx_Gangjob:prendreitem', function(items)
		local elements = {}

		for i=1, #items, 1 do
            table.insert(elements, {
                label = 'x' .. items[i].count .. ' ' .. items[i].label,
                value = items[i].name
            })
        end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'Gang',
			title    = 'Gang stockage',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count', {
                css      = 'Gang',
				title = 'quantité'
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if not count then
					ESX.ShowNotification('quantité invalide')
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('esx_Gangjob:prendreitems', itemName, count)

					Citizen.Wait(300)
					OpenGetStocksGangMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end

function OpenPutStocksGangMenu()
	ESX.TriggerServerCallback('esx_Gangjob:inventairejoueur', function(inventory)
		local elements = {}

		for i=1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {
					label = item.label .. ' x' .. item.count,
					type = 'item_standard',
					value = item.name
				})
			end
		end
		end)
		end
		
--------------------------------------------------------------------		
--------------------------------------------------------------------
--                                                                --
--                        ARGENT SALE                             --
--		                                                          --
--------------------------------------------------------------------
--------------------------------------------------------------------
function OpenGetBlackMoney()

  ESX.TriggerServerCallback('esx_Gangjob:getBlackMoneySociety', function(inventory)

    local elements = {}

    table.insert(elements, {label = 'Argent sale : ' .. inventory.blackMoney, type = 'item_account', value = 'black_money'})

    for i=1, #inventory.items, 1 do

      local item = inventory.items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end
    end

    for i=1, #inventory.weapons, 1 do
      local weapon = inventory.weapons[i]
      table.insert(elements, {label = ESX.GetWeaponLabel(weapon.naq), type = 'item_weapon', value = weapon.name})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'get_black_money',
      {
        title    = 'Inventaire',
        align    = 'left',
        elements = elements,
      },
      function(data, menu)
        if data.current.type == 'item_weapon' then
          menu.close()
          TriggerServerEvent('esx_Gangjob:getItem', data.current.type, data.current.value, data.current.ammo)
          ESX.SetTimeout(300, function()
            OpenGetBlackMoney()
          end)

        else
          ESX.UI.Menu.Open(
            'dialog', GetCurrentResourceName(), 'get_item_count',
            {
              title = 'Montant',
            },
            function(data2, menu)

              local quantity = tonumber(data2.value)

              if quantity == nil then
                ESX.ShowNotification('Montant invalide')
              else
                menu.close()
                TriggerServerEvent('esx_Gangjob:getItem', data.current.type, data.current.value, quantity)
                ESX.SetTimeout(300, function()
                  OpenGetBlackMoney()
                end)
              end
            end,
            function(data2,menu)
              menu.close()
            end
          )
        end
      end,
      function(data, menu)
        menu.close()
      end
    )
  end)
end




function OpenPutBlackMoney()

  ESX.TriggerServerCallback('esx_Gangjob:getPlayerInventory2', function(inventory)

    local elements = {}

    table.insert(elements, {label = 'Argent sale : ' .. inventory.blackMoney, type = 'item_account', value = 'black_money'})

    local playerPed  = GetPlayerPed(-1)
    local weaponList = ESX.GetWeaponList()

    for i=1, #weaponList, 1 do
      local weaponHash = GetHashKey(weaponList[i].name)

      if HasPedGotWeapon(playerPed,  weaponHash,  false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
        local ammo = GetAmmoInPedWeapon(playerPed, weaponHash)
        table.insert(elements, {label = weaponList[i].label .. ' [' .. ammo .. ']', type = 'item_weapon', value = weaponList[i].name, ammo = ammo})
      end
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'put_black_money',
      {
        title    = 'Inventaire',
        align    = 'left',
        elements = elements,
      },
      function(data, menu)

        if data.current.type == 'item_weapon' then

          menu.close()

          TriggerServerEvent('esx_Gangjob:putItem', data.current.type, data.current.value, data.current.ammo)

          ESX.SetTimeout(300, function()
            OpenPutBlackMoney()
          end)
        else

          ESX.UI.Menu.Open(
            'dialog', GetCurrentResourceName(), 'put_item_count',
            {
              title = 'Montant',
            },
            function(data2, menu)

              menu.close()

              TriggerServerEvent('esx_Gangjob:putItem', data.current.type, data.current.value, tonumber(data2.value))

              ESX.SetTimeout(300, function()
                OpenPutBlackMoney()
              end)

            end,
            function(data2,menu)
              menu.close()
            end
          )

        end

      end,
      function(data, menu)
        menu.close()
      end)
 end)
 end
 
function OpenGetWeaponMenu()

	ESX.TriggerServerCallback('esx_Gangjob:getArmoryWeapons', function(weapons)
		local elements = {}

		for i=1, #weapons, 1 do
			if weapons[i].count > 0 then
				table.insert(elements, {
					label = 'x' .. weapons[i].count .. ' ' .. ESX.GetWeaponLabel(weapons[i].name),
					value = weapons[i].name
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_get_weapon',
		{
			title    = 'Prendre Arme',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)

			menu.close()

			ESX.TriggerServerCallback('esx_Gangjob:removeArmoryWeapon', function()
				OpenGetWeaponMenu()
			end, data.current.value)

		end, function(data, menu)
			menu.close()
		end)
	end)

end

function OpenPutWeaponMenu()
	local elements   = {}
	local playerPed  = PlayerPedId()
	local weaponList = ESX.GetWeaponList()

	for i=1, #weaponList, 1 do
		local weaponHash = GetHashKey(weaponList[i].name)

		if HasPedGotWeapon(playerPed, weaponHash, false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
			table.insert(elements, {
				label = weaponList[i].label,
				value = weaponList[i].name
			})
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_put_weapon',
	{
		title    = 'Déposer Arme',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)

		menu.close()

		ESX.TriggerServerCallback('esx_Gangjob:addArmoryWeapon', function()
			OpenPutWeaponMenu()
		end, data.current.value, true)

	end, function(data, menu)
		menu.close()
	end)
end


function OpenPutStocksGangMenu()
	ESX.TriggerServerCallback('esx_Gangjob:inventairejoueur', function(inventory)
		local elements = {}

		for i=1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {
					label = item.label .. ' x' .. item.count,
					type = 'item_standard',
					value = item.name
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu', {
            css      = 'police',
			title    = 'inventaire',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			local itemName = data.current.value

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count', {
                css      = 'police',
				title = 'quantité'
			}, function(data2, menu2)
				local count = tonumber(data2.value)

				if not count then
					ESX.ShowNotification('quantité invalide')
				else
					menu2.close()
					menu.close()
					TriggerServerEvent('esx_Gangjob:stockitem', itemName, count)

					Citizen.Wait(300)
					OpenPutStocksLSPDMenu()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
		end)
	end)
end