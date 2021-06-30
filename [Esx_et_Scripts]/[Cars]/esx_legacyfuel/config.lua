Config = {}

-- Utilisez-vous ESX? Transformez cela en vrai si vous souhaitez que le carburant et les bidons coûtent quelque chose.
Config.UseESX = true

-- Quel devrait être le prix des jerrycans?
Config.JerryCanCost = 80
Config.RefillCost = 80 -- S'il lui manque la moitié de sa capacité, ce montant sera divisé en deux, et ainsi de suite.

-- Décor de carburant - Pas besoin de changer cela, laissez-le.
Config.FuelDecor = "_FUEL_LEVEL"

-- Quelles touches sont désactivées pendant que vous faites le plein.
Config.DisableKeys = {0, 22, 23, 24, 29, 30, 31, 37, 44, 56, 82, 140, 166, 167, 168, 170, 288, 289, 311, 323}

-- Vous souhaitez utiliser le HUD? Transformez cela en vrai.
Config.EnableHUD = false

-- Configurez les blips ici. Réglez les deux sur false pour désactiver tous les blips ensemble.
Config.ShowNearestGasStationOnly = true
Config.ShowAllGasStations = false

-- Modifiez le coût du carburant ici, en utilisant une valeur multiplicatrice. La définition de la valeur à 2,0 entraînerait une augmentation doublée.
Config.CostMultiplier = 1.0

-- Configurez les chaînes comme vous le souhaitez ici.
Config.Strings = {
	ExitVehicle = "Quitter le véhicule pour faire le plein",
	EToRefuel = "Appuyez sur ~g~E ~w~pour faire le plein",
	JerryCanEmpty = "L jerrycan est vide",
	FullTank = "La voiture est pleine",
	PurchaseJerryCan = "Appuyez sur ~g~E ~w~pour acheter un jerrycan pour ~g~€" .. Config.JerryCanCost,
	CancelFuelingPump = "Appuyez sur ~g~E ~w~pour pour arrêter le plein",
	CancelFuelingJerryCan = "Appuyez sur ~g~E ~w~pour arrêter le plein du jerrycan",
	NotEnoughCash = "Vous n'avez pas assez d'argent",
	RefillJerryCan = "Appuyez sur ~g~E ~w~ pour remplir le jerrycan pour ~g~$",
	NotEnoughCashJerryCan = "Vous n'avez pas assez d'argent remplir le jerrycan",
	JerryCanFull = "Le jerrycan est plein",
	TotalCost = "Total",
}

if not Config.UseESX then
	Config.Strings.PurchaseJerryCan = "Appuyez sur ~g~E ~w~pour récupérer un jerrycan"
	Config.Strings.RefillJerryCan = "Appuyez sur ~g~E ~w~ pour remplir le jerrycan"
end

Config.PumpModels = {
	[-2007231801] = true,
	[1339433404] = true,
	[1694452750] = true,
	[1933174915] = true,
	[-462817101] = true,
	[-469694731] = true,
	[-164877493] = true
}

-- Mettez certains véhicules sur liste noire. Utilisez des noms ou des hashes. https://wiki.gtanet.work/index.php?title=Vehicle_Models
Config.Blacklist = {
	"tug",
	"twizy",
	"emperor2",
	"vader",
	"mule3",
	"sr650fly",
	"seashark",
	"squalo",
	"seashark3",
	"suntrap",
	"jetmax",
	"tropic2",
	"dinghy2",
	"dinghy",
	"speeder",
	"toro",
	"marquis",
	"camarobb",
	"submersible",
}

-- Voulez-vous que le HUD soit retiré de l'affichage dans les véhicules sur liste noire?
Config.RemoveHUDForBlacklistedVehicle = true

-- Multiplicateurs de classe. Si vous souhaitez que les véhicules utilisent moins de carburant, vous pouvez le remplacer par un niveau inférieur à 1.0, et vice versa.
Config.Classes = {
	[0] = 1.0, -- Compacts
	[1] = 1.0, -- Sedans
	[2] = 1.0, -- SUVs
	[3] = 1.0, -- Coupes
	[4] = 1.0, -- Muscle
	[5] = 1.0, -- Sports Classics
	[6] = 1.0, -- Sports
	[7] = 1.0, -- Super
	[8] = 1.0, -- Motorcycles
	[9] = 1.0, -- Off-road
	[10] = 0.8, -- Industrial
	[11] = 0.8, -- Utility
	[12] = 1.0, -- Vans
	[13] = 0.0, -- Cycles
	[14] = 0.5, -- Boats
	[15] = 0.75, -- Helicopters
	[16] = 1.0, -- Planes
	[17] = 0.55, -- Service
	[18] = 0.55, -- Emergency
	[19] = 0.55, -- Military
	[20] = 1.0, -- Commercial
	[21] = 1.0, -- Trains
}

-- La partie gauche est le pourcentage par /min, et la droite est la quantité de carburant (divisée par 10) que vous souhaitez retirer du réservoir chaque seconde
Config.FuelUsage = {
	[1.0] = 0.95,
	[0.9] = 0.95,
	[0.8] = 0.95,
	[0.7] = 0.95,
	[0.6] = 0.8,
	[0.5] = 0.7,
	[0.4] = 0.5,
	[0.3] = 0.4,
	[0.2] = 0.2,
	[0.1] = 0.1,
	[0.0] = 0.0,
}

Config.GasStations = {
	vector3(49.4187, 2778.793, 58.043),
	vector3(263.894, 2606.463, 44.983),
	vector3(1039.958, 2671.134, 39.550),
	vector3(1207.260, 2660.175, 37.899),
	vector3(2539.685, 2594.192, 37.944),
	vector3(2679.858, 3263.946, 55.240),
	vector3(2005.055, 3773.887, 32.403),
	vector3(1687.156, 4929.392, 42.078),
	vector3(1701.314, 6416.028, 32.763),
	vector3(179.857, 6602.839, 31.868),
	vector3(-94.4619, 6419.594, 31.489),
	vector3(-2554.996, 2334.40, 33.078),
	vector3(-1800.375, 803.661, 138.651),
	vector3(-1437.622, -276.747, 46.207),
	vector3(-2096.243, -320.286, 13.168),
	vector3(-724.619, -935.1631, 19.213),
	vector3(-526.019, -1211.003, 18.184),
	vector3(-70.2148, -1761.792, 29.534),
	vector3(265.648, -1261.309, 29.292),
	vector3(819.653, -1028.846, 26.403),
	vector3(1208.951, -1402.567,35.224),
	vector3(1181.381, -330.847, 69.316),
	vector3(620.843, 269.100, 103.089),
	vector3(2581.321, 362.039, 108.468),
	vector3(176.631, -1562.025, 29.263),
	vector3(176.631, -1562.025, 29.263),
	vector3(-319.292, -1471.715, 30.549),
	vector3(-43.44, -3200.5, 16.17),          --karting
	vector3(1784.324, 3330.55, 41.253)
}