 --[[
 Commands

 Paparazzo: 	/photo 	    
 Salute: 		/salut 	    
 Bird 1: 		/fuck 	    
 Bird 2: 		/fuck2 	    
 Facepalm: 		/palm	    
 BongRip:		/bang	    
 Slow Clap:		/tdm	    
 Umbrella:		/parapluie
 
]]--


-------Props-------
local holdingcam = false
local cammodel = "prop_pap_camera_01"
local cam_net = nil

local holdingsign = false
local signmodel = "prop_beggers_sign_01"
local sign_net = nil

local holdingwand = false
local wandmodel = "prop_parking_wand_01"
local wand_net = nil

local holdingbong = false
local bongmodel = "hei_heist_sh_bong_01"
local bong_net = nil

local holdingphoneR = false
local phoneRmodel = "prop_amb_phone"
local phoneR_net = nil

local holdingpad = false
local padmodel = "prop_notepad_02"
local pad_net = nil

local holdingumb = false
local umbmodel = "p_amb_brolly_01"
local umb_net = nil


-------------

------------- umbrella

RegisterCommand("parapluie",function(source, args)
	local ad1 = "amb@code_human_wander_drinking@beer@male@base"
	local ad1a = "static"
	local player = GetPlayerPed(-1)
	local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
	local umbspawned = CreateObject(GetHashKey(umbmodel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
	local netid = ObjToNet(umbspawned)


	if (DoesEntityExist(player) and not IsEntityDead(player)) then 
		loadAnimDict(ad1)
		RequestModel(GetHashKey(umbmodel))
		if holdingumb then
			Wait(100)
			ClearPedSecondaryTask(GetPlayerPed(-1))
			DetachEntity(NetToObj(umb_net), 1, 1)
			DeleteEntity(NetToObj(umb_net))
			umb_net = nil
			holdingumb = false
		else
			TaskPlayAnim(player, ad1, ad1a, 8.0, 1.0, -1, 49, 0, 0, 0, 0)
			Wait(500)
			SetNetworkIdExistsOnAllMachines(netid, true)
			NetworkSetNetworkIdDynamic(netid, true)
			SetNetworkIdCanMigrate(netid, false)
			AttachEntityToEntity(umbspawned,GetPlayerPed(PlayerId()),GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422),0.0,0.0,0.0,0.0,0.0,0.0,1,1,0,1,0,1)
			Wait(120)
			umb_net = netid
			holdingumb = true
		end
	end
end, false)


------------- Tapper des main


RegisterCommand("tdm",function(source, args)
	local clapping = false
	local ad = "anim@mp_player_intupperslow_clap"
	local ad2 = "amb@world_human_drinking@beer@male@exit"
	local ad2a = "exit"
	local player = GetPlayerPed( -1 )
	
	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
		loadAnimDict( ad )
		if clapping then 
			Wait (0)
		else
			TaskPlayAnim( player, ad, "idle_a", 8.0, 1.0, 5000, 49, 0, 0, 0, 0 )
			clapping = true
			Wait (5000)
			clapping = false
		end     
	end

	
end, false)




-----------  BongRips

RegisterCommand("bang",function(source, args)
	local ad1 = "anim@safehouse@bong"
	local ad1a = "bong_stage1"
	local player = GetPlayerPed(-1)
	local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
	local bongspawned = CreateObject(GetHashKey(bongmodel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
	local netid = ObjToNet(bongspawned)


	if (DoesEntityExist(player) and not IsEntityDead(player)) then 
		loadAnimDict(ad1)
		RequestModel(GetHashKey(bongmodel))
		if holdingbong then
			Wait(100)
			ClearPedSecondaryTask(GetPlayerPed(-1))
			DetachEntity(NetToObj(bong_net), 1, 1)
			DeleteEntity(NetToObj(bong_net))
			bong_net = nil
			holdingbong = false
		else
			Wait(500)
			SetNetworkIdExistsOnAllMachines(netid, true)
			NetworkSetNetworkIdDynamic(netid, true)
			SetNetworkIdCanMigrate(netid, false)
			AttachEntityToEntity(bongspawned,GetPlayerPed(PlayerId()),GetPedBoneIndex(GetPlayerPed(PlayerId()), 18905),0.10,-0.25,0.0,95.0,190.0,180.0,1,1,0,1,0,1)
			Wait(120)
			Notification("Appuyez sur ~r~[E]~w~ pour tirer une taffe!")
			bong_net = netid
			holdingbong = true
		end
	end

	while holdingbong do
		Wait(0)
		local plyCoords2 = GetEntityCoords(player, true)
		local head = GetEntityHeading(player)
		if IsControlJustPressed(0, 38) then
			TaskPlayAnimAdvanced(player, ad1, ad1a, plyCoords2.x, plyCoords2.y, plyCoords2.z, 0.0, 0.0, head, 8.0, 1.0, 4000, 49, 0.25, 0, 0)
			Wait(100)
			Notification("Vous prenez une énorme taffe!")
			Wait(7250)
			TaskPlayAnim(player, ad2, ad2a, 8.0, 1.0, -1, 49, 0, 0, 0, 0)
		end
	end
end, false)



--------------------------- camera anim
RegisterCommand("photo",function(source, args)
	local ad1 = "amb@world_human_paparazzi@male@enter"
	local ad2 = "amb@world_human_paparazzi@male@idle_a"
	local ad3 = "amb@world_human_paparazzi@male@base"
	local ad4 = "amb@world_human_paparazzi@male@exit"
	local ad1a = "enter"
	local ad2a = "idle_a"
	local ad2b = "idle_b"
	local ad2c = "idle_c"
	local ad3a = "base"
	local ad4a = "exit"
	local player = GetPlayerPed(-1)
	local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)
	local camspawned = CreateObject(GetHashKey(cammodel), plyCoords.x, plyCoords.y, plyCoords.z, 1, 1, 1)
	local netid = ObjToNet(camspawned)
	local camani = {
		ad2a,
		ad2b,
		ad2c
	}
	local camaniRnd = math.random(1, 3)
	local pd = "core" 
	local pn = "ent_anim_paparazzi_flash"

	if (DoesEntityExist(player) and not IsEntityDead(player)) then ---------------------If playing then cancel
		loadAnimDict(ad1)
		loadAnimDict(ad2)
		loadAnimDict(ad3)
		loadAnimDict(ad4)
		RequestModel(GetHashKey(cammodel))
		if (IsEntityPlayingAnim(player, ad3, ad3a, 3)) then
			TaskPlayAnim(player, ad4, ad4a, 8.0, 1.0, -1, 49, 0, 0, 0, 0)
			Wait(100)
			ClearPedSecondaryTask(GetPlayerPed(-1))
			DetachEntity(NetToObj(cam_net), 1, 1)
			DeleteEntity(NetToObj(cam_net))
			cam_net = nil
			holdingcam = false
		else
			TaskPlayAnim(player, ad1, ad1a, 8.0, 1.0, -1, 49, 0, 0, 0, 0)
			Wait(520) ---------------------if not playing, then play
			SetNetworkIdExistsOnAllMachines(netid, true)
			NetworkSetNetworkIdDynamic(netid, true)
			SetNetworkIdCanMigrate(netid, false) --- | x,y,z, x rotation, y rotation, z rotation, no idea
			AttachEntityToEntity(camspawned,GetPlayerPed(PlayerId()),GetPedBoneIndex(GetPlayerPed(PlayerId()), 28422),-0.005,0.0,0.0,360.0,360.0,0.0,1,1,0,1,0,1)
			Wait(120)
			TaskPlayAnim(player, ad3, ad3a, 8.0, 1.0, -1, 49, 0, 0, 0, 0)
			Notification("Appuyez sur ~r~[E]~w~ Pour prendre une photo.")
			cam_net = netid
			holdingcam = true
		end
	end

	while holdingcam do
		Wait(0)
		if IsControlJustPressed(0, 38) then
			Wait(100)
			Notification(camnoti[camnotiRnd])
			Wait(100)
			TaskPlayAnim(player, ad2, camani[camaniRnd], 8.0, -8, -1, 49, 0, 0, 0, 0)
			Wait(100)
			if IsEntityPlayingAnim(player, ad2, ad2a, 49) then
				RequestPtfxAsset( pd )
				Wait(880)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(1300)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(2140)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(1580)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(2700)
			elseif IsEntityPlayingAnim(player, ad2, ad2b, 49) then
				RequestPtfxAsset( pd )
				Wait(2550)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(2410)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(200)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(100)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(3340)
			elseif IsEntityPlayingAnim(player, ad2, ad2c, 49) then
				RequestPtfxAsset( pd )
				Wait(500)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(4150)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(100)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(200)
				UseParticleFxAssetNextCall(pd)
				StartParticleFxNonLoopedOnEntity(pn, camspawned, 0.1, -0.1, 0.0, 0.0, 0.0, 0.0, 2.0, 0.0, 0.0, 0.0)
				Wait(1620)
			end
			TaskPlayAnim(player, ad3, ad3a, 8.0, 1.0, -1, 49, 0, 0, 0, 0)
		end
	end
end, false)
--startParticleFxNonLoopedOnEntity(effectName, entity, offsetX, offsetY, offsetZ, rotX, rotY, rotZ, scale, axisX, axisY, axisZ)



---------------------------------------Salute Anim 



RegisterCommand("salut",function(source, args)

	local ad = "anim@mp_player_intuppersalute"
	local player = GetPlayerPed( -1 )
	
	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, "idle_a", 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (600)
			ClearPedSecondaryTask(GetPlayerPed(-1))
		else
			TaskPlayAnim( player, ad, "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (500)
		end     
	end
end, false)

--------------------------------2 Middle Fingers

RegisterCommand("fuck2",function(source, args)

	local ad = "anim@mp_player_intupperfinger"
	local player = GetPlayerPed( -1 )
	
	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, "idle_a", 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (100)
			ClearPedSecondaryTask(GetPlayerPed(-1))
		else
			TaskPlayAnim( player, ad, "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (500)
		end     
	end
end, false)

------------------------Facepalm

RegisterCommand("palm",function(source, args)

	local ad = "anim@mp_player_intupperface_palm"
	local player = GetPlayerPed( -1 )
	
	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, "idle_a", 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (100)
			ClearPedSecondaryTask(GetPlayerPed(-1))
		else
			TaskPlayAnim( player, ad, "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (500)
		end     
	end
end, false)

----------------------- One middle Finger


RegisterCommand("fuck",function(source, args)

	local ad = "anim@mp_player_intselfiethe_bird"
	local player = GetPlayerPed( -1 )
	
	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
		loadAnimDict( ad )
		if ( IsEntityPlayingAnim( player, ad, "idle_a", 3 ) ) then 
			TaskPlayAnim( player, ad, "exit", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (100)
			ClearPedSecondaryTask(GetPlayerPed(-1))
		else
			TaskPlayAnim( player, ad, "idle_a", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
			Wait (500)
		end     
	end
end, false)



----------------------------------------------------------------------------------------------------------------------------
------------------------------------------------ functions -----------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
function Notification(message)  --- default gta notification
	SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(0, 0)
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do 
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

function DrawMissionText2(m_text, showtime) --subtitles
	ClearPrints()
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end
