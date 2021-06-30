
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_LaVague', 'LaVague', 1)
	('society_LaVague_black', 'LaVague', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_LaVague', 'LaVague', 1)
	('society_LaVague_black', 'LaVague', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_LaVague', 'LaVague', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('LaVague', 'LaVague')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('LaVague',0,'recruit','Recrue',500,'{}','{}'),
	('LaVague',1,'officer','Officier',500,'{}','{}'),
	('LaVague',2,'sergeant','Sergent',500,'{}','{}'),
	('LaVague',3,'lieutenant','Lieutenant',500,'{}','{}'),
	('LaVague',4,'boss','Commandant',500,'{}','{}')
;


