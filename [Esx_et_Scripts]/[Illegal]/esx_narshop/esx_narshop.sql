CREATE TABLE `shops2` (

	`id` int(11) NOT NULL AUTO_INCREMENT,
	`store` varchar(100) NOT NULL,
	`item` varchar(100) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `shops2` (store, item, price) VALUES
	('narekshop','yusuf',500),
	('narekshop','grip',300),
	('narekshop','flashlight',250),
	('narekshop','silencieux',750)
	/*('narekshop','clip',100)*/
;

INSERT INTO `items`(`name`, `label`, `limit`, `rare`, `can_remove`) VALUES 
('yusuf', 'Ornement de luxe', -1, 0, 1),
('grip', 'Poignée', -1, 0, 1),
('flashlight', 'Lampe Tactique', -1, 0, 1),
('silencieux', 'Silencieux', -1, 0, 1),
('clip', 'Chargeur', -1, 0, 1)
;