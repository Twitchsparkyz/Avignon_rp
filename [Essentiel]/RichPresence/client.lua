Citizen.CreateThread(function()
    while true do
    #Ceci est l'ID de l'application (remplacez-le par votre propre)
    SetDiscordAppId(846424246161768499)
  
    #Ici, vous devrez mettre le nom de l'image pour l'icône "Large".
    SetDiscordRichPresenceAsset('logo_avignon')
        
    #Ici, vous pouvez ajouter un texte de survol pour l'icône "Large".
    SetDiscordRichPresenceAssetText('Avignon Rp')
       
    #Ici, vous devrez mettre le nom de l'image pour l'icône "small".
    SetDiscordRichPresenceAssetSmall('fivem-logo')
  
    #Ici, vous pouvez ajouter un texte de survol pour l'icône "small".
    SetDiscordRichPresenceAssetSmallText('Rejoins-nous')
    
    #Pour afficher le nombre de joueurs sur 64 il faut ajouter ceci :
    players = {}
    for i = 0, 64 do
        if NetworkIsPlayerActive( i ) then
            table.insert( players, i )
        end
    end
    SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/64")
  
    Citizen.Wait(60000)
    end
  end)