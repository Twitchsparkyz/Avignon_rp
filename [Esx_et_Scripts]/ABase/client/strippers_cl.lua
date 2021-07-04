TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local foodPeds = {
  { model="cs_milton", x=-1697.87, y=-1094.00, z=12.15, a=45.44, animation="mini@strip_club@idles@bouncer@base", animationName="base"}, --caissier casino
  { model="a_f_y_femaleagent", x=-1699.07, y=-1101.24, z=12.15, a=318.18, animation="mini@strip_club@idles@bouncer@base", animationName="base"}, --black jack
  { model="s_m_m_strpreach_01", x=-1691.26, y=-1105.66, z=12.15, a=227.16, animation="mini@strip_club@idles@bouncer@base", animationName="base"}, -- roulette
  { model="s_m_m_strpreach_01", x=-1724.02, y=-1114.60, z=12.15, a=44.16, animation="mini@strip_club@idles@bouncer@base", animationName="base"}, -- boxe
  { model="s_m_y_xmech_01", x=-46.45, y=-3159.14, z=15.17, a=104.05, animation="mini@strip_club@idles@bouncer@base", animationName="base"}, -- location de kart
  { model="s_m_y_xmech_01", x=1518.97, y=-3259.76, z=27.16, a=171.43, animation="mini@strip_club@idles@bouncer@base", animationName="base"}, -- location de motocross
  { model="csb_stripper_01", x=-1379.88, y=-617.61, z=30.75, a=140.50, animation="mini@strip_club@lap_dance@ld_girl_a_song_a_p1", animationName="ld_girl_a_song_a_p1_f"}, --streaptiseuses bahamas
  { model="csb_stripper_01", x=-1383.37, y=-612.14, z=30.75, a=122.52, animation="mini@strip_club@lap_dance@ld_girl_a_song_a_p1", animationName="ld_girl_a_song_a_p1_f"}, --streaptiseuses bahamas
  { model="ig_car3guy2", x=-1382.01, y=-614.67, z=30.49, a=122.16, animation="anim@amb@nightclub@dancers@crowddance_facedj@", animationName="hi_dance_facedj_09_v1_female^1"},  --dj bahamas
  { model="a_f_m_soucentmc_01", x=-1386.62, y=-617.34, z=29.81, a=223.75, animation="anim@amb@casino@mini@dance@dance_solo@female@var_a@", animationName="high_center"}, --danceur piste
  { model="a_m_y_soucent_04", x=-1386.10, y=-618.16, z=29.81, a=21.19, animation="anim@amb@casino@mini@dance@dance_solo@female@var_a@", animationName="high_center"},  --danceur piste
  { model="ig_tanisha", x=-1389.66, y=-615.98, z=29.81, a=169.16, animation="anim@amb@casino@mini@dance@dance_solo@female@var_b@", animationName="high_center"},  --danceur piste
  { model="s_m_m_movprem_01", x=-1389.27, y=-617.16, z=29.81, a=308.10, animation="anim@amb@casino@mini@dance@dance_solo@female@var_b@", animationName="high_right_down"},  --danceur piste
  { model="u_f_y_mistress", x=-1387.45, y=-621.55, z=29.81, a=0.06, animation="anim@amb@casino@mini@dance@dance_solo@female@var_b@", animationName="low_center"},  --danceur piste
  { model="cs_josh", x=-1383.95, y=-620.36, z=29.81, a=75.16, animation="anim@amb@casino@mini@dance@dance_solo@female@var_b@", animationName="med_center"},  --danceur piste
  { model="u_f_y_hotposh_01", x=-1385.47, y=-620.99, z=29.81, a=310.87, animation="anim@amb@casino@mini@dance@dance_solo@female@var_b@", animationName="low_center"},  --danceur piste
  { model="csb_stripper_01", x=112.79, y=-1286.40, z=27.45, a=6.30, animation="mini@strip_club@lap_dance@ld_girl_a_song_a_p1", animationName="ld_girl_a_song_a_p1_f"}, --streaptiseuses unicorn
  { model="csb_stripper_01", x=113.82, y=-1288.04, z=27.45, a=263.13, animation="mini@strip_club@lap_dance@ld_girl_a_song_a_p2", animationName="ld_girl_a_song_a_p2_f"}, --streaptiseuses unicorn
  { model="csb_stripper_01", x=104.28, y=-1293.51, z=28.25, a=276.70, animation="mini@strip_club@lap_dance@ld_girl_a_song_a_p2", animationName="ld_girl_a_song_a_p2_f"}, --streaptiseuses unicorn
  { model="csb_stripper_01", x=102.58, y=-1290.28, z=28.25, a=307.26, animation="mini@strip_club@lap_dance@ld_girl_a_song_a_p1", animationName="ld_girl_a_song_a_p1_f"}, --streaptiseuses unicorn
  { model="csb_stripper_01", x=127.51, y=-1282.01, z=29.32, a=145.18, animation="mini@strip_club@lap_dance@ld_girl_a_song_a_p1", animationName="ld_girl_a_song_a_p1_f"}, --streaptiseuses unicorn

}

ESX.TriggerServerCallback('callbackname', function( spawned )
	if not spawned then
			for k,v in ipairs(foodPeds) do
				RequestModel(GetHashKey(v.model))
				while not HasModelLoaded(GetHashKey(v.model)) do
					Wait(0)
				end
				RequestAnimDict(v.animation)
				while not HasAnimDictLoaded(v.animation) do
					Wait(1)
				end
				local storePed = CreatePed(4, GetHashKey(v.model), v.x, v.y, v.z, v.a, true, true)
				SetBlockingOfNonTemporaryEvents(storePed, false)
				SetPedFleeAttributes(storePed, 0, 0)
						SetPedArmour(storePed, 100)
						SetPedMaxHealth(storePed, 100)
				SetPedDiesWhenInjured(storePed, false)
				SetAmbientVoiceName(storePed, v.voice)

				TaskPlayAnim(storePed, v.animation, v.animationName, 8.0, 0.0, -1, 1, 0, 0, 0, 0)
				SetModelAsNoLongerNeeded(GetHashKey(v.model))
			end
	end
end)
