local blips = {
    -- Exemple {title="", colour=, id=, x=, y=, z=},
        {title="Prison Fédérale", colour=0, id=419, x = 1690.7050, y = 2591.7216, z = 45.8761},
        {title="Circuits Moto/Karting", colour=69, id=315, x = 1063.52, y = 215.22, z = 84.99},
        {title="Casino de Panama", colour=4, id=103, x = -1698.85, y = -1093.44, z = 13.00},
        {title="Hôpital", colour=0, id=61, x = 304.9, y = -586.1, z = 43.32},
        {title="Caserne de Pompier", colour=1, id=61, x = -1670.94, y = 45.83, z = 64.79},
        {title="DIR", colour=0, id=285, x = -96.36, y = -2020.70, z = 18.16},
        {title="Auto-Tamponneuse", colour=0, id=266, x = -1736.20, y = -1185.62, z = 12.99},
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
