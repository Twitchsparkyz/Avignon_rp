INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_LaVague','LaVague',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_LaVague','LaVague',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_LaVague', 'LaVague', 1)
;

INSERT INTO `jobs` (`name`, `label`, `SecondaryJob`) VALUES
('LaVague', 'LaVague', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('LaVague', 0, 'Recrue', 'Recrue', 200, 'null', 'null'),
('LaVague', 1, 'Petit', 'Petit', 400, 'null', 'null'),
('LaVague', 2, 'Grand', 'Grand', 600, 'null', 'null'),
('LaVague', 3, 'boss', 'Bras droit', 1000, 'null', 'null'),
('LaVague', 4, 'boss', 'Jefe', 1000, 'null', 'null');

CREATE TABLE `fine_types_LaVague` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_LaVague` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',150000,3),
	('Raket',350000,3)
;