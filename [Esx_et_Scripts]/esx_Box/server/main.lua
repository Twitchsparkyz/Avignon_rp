ESX = nil

local Bet = Config.AllowedBets[1]
local Fighters = {
	[1] = false,
	[2] = false,
}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent("esx_fighting:msg")
AddEventHandler("esx_fighting:msg", function (pos)

TriggerClientEvent("esx_fighting:tes", Fighters[1], true)
		TriggerClientEvent("esx_fighting:tes", Fighters[2], true)

end)





RegisterServerEvent("esx_fighting:SendResult")
AddEventHandler("esx_fighting:SendResult", function (pos)
	TriggerClientEvent("esx_fighting:EditPos", -1, 1, false)
	TriggerClientEvent("esx_fighting:EditPos", -1, 2, false)

	if Fighters[1] == source then
		local xPlayer = ESX.GetPlayerFromId(Fighters[2])
		xPlayer.addMoney(Bet*2)
		TriggerClientEvent("esx_fighting:Result", Fighters[1], false)
		TriggerClientEvent("esx_fighting:Result", Fighters[2], true)
	else
		local xPlayer = ESX.GetPlayerFromId(Fighters[1])
		xPlayer.addMoney(Bet*2)
		TriggerClientEvent("esx_fighting:Result", Fighters[2], false)
		TriggerClientEvent("esx_fighting:Result", Fighters[1], true)
	end
	Fighters[1] = false
	Fighters[2] = false
end)

ESX.RegisterServerCallback('esx_fighting:EditBet', function(source, cb, prize)
	if Fighter1 or Fighter2 then
		cb(false)
	else
		Bet = prize
		TriggerClientEvent("esx_fighting:BetEdited", -1, Bet)
		cb(true)
	end
end)


ESX.RegisterServerCallback('esx_fighting:JoinFight', function(source, cb, pos)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getMoney() > Bet and not Fighters[pos] then
		xPlayer.removeMoney(Bet)
		Fighters[pos] = source
		TriggerClientEvent("esx_fighting:EditPos", -1, pos, true)
		if Fighters[1] and Fighters[2] ~= false then
			TriggerClientEvent("esx_fighting:StartFight", Fighters[1])
			TriggerClientEvent("esx_fighting:StartFight", Fighters[2])
		end
		cb(true)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('esx_fighting:LeaveFight', function(source, cb, pos)
	local xPlayer = ESX.GetPlayerFromId(source)

	if Fighters[pos] == source then
		xPlayer.addMoney(Bet)
		Fighters[pos] = false
		TriggerClientEvent("esx_fighting:EditPos", -1, pos, false)
		cb(true)
	else
		cb(false)
	end
end)

