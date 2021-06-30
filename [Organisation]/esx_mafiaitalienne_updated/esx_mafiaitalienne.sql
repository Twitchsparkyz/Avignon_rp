
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_mafiaitalienne', 'mafiaitalienne', 1),
	('society_mafiaitalienne_black', 'mafiaitalienne', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_mafiaitalienne', 'mafiaitalienne', 1),
	('society_mafiaitalienne_weapons', 'mafiaitalienne', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_mafiaitalienne', 'mafiaitalienne', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('mafiaitalienne', 'mafiaitalienne')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
('mafiaitalienne', 0, 'tueur', 'Homme de Main', 500, 'null', 'null'),
('mafiaitalienne', 1, 'garde du corps', 'Pilote', 500, 'null', 'null'),
('mafiaitalienne', 2, 'garde du corps', 'Garde du Corps', 500, 'null', 'null'),
('mafiaitalienne', 3, 'boss', 'Bras Droit', 500, 'null', 'null'),
('mafiaitalienne', 4, 'boss', 'Chef', 500,'null', 'null');
;


