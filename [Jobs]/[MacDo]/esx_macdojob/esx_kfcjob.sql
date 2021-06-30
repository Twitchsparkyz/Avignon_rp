

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_macdo', 'macdo', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_macdo', 'macdo', 1),
  ('society_macdo_fridge', 'macdo (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_macdo', 'macdo', 1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('macdo', 'macdo')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('macdo', 0, 'recruit', 'Recrue', 300, '{}', '{}'),
  ('macdo', 1, 'employed', 'Employé', 300, '{}', '{}'),
  ('macdo', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
  ('macdo', 3, 'boss', 'Gérant', 600, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('steakc', 'Steak cru', 5),
    ('steakcui', 'Steak cuit', 5),
	
	('salads', 'Salade sale', 5),
	('saladp', 'Feuille de salade', 5),
	
    ('tomater', 'Tomate entière', 5),
	('tomatec', 'Rondelle de tomate', 5),
	
    ('fromage', 'Morceau de fromage', 5),
         
    ('patate', 'Pomme de terre', 5),
    ('patatefrie', 'Pomme de terre frit', 5),
	('frites', 'Barquette de frites', 10),  -------------------------
    ('burger', 'Hamburger', 10), -----------------
	
    ('soda', 'Soda', 5), ---------------
    ('jusfruit', 'Jus de fruits', 10),
    ('icetea', 'Ice Tea', 10),
    ('energy', 'Energy Drink', 10),
    ('drpepper', 'Dr. Pepper', 10),
    ('limonade', 'Limonade', 10),
    ('caisseketchup', 'Caisse de Ketchup', 40),
    ('sachetketchup', 'Sachet de Ketchup', 100)
;

-- A rentrer si vous avez un msg d'erreur sql avec tout les aliments!!

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('caisseketchup', 'Caisse de Ketchup', 50),
    ('sachetketchup', 'Sachet de Ketchup', 100)
;
