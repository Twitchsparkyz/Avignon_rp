ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)









--------------------------------------------------
--------------------MEDICAMENTS-------------------
--------------------------------------------------

ESX.RegisterUsableItem('buprenorphine', function(source)				--Buprénorphine = annule les effets des drogues.
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('buprenorphine', 1)

	TriggerClientEvent('esx_status:remove', source, 'drug', 350000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 150000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_buprenorphine'))
end)

ESX.RegisterUsableItem('disulfirame', function(source)					--Disulfirame = annule les effets de l'alcool.
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('disulfirame', 1)

	TriggerClientEvent('esx_status:remove', source, 'drunk', 350000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 150000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_disulfirame'))
end)










--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ BOISSON SHOP ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

ESX.RegisterUsableItem('canettco', function(source)						--Cannette de coca
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('canettco', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_canettco'))
end)
 
ESX.RegisterUsableItem('canettic', function(source)						--Cannette d'Ice Tea
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('canettic', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_canettic'))
end)

ESX.RegisterUsableItem('canettoa', function(source)						--Cannette d'Oasis
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('canettoa', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_canettoa'))
end)

ESX.RegisterUsableItem('canettor', function(source)						--Cannette d'Orangina
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('canettor', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_canettor'))
end)

ESX.RegisterUsableItem('water', function(source)						--Eau
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 175000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_water'))
end)










--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ NOURRITURE SHOP ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

ESX.RegisterUsableItem('bounty', function(source)						--Bounty
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bounty', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_bounty'))
end)

ESX.RegisterUsableItem('kinderbueno', function(source)					--Kinder Bueno
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kinderbueno', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_kinderbueno'))
end)

ESX.RegisterUsableItem('kindercountry', function(source)				--Kinder Country
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kindercountry', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_kindercountry'))
end)

ESX.RegisterUsableItem('mars', function(source)							--Mars
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mars', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_mars'))
end)

ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)					           --Pain

	TriggerClientEvent('esx_status:add', source, 'hunger', 175000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_bread'))
end)

ESX.RegisterUsableItem('pringlesba', function(source)					--Pringles BBQ
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pringlesba', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pringlesba'))
end)

ESX.RegisterUsableItem('pringlescr', function(source)					--Pringles Crudités
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pringlescr', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pringlescr'))
end)

ESX.RegisterUsableItem('pringlesfr', function(source)					--Pringles Frommage
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pringlesfr', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pringlesfr'))
end)

ESX.RegisterUsableItem('pringlespo', function(source)					--Pringles Poulet
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pringlespo', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pringlespo'))
end)
 
ESX.RegisterUsableItem('sandwichbo', function(source)					--Sandwich Boeuf
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwichbo', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_sandwichbo'))
end)

ESX.RegisterUsableItem('sandwichoe', function(source)					--Sandwich Oeuf-Crudité
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwichoe', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_sandwichoe'))
end)

ESX.RegisterUsableItem('sandwichpo', function(source)					--Sandwich Poulet
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwichpo', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_sandwichpo'))
end)

ESX.RegisterUsableItem('snickers', function(source)						--Snickers
	local xPlayer = ESX.GetPlayerFromId(source)
					--Snickers
	xPlayer.removeInventoryItem('snickers', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_snickers'))
end)

ESX.RegisterUsableItem('twix', function(source)							--Twix
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('twix', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 5000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_twix'))
end)










--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ DOLCE VITA --▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

ESX.RegisterUsableItem('panzzanip', function(source)					--Pattes au Pesto
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('panzzanip', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_panzzanip'))
end)

ESX.RegisterUsableItem('panzzani', function(source)						--Pattes en sauces
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('panzzani', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_panzzani'))
end)

ESX.RegisterUsableItem('pizzaqfr', function(source)						--Pizza 4 fromages
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzaqfr', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pizzaqfr'))
end)

ESX.RegisterUsableItem('pizzaan', function(source)						--Pizza Anchois
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzaan', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pizzaan'))
end)

ESX.RegisterUsableItem('pizzaf', function(source)						--Pizza Frommage
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzaf', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pizzaf'))
end)

ESX.RegisterUsableItem('pizzama', function(source)						--Pizza Margherita
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzama', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pizzama'))
end)

ESX.RegisterUsableItem('pizzamo', function(source)						--Pizza Mozzarella
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzamo', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pizzamo'))
end)

ESX.RegisterUsableItem('pizzaro', function(source)						--Pizza Royale
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizzaro', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pizzaro'))
end)










--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ BAHAMAS MAMAS ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

--------------------------------------------------
------------------BOISSON ALCOOLISEE--------------
--------------------------------------------------

ESX.RegisterUsableItem('get', function(source)							--Get 27
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('get', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_get'))
end)

ESX.RegisterUsableItem('golem', function(source)						--Golem
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('golem', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_golem'))
end)

ESX.RegisterUsableItem('jager', function(source)						--Jager
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jager', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_jager'))
end)

ESX.RegisterUsableItem('jagercerbere', function(source)					--Jager beer
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jagercerbere', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_jagercerbere'))
end)

ESX.RegisterUsableItem('jagerbomb', function(source)					--Jager Bomb
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jagerbomb', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_jagerbomb'))
end)

ESX.RegisterUsableItem('magnum', function(source)						--Magnum de champagne
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('magnum', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_magnum'))
end)

ESX.RegisterUsableItem('metreshooter', function(source)					--Mètre de shooter
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('metreshooter', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_metreshooter'))
end)

ESX.RegisterUsableItem('mojito', function(source)						--Mojito
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mojito', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_mojito'))
end)

ESX.RegisterUsableItem('pastis', function(source)						--Pastis 51
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pastis', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_pastis'))
end)

ESX.RegisterUsableItem('rhum', function(source)							--Rhum
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rhum', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_rhum'))
end)

ESX.RegisterUsableItem('rhumcoca', function(source)						--Rhum Coca
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rhumcoca', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_rhumcoca'))
end)

ESX.RegisterUsableItem('rhumfruit', function(source)					--Rhum jus de fruit
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rhumfruit', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_rhumfruit'))
end)

ESX.RegisterUsableItem('teqpaf', function(source)						--Tequilla paf
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('teqpaf', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_teqpaf'))
end)

ESX.RegisterUsableItem('tequila', function(source)						--Tequilla
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tequila', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

ESX.RegisterUsableItem('vodka', function(source)						--Vodka
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vodka', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_vodka'))
end)

ESX.RegisterUsableItem('vodkaenergy', function(source)					--Vodka Energy
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vodkaenergy', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_vodkaenergy'))
end)

ESX.RegisterUsableItem('vodkafruit', function(source)					--Vodka jus de fruit
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vodkafruit', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_vodkafruit'))
end)

ESX.RegisterUsableItem('whisky', function(source)						--Whisky
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whisky', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_whisky'))
end)

ESX.RegisterUsableItem('whiskycoca', function(source)					--Whisky Coca
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whiskycoca', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_whiskycoca'))
end)





--------------------------------------------------
------------------BOISSON SANS ALCOOL-------------
--------------------------------------------------

ESX.RegisterUsableItem('cafe', function(source)							--Café
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cafe', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_cafe'))
end)

ESX.RegisterUsableItem('chocolatchaud', function(source)				--Chocolat Chaud
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocolatchaud', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_chocolatchaud'))
end)

ESX.RegisterUsableItem('cola', function(source)							--Cola
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_cola'))
end)

ESX.RegisterUsableItem('diabolo', function(source)						--Diabolo
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('diabolo', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_diabolo'))
end)

ESX.RegisterUsableItem('drpepper', function(source)						--Dr Pepper
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('drpepper', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)

ESX.RegisterUsableItem('energy', function(source)						--Energie Redbull
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('energy', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)

ESX.RegisterUsableItem('icetea', function(source)						--Ice Tea
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icetea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)

ESX.RegisterUsableItem('jusfruit', function(source)						--Jus de Fruit
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jusfruit', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)

ESX.RegisterUsableItem('limonade', function(source)						--Limonade
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('limonade', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)

ESX.RegisterUsableItem('soda', function(source)							--Soda
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('soda', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
end)





--------------------------------------------------
------------------NOURRITURE----------------------
--------------------------------------------------

ESX.RegisterUsableItem('bolcacahuetes', function(source)				--Bol de cacahuète
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolcacahuetes', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_bolcacahuetes'))
end)

ESX.RegisterUsableItem('bolchips', function(source)						--Bol de chips
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolchips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_bolchips'))
end)

ESX.RegisterUsableItem('bolnoixcajou', function(source)					--Bol de noix de cajou
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolnoixcajou', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_bolnoixcajou'))
end)

ESX.RegisterUsableItem('bolpistache', function(source)					--Bol de pistache
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolpistache', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_bolpistache'))
end)

ESX.RegisterUsableItem('grapperaisin', function(source)					--Grappe de raisin
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('grapperaisin', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_grapperaisin'))
end)

ESX.RegisterUsableItem('mixapero', function(source)						--Mix Apéro
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mixapero', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_mixapero'))
end)

ESX.RegisterUsableItem('saucisson', function(source)					--Saucisson
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('saucisson', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_saucisson'))
end)










--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ BOISSON VIGNERON ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

ESX.RegisterUsableItem('grand_cru', function(source)					--Grand cru
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('grand_cru', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_grand_cru'))
end)

ESX.RegisterUsableItem('vine', function(source)							--Vin
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vine', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 200000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 20000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_vine'))
end)










--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ DROGUE ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

ESX.RegisterUsableItem('coke', function(source)							--Cocaïne
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coke', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 100000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 100000)
	TriggerClientEvent('esx_drugeffects:onCoke', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_coke'))
end)



ESX.RegisterUsableItem('crack', function(source)						--Eau de Yuyu
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('crack', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 650000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 100000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_crack'))
end)

ESX.RegisterUsableItem('ecstasy', function(source)						--Ecstasy
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('ecstasy', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 400000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 100000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 100000)
	TriggerClientEvent('esx_drugeffects:onCoke', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_ecstasy'))
end)

ESX.RegisterUsableItem('billet', function(source)						--Héroïne
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('billet', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 500000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 150000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 150000)
	TriggerClientEvent('esx_drugeffects:onOpium', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_billet'))
end)

ESX.RegisterUsableItem('ketamine', function(source)						--Kétamine
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('ketamine', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 125000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 125000)
	TriggerClientEvent('esx_drugeffects:onMeth', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_ketamine'))
end)

ESX.RegisterUsableItem('meth', function(source)							--Meth
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('meth', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 300000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 125000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 125000)
	TriggerClientEvent('esx_drugeffects:onMeth', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_meth'))
end)

ESX.RegisterUsableItem('opium', function(source)						--Opium
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('opium', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 500000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 150000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 150000)
	TriggerClientEvent('esx_drugeffects:onOpium', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_opium'))
end)

ESX.RegisterUsableItem('weed', function(source)							--Weed
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('weed', 1)

	TriggerClientEvent('esx_status:add', source, 'drug', 150000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 75000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 75000)
	TriggerClientEvent('esx_drugeffects:onWeed', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_weed'))
end)



--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬           FIN           ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--
--▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬--


--------------------------------------------------
------------------Fumé une cigarette--------------
--------------------------------------------------

ESX.RegisterUsableItem('marlboro', function(source)
local xPlayer = ESX.GetPlayerFromId(source)

xPlayer.removeInventoryItem('marlboro', 1)

	TriggerClientEvent('esx_status:remove', source, 'thirst', 10000)
	TriggerClientEvent('esx_status:remove', source, 'hunger', 10000) 
	TriggerClientEvent('esx_cigarett:startSmoke', source)
	--TriggerClientEvent('esx:showNotification', source, _U('used_marlboro'))
end)





TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local target = tonumber(args[1])
		
		-- is the argument a number?
		if target ~= nil then
			
			-- is the number a valid player?
			if GetPlayerName(target) then
				print('esx_basicneeds: ' .. GetPlayerName(source) .. ' is healing a player!')
				TriggerClientEvent('esx_basicneeds:healPlayer', target)
				TriggerClientEvent('chatMessage', target, "HEAL", {223, 66, 244}, "You have been healed!")
			else
				TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Player not found!")
			end
		else
			TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Incorrect syntax! You must provide a valid player ID")
		end
	else
		-- heal source
		print('esx_basicneeds: ' .. GetPlayerName(source) .. ' is healing!')
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Insufficient Permissions.")
end, {help = "Heal a player, or yourself - restores thirst, hunger and health."})