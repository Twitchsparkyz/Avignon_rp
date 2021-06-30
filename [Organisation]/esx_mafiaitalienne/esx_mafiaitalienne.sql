INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_mafiaitalienne','mafiaitalienne',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_mafiaitalienne','mafiaitalienne',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_mafiaitalienne', 'mafiaitalienne', 1)
;

INSERT INTO `jobs` (`name`, `label`, `SecondaryJob`) VALUES
('mafiaitalienne', 'mafiaitalienne', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('mafiaitalienne', 0, 'tueur', 'Homme de Main', 200, 'null', 'null'),
('mafiaitalienne', 1, 'garde du corp', 'Pilote', 400, 'null', 'null'),
('mafiaitalienne', 2, 'garde du corp', 'Garde du Corps', 400, 'null', 'null'),
('mafiaitalienne', 3, 'boss', 'Bras Droit', 600, 'null', 'null'),
('mafiaitalienne', 4, 'boss', 'Chef', 1000, 'null', 'null');

CREATE TABLE `fine_types_mafiaitalienne` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_mafiaitalienne` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',150000,3),
	('Raket',350000,3)
;