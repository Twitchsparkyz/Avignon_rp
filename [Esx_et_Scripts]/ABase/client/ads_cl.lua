--[[AD CONSTRUCTOR]]
function ad(_id, _pic1, _pic2, _sender, _subject, _hidden)
	if _hidden == nil then _hidden = false end
	if _subject == nil then _subject = 'Advertisement' end

	return {
		id = _id,
		pic1 = _pic1,
		pic2 = _pic2,
		sender = _sender,
		subject = _subject,
		hidden = _hidden
	}
end

--[[TABLE OF ADS]]
local ads = {
--  ad ('What you'll type in chat', 'CHAR_FLOYD',        'ImageName',         'Ad Title',            'Ad Subtitle'),
	ad('bank',                      'CHAR_FLOYD',        'banque',            'Banque de france',     'Annonce'),
	ad('police',                    'CHAR_FLOYD',        'police',            'Police Nationale',     'Annonce'),
	ad('cardealer',                 'CHAR_FLOYD',        'concess',           'Concessionnaire',      'Annonce'),
	ad('rd7',                       'CHAR_FLOYD',        'rd7',               'RD7 Mécano',           'Annonce'),
	ad('nightclub',                 'CHAR_FLOYD',        'nightclub',         'Bahama Mamas',         'Annonce'),
	ad('hopital',                   'CHAR_FLOYD',        'samu',              'Hopital',                 'Annonce'),
	ad('taxi',                      'CHAR_FLOYD',        'taxi',              'Taxi',                 'Annonce'),
	ad('dolce',                     'CHAR_FLOYD',        'dolce',             'Dolce',                'Annonce'),
	ad('mairie',                    'CHAR_FLOYD',        'mairie',            'Mairie',               'Annoce'),
	ad('perls',                     'CHAR_FLOYD',        'perls',             'Restaurant le Perls', 'Annonce'),
	ad('admin',                     'CHAR_FLOYD',        'admin',             'Administration', nil, true)
}
local function findAdById(id)
	local output 
	for _, item in ipairs(ads) do 
		if item.id == id then output = item end 
	end 
	return output
end

--[[EVENT TO SHOW ALL ADS]]
RegisterNetEvent('ShowAds')
AddEventHandler('ShowAds', function()
	local index = 0
	local outstring = '^7'
	for _, item in ipairs(ads) do
		if item.hidden ~= true then
			index = index + 1
			if index == 1 then outstring = outstring..item.id else outstring = outstring..' / '..item.id end
		end
	end
	TriggerEvent('chatMessage', 'SYSTEM', {0,0,0}, 'Available ads: <'..outstring..'>')
end)

--[[EVENT TO DISPLAY AN AD TO THE PLAYER]]
RegisterNetEvent('DisplayAd')
AddEventHandler('DisplayAd',function(adtype, inputText)
	local ad = findAdById(adtype)

	if ad == nil then
		TriggerEvent('chatMessage', 'SYSTEM', {0,0,0}, 'Invalid type of ad')
		TriggerEvent('ShowAds')
		return
	end

	SetNotificationTextEntry('STRING');
	AddTextComponentString(inputText);
	SetNotificationMessage(ad.pic1, ad.pic2, true, 4, ad.sender, ad.subject);
	DrawNotification(false, true);
end)