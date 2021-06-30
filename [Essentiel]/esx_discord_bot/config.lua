Config                        = {}
Config.Locale = 'fr'
Config.green 				  = 56108
Config.grey 				  = 8421504
Config.red 					  = 16711680
Config.orange 				  = 16744192
Config.blue 				  = 2061822
Config.purple 				  = 11750815
Config.webhook                = "https://discord.com/api/webhooks/809478881866154025/u0VtWwSsJrykhKc8o24bXP5v4JFzENTff-VnC0LqQzKZBXyBwAHGDy3Unm8r6U5_n44J"
Config.webhookadmin           = "https://discord.com/api/webhooks/809478881866154025/u0VtWwSsJrykhKc8o24bXP5v4JFzENTff-VnC0LqQzKZBXyBwAHGDy3Unm8r6U5_n44J"
Config.webhookStatus          = ""

settings = {
	LogKills = true, -- Log when a player kill an other player.
	LogEnterPoliceVehicle = false, -- Log when an player enter in a police vehicle.
	LogEnterBlackListedVehicle = true, -- Log when a player enter in a blacklisted vehicle.
	LogPedJacking = false, -- Log when a player is jacking a car
	LogChatServer = true, -- Log when a player is talking in the chat , /command works too.
	LogLoginServer = true, -- Log when a player is connecting/disconnecting to the server.
	LogItemTransfer = true, -- Log when a player is giving an item.
	LogWeaponTransfer = true, -- Log when a player is giving a weapon.
	LogMoneyTransfer = true, -- Log when a player is giving money
	LogMoneyBankTransfert = true, -- Log when a player is giving money from bankaccount
	LogAdminMoneyTransfer = true, -- Log Admin Give Money
}



blacklistedModels = {

-- Véhicules Terrestre :
	"apc",
	"barrage",
	"boxville5",
	"bruiser",
	"bruiser2",
	"bruiser3",
	"buggy2",
	"buggy3",
	"buggy4",
	"buggy5",
	"caracara",
	"cerberus",
	"cerberus2",
	"cerberus3",
	"chernobog",
	"dominator4",
	"dukes2",
	"dump",
	"dune2",
	"dune4",
	"dune5",
	"halftrack",
	"insurgent",
	"insurgent2",
	"insurgent3",
	"jb700",
	"khanjali",
	"marshall",
	"menacer",
	"monster",
	"monster3",
	"monster4",
	"monster5",
	"nightshark",
	"oppressor",
	"oppressor2",
	"phantom2",
	"rhino",
	"ruiner2",
	"scarab",
	"scarab2",
	"scarab3",
	"scramjet",
	"stromberg",
	"tampa3",
	"technical",
	"technical2",
	"technical3",
	"trailersmall2",
	"tula",
	"vigilante",
	"wastelander",
	"zr380",
	"zr3802",

-- Véhicules Aérien
	"akula",
	"annihilator",
	"avenger",
	"avenger2",
	"blimp",
	"blimp2",
	"blimp3",
	"bombushka",
	"buzzard",
	"cargoplane",
	"hunter",
	"hydra",
	"jet",
	"lazer",
	"mogul",
	"molotok",
	"nokota",
	"pyro",
	"rogue",
	"savage",
	"starling",
	"strikeforce",
	"titan",
	"thruster",
	"valkyrie",
	"volatol"
}