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

ESX = nil
local isInVehicle = false
local hasShownMessage = false
local start = false

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)


-- Animation Hosler Gang
local weapons = {
	--'WEAPON_KNIFE',
	--'WEAPON_NIGHTSTICK',
	--'WEAPON_HAMMER',
	--'WEAPON_BAT',
	--'WEAPON_GOLFCLUB',
	--'WEAPON_CROWBAR',
	--'WEAPON_BOTTLE',
	--'WEAPON_DAGGER',
	--'WEAPON_HATCHET',
	--'WEAPON_MACHETE',
	--'WEAPON_BATTLEAXE',
	--'WEAPON_POOLCUE',
	--'WEAPON_WRENCH',
	'WEAPON_PISTOL',
	'WEAPON_PISTOL_MK2',
	'WEAPON_APPISTOL',
	'WEAPON_PISTOL50',
	'WEAPON_REVOLVER',
	'WEAPON_SNSPISTOL',
	'WEAPON_HEAVYPISTOL',
	'WEAPON_VINTAGEPISTOL',
	'WEAPON_MICROSMG',
	--'WEAPON_SMG',
	--'WEAPON_ASSAULTSMG',
	--'WEAPON_MINISMG',
	--'WEAPON_MACHINEPISTOL',
	--'WEAPON_COMBATPDW',
	--'WEAPON_PUMPSHOTGUN',
	--'WEAPON_SAWNOFFSHOTGUN',
	--'WEAPON_ASSAULTSHOTGUN',
	--'WEAPON_BULLPUPSHOTGUN',
	--'WEAPON_HEAVYSHOTGUN',
	--'WEAPON_ASSAULTRIFLE',
	--'WEAPON_CARBINERIFLE',
	--'WEAPON_ADVANCEDRIFLE',
	--'WEAPON_SPECIALCARBINE',
	--'WEAPON_BULLPUPRIFLE',
	--'WEAPON_COMPACTRIFLE',
	--'WEAPON_MG',
	--'WEAPON_COMBATMG',
	--'WEAPON_GUSENBERG',
	--'WEAPON_SNIPERRIFLE',
	--'WEAPON_HEAVYSNIPER',
	--'WEAPON_MARKSMANRIFLE',
	--'WEAPON_GRENADELAUNCHER',
	--'WEAPON_RPG',
	--'WEAPON_STINGER',
	--'WEAPON_MINIGUN',
	--'WEAPON_GRENADE',
	--'WEAPON_STICKYBOMB',
	--'WEAPON_SMOKEGRENADE',
	--'WEAPON_BZGAS',
	--'WEAPON_MOLOTOV',
	--'WEAPON_DIGISCANNER',
	--'WEAPON_FIREWORK',
	--'WEAPON_MUSKET',
	--'WEAPON_HOMINGLAUNCHER',
	--'WEAPON_PROXMINE',
	--'WEAPON_FLAREGUN',
	--'WEAPON_MARKSMANPISTOL',
	--'WEAPON_RAILGUN',
	--'WEAPON_DBSHOTGUN',
	--'WEAPON_AUTOSHOTGUN',
	--'WEAPON_COMPACTLAUNCHER',
	--'WEAPON_PIPEBOMB',
	--'WEAPON_DOUBLEACTION'
}

local holstered = true
local canfire = true
local currWeapon = nil

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(250)
		if DoesEntityExist(GetPlayerPed(-1)) and not IsEntityDead(GetPlayerPed(-1)) and not IsPedInAnyVehicle(PlayerPedId(-1), true) then
			if currWeapon ~= GetSelectedPedWeapon(GetPlayerPed(-1)) then
				pos = GetEntityCoords(GetPlayerPed(-1), true)
				rot = GetEntityHeading(GetPlayerPed(-1))

				local newWeap = GetSelectedPedWeapon(GetPlayerPed(-1))
				SetCurrentPedWeapon(GetPlayerPed(-1), currWeapon, true)

				local dict2 = "reaction@intimidation@1h"
				RequestAnimDict(dict2)
				while not HasAnimDictLoaded(dict2) do
					Citizen.Wait(50)
				end

				if CheckWeapon(newWeap) then
					if holstered then
						canFire = false
						TaskPlayAnimAdvanced(GetPlayerPed(-1), "reaction@intimidation@1h", "intro", GetEntityCoords(GetPlayerPed(-1), true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1000)
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						currWeapon = newWeap
						Citizen.Wait(2000)
						ClearPedTasks(GetPlayerPed(-1))
						holstered = false
						canFire = true
					elseif newWeap ~= currWeapon then
						canFire = false
						SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey('WEAPON_UNARMED'), true)
						TaskPlayAnimAdvanced(GetPlayerPed(-1), "reaction@intimidation@1h", "intro", GetEntityCoords(GetPlayerPed(-1), true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1000)
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						currWeapon = newWeap
						Citizen.Wait(2000)
						ClearPedTasks(GetPlayerPed(-1))
						holstered = false
						canFire = true
					end
				else
					if not holstered and CheckWeapon(currWeapon) then
						canFire = false
						TaskPlayAnimAdvanced(GetPlayerPed(-1), "reaction@intimidation@1h", "outro", GetEntityCoords(GetPlayerPed(-1), true), 0, 0, rot, 8.0, 3.0, -1, 50, 0, 0, 0)
						Citizen.Wait(1600)
						SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey('WEAPON_UNARMED'), true)
						ClearPedTasks(GetPlayerPed(-1))
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						holstered = true
						canFire = true
						currWeapon = newWeap
					else
						SetCurrentPedWeapon(GetPlayerPed(-1), newWeap, true)
						holstered = false
						canFire = true
						currWeapon = newWeap
					end
				end
			end
		end
	end
end)

function CheckWeapon(newWeap)
	for i = 1, #weapons do
		if GetHashKey(weapons[i]) == newWeap then
			return true
		end
	end
	return false
end

local knockedOut = false
local wait = math.random(1,5)
local count = 50

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		local myPed = GetPlayerPed(-1)
		if IsPedInMeleeCombat(myPed) then
			if GetEntityHealth(myPed) < 150 then
				SetPlayerInvincible(PlayerId(), true)
				SetPedToRagdoll(myPed, 1000, 1000, 0, 0, 0, 0)
				ShowNotification("~r~Tu as été mis KO!")
				wait = math.random(1,4)
				knockedOut = true
				SetEntityHealth(myPed, 175)
			end
		end
		if knockedOut == true then
			SetPlayerInvincible(PlayerId(), true)
			DisablePlayerFiring(PlayerId(), true)
			SetPedToRagdoll(myPed, 1000, 1000, 0, 0, 0, 0)
			ResetPedRagdollTimer(myPed)
			
			if wait >= 0 then
				count = count - 1
				if count == 0 then
					count = 50
					wait = wait - 1
					SetEntityHealth(myPed, GetEntityHealth(myPed)+1)
				end
			else
				SetPlayerInvincible(PlayerId(), false)
				knockedOut = false
			end
		end
	end
end)

function ShowNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

Citizen.CreateThread( function()
    while true do
        Citizen.Wait(1)
        local ped = GetPlayerPed(-1)

	    if (DoesEntityExist(ped) and not IsEntityDead(ped)) then
			local a = GetSelectedPedWeapon(ped)

			if (GetFollowPedCamViewMode() ~= 5 ) then
				if (a == GetHashKey("WEAPON_SNIPERRIFLE") or
				 a == GetHashKey("WEAPON_MARKSMANRIFLE_MK2") or 
				 a == GetHashKey("WEAPON_MARKSMANRIFLE") or 
				 a == GetHashKey("WEAPON_HEAVYSNIPER") or 
				 a == GetHashKey("WEAPON_HEAVYSNIPER_MK2")) then
				else
					HideHudComponentThisFrame(14)
				end
			else
			end
	    end

    end 
end)
