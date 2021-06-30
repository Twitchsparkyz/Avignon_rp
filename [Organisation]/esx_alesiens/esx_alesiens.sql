INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_alesiens','alesiens',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_alesiens','alesiens',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_alesiens', 'alesiens', 1)
;

INSERT INTO `jobs` (`name`, `label`, `SecondaryJob`) VALUES
('alesiens', 'alesiens', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('alesiens', 0, 'Recrue', 'Recrue', 500, 'null', 'null'),
('alesiens', 1, 'Soldat', 'Soldat', 500, 'null', 'null'),
('alesiens', 2, 'Leader', 'Leader', 500, 'null', 'null'),
('alesiens', 3, 'boss', 'Bras Droit', 500, 'null', 'null'),
('alesiens', 4, 'boss', 'Chef', 500, 'null', 'null');

CREATE TABLE `fine_types_alesiens` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_alesiens` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',150000,3),
	('Raket',350000,3)
;