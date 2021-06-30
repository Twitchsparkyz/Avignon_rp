CREATE TABLE `weashops` (

	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`item` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `licenses` (type, label) VALUES
	('weapon', "Permis de port d'arme")
;

INSERT INTO `weashops` (name, item, price) VALUES
	('BlackWeashop', 'WEAPON_APPISTOL', 45000),
	('BlackWeashop', 'WEAPON_ASSAULTRIFLE', 75000),
	('BlackWeashop', 'WEAPON_BZGAS', 15000),
	('BlackWeashop', 'WEAPON_CARBINERIFLE', 95000),
	('BlackWeashop', 'WEAPON_COMBATPISTOL', 15000),
	('BlackWeashop', 'WEAPON_COMPACTRIFLE', 65000),
	('BlackWeashop', 'WEAPON_DBSHOTGUN', 45000),
	('BlackWeashop', 'WEAPON_GUSENBERG', 130000),
	('BlackWeashop', 'WEAPON_HEAVYSHOTGUN', 75000),
	('BlackWeashop', 'WEAPON_HEAVYSNIPER', 370000),
	('BlackWeashop', 'WEAPON_KNIFE', 300),
	('BlackWeashop', 'WEAPON_KNUCKLE', 300),
	('BlackWeashop', 'WEAPON_MACHINEPISTOL', 55000),
	('BlackWeashop', 'WEAPON_MARKSMANRIFLE', 200000),
	('BlackWeashop', 'WEAPON_MICROSMG', 55000),
	('BlackWeashop', 'WEAPON_MG', 115000),
	('BlackWeashop', 'WEAPON_MOLOTOV', 0),
	('BlackWeashop', 'WEAPON_PISTOL', 10000),
	('BlackWeashop', 'WEAPON_PISTOL50', 30000),
	('BlackWeashop', 'WEAPON_PUMPSHOTGUN', 55000),
	('BlackWeashop', 'WEAPON_REVOLVER', 35000),
	('BlackWeashop', 'WEAPON_SAWNOFFSHOTGUN', 75000),
	('BlackWeashop', 'WEAPON_SMG', 75000),
	('BlackWeashop', 'WEAPON_SNIPERRIFLE', 180000),
	('BlackWeashop', 'WEAPON_SPECIALCARBINE', 95000),
	('BlackWeashop', 'WEAPON_SWITCHBLADE', 400),

	('GunShop', 'WEAPON_BALL', 50),
	('GunShop', 'WEAPON_BAT', 500),
	('GunShop', 'WEAPON_BATTLEAXE', 800),
	('GunShop', 'WEAPON_BOTTLE', 150),
	('GunShop', 'WEAPON_DAGGER', 800),
	('GunShop', 'WEAPON_FIREEXTINGUISHER', 300),
	('GunShop', 'WEAPON_FIREWORK', 10000),
	('GunShop', 'WEAPON_FLARE', 500),
	('GunShop', 'WEAPON_FLAREGUN', 7500),
	('GunShop', 'WEAPON_FLASHLIGHT', 100),
	('GunShop', 'WEAPON_GOLFCLUB', 500),
	('GunShop', 'WEAPON_HAMMER', 500),
	('GunShop', 'WEAPON_HATCHET', 500),
	('GunShop', 'WEAPON_KNIFE', 500),
	('GunShop', 'WEAPON_KNUCKLE', 500),
	('GunShop', 'WEAPON_MACHETE', 500),
	('GunShop', 'WEAPON_MUSKET', 40000),
	('GunShop', 'WEAPON_NIGHTSTICK', 500),
	('GunShop', 'WEAPON_PISTOL', 15000),
	('GunShop', 'WEAPON_STUNGUN', 5000),
	('GunShop', 'WEAPON_SWITCHBLADE', 600),
	('GunShop', 'WEAPON_WRENCH', 500)
;