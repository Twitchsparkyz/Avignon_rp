Config                            = {}

Config.DrawDistance               = 20.0
Config.Marker                     = {type = 22, x = 0.5, y = 0.5, z = 0.5, r = 255, g = 0, b = 0, a = 100, false, rotate = true, false, true, true, true, true}
Config.ReviveReward               = 500
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)
Config.Locale                     = 'fr'

Config.EarlyRespawnTimer          = 60000 * 8  -- time til respawn is available
Config.BleedoutTimer              = 60000 * 4 -- time til the player bleeds out

Config.EnablePlayerManagement     = true -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

--Laissez le joueur payer pour réapparaître tôt, seulement s'il peut se le permettre.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint ={
Pos	= { x = 322.42, y = -601.16, z = 43.28  }
}

Config.Hospitals = {
	CentralLosSantos = {
		AmbulanceActions = {
			vector3(298.90, -598.48, 43.28),
			vector3(-1676.32, 54.52, 63.34)
		},
		Boss = {
			vector3(334.56, -593.70, 43.28),
			vector3(-1674.48, 74.34, 67.57)
		},
		Pharmacies = {
			vector3(306.60, -601.46, 43.28),
			vector3(-1675.69, 51.21, 63.34)
		},
		Vehicles = {
			vector3(333.91, -561.94, 28.74)
		},
		Helicopters = {
			vector3(339.94, -580.14, 74.1655)
		},
        Deleter = {
            vector3(351.272, -588.910, 74.165),
			vector3(340.84, -562.39, 28.743)
        },
	}
}

Cloak = {
	clothes = {
        specials = {
            [0] = {
                label = "Tenue Civil",
                minimum_grade = 0,
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin) TriggerEvent('skinchanger:loadSkin', skin) end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },
            [1] = {
                minimum_grade = 0,
                label = "Tenue Médecin",
                variations = {
                male = {
                    tshirt_1 = 15,  tshirt_2 = 0,
                    torso_1 = 73,   torso_2 = 1,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 85,
                    pants_1 = 24,   pants_2 = 5,
                    shoes_1 = 24,   shoes_2 = 0,
                    helmet_1 = -1,  helmet_2 = 0,
                    chain_1 = 0,    chain_2 = 0,
                    ears_1 = 0,     ears_2 = 0
                },
                female = {
                    tshirt_1 = 36,  tshirt_2 = 1,
                    torso_1 = 48,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 44,
                    pants_1 = 34,   pants_2 = 0,
                    shoes_1 = 27,   shoes_2 = 0,
                    helmet_1 = 45,  helmet_2 = 0,
                    chain_1 = 0,    chain_2 = 0,
                    ears_1 = 2,     ears_2 = 0
                }
            },
            onEquip = function()  
            end
            }
        },
        grades = {
            -- @label = Le nom affiché de la tenue de grade
            -- @male = Les composants skinchanger pour les hommes
            -- @female = Les composants skinchanger pour les femmes
            [0] = {
                label = "Tenue Base SP",
                minimum_grade = 4,
                variations = {
                male = {
                    bags_1 = 0, bags_2 = 0,
                    tshirt_1 = 15, tshirt_2 = 0,
                    torso_1 = 73, torso_2 = 0,
                    arms = 85,
                    pants_1 = 49, pants_2 = 0,
                    shoes_1 = 24, shoes_2 = 0,
                    mask_1 = 0, mask_2 = 0,
                    bproof_1 = 0, bproof_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    chain_1 = 0, chain_2 = 0,
                    decals_1 = 0, decals_2 = 0,
                },
                female = {
                    bags_1 = 0, bags_2 = 0,
                    tshirt_1 = 129, tshirt_2 = 0,
                    torso_1 = 75, torso_2 = 6,
                    arms = 86,
                    pants_1 = 33, pants_2 = 0,
                    shoes_1 = 25, shoes_2 = 0,
                    mask_1 = 0, mask_2 = 0,
                    bproof_1 = 14, bproof_2 = 0,
                    helmet_1 = -1, helmet_2 = 0,
                    chain_1 = 0, chain_2 = 0,
                    decals_1 = 0, decals_2 = 0
                }
            },
            onEquip = function()
            end
        },
        [1] = {
            minimum_grade = 4,
            label = "Tenue Base Hiver SP",
            variations = {
            male = {
                tshirt_1 = 15,  tshirt_2 = 1,
                torso_1 = 249,   torso_2 = 0,
                decals_1 = 0,   decals_2 = 0,
                arms = 17,
                pants_1 = 49,   pants_2 = 0,
                shoes_1 = 24,   shoes_2 = 0,
                helmet_1 = -1,  helmet_2 = 0,
                chain_1 = 0,    chain_2 = 0,
                ears_1 = 0,     ears_2 = 0
            },
            female = {
                tshirt_1 = 36,  tshirt_2 = 1,
                torso_1 = 48,   torso_2 = 0,
                decals_1 = 0,   decals_2 = 0,
                arms = 44,
                pants_1 = 34,   pants_2 = 0,
                shoes_1 = 27,   shoes_2 = 0,
                helmet_1 = 45,  helmet_2 = 0,
                chain_1 = 0,    chain_2 = 0,
                ears_1 = 2,     ears_2 = 0
            }
        },
        onEquip = function()
            
        end
    },
            [2] = {
                minimum_grade = 4,
                label = "Tenue Feu SP",
                variations = {
                male = {
                    tshirt_1 = 68,  tshirt_2 = 0,
                    torso_1 = 77,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 41,
                    pants_1 = 19,   pants_2 = 1,
                    shoes_1 = 24,   shoes_2 = 0,
                    helmet_1 = 45,  helmet_2 = 0,
                    chain_1 = 0,    chain_2 = 0,
                    ears_1 = 0,     ears_2 = 0
                },
                female = {
                    tshirt_1 = 36,  tshirt_2 = 1,
                    torso_1 = 48,   torso_2 = 0,
                    decals_1 = 0,   decals_2 = 0,
                    arms = 44,
                    pants_1 = 34,   pants_2 = 0,
                    shoes_1 = 27,   shoes_2 = 0,
                    helmet_1 = 45,  helmet_2 = 0,
                    chain_1 = 0,    chain_2 = 0,
                    ears_1 = 2,     ears_2 = 0
                }
            },
            onEquip = function()
                
            end
        },
    }
    },
    vehicles = {
        car = {
            {category = "↓ ~b~Véhicules Normaux ~s~↓"},
            {model = "ambulance", label = "Ambulance", minimum_grade = 0},
            {category = "↓ ~b~Véhicules spéciaux ~s~↓"},
            {model = "policet", label = "Dodge EMS", minimum_grade = 2},
            {model = "riot", label = "voiture", minimum_grade = 2}
        },
    },
    helico = {
        car = {
            {category = "↓ ~b~Véhicules Normaux ~s~↓"},
            {model = "polmav", label = "Helicoptère", minimum_grade = 2}
        },
    }
}