USE `es_extended`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mechanic', 'DIR', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mechanic', 'DIR', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_mechanic', 'DIR', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mechanic', 'DIR')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('mechanic',0,'recrue','Stagiaire DIR',5000,'{}','{}'),
	('mechanic',1,'novice','Employé DIR',7500,'{}','{}'),
	('mechanic',2,'experimente','Chef d\'équipe DIR',10000,'{}','{}'),
	('mechanic',3,'chief',"Directeur Adjoint DIR",12500,'{}','{}'),
	('mechanic',4,'boss','Directeur DIR',15000,'{}','{}')
;

INSERT INTO `items` (name, label, weight) VALUES
	('gazbottle', 'bouteille de gaz', 10),
	('fixtool', 'outils réparation', 20),
	('carotool', 'outils carosserie', 20),
	('blowpipe', 'Chalumeaux', 10),
	('fixkit', 'Kit réparation', 10),
	('carokit', 'Kit carosserie', 10)
;
