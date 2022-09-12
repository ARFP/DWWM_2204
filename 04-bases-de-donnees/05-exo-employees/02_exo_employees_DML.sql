-- INSERTION DES DONNEES DU JEU D'ESSAI
TRUNCATE TABLE employees RESTART IDENTITY;

INSERT INTO employees 
(emp_lastname, emp_firstname, emp_salary, emp_hiredate, emp_manager_id) 
VALUES 
('Holems', 'Cathy', 100000, '2010-01-09', NULL),
('Mannheim', 'Luc', 87500, '2017-06-17', 1),
('Kipré', 'Abdou', 42800, '2017-10-19', 2),
('Martin', 'Valérie', 39500, '2018-03-30', 2),
('Slezak', 'Daniel', 75000, '2011-09-09', 1),
('Bahl', 'Tarik', 60000, '2014-04-08', 5),
('Armanetti', 'Michaël', 60000, '2014-05-06', 5),
('Goldman', 'Estelle', 55000, '2016-04-20', 5),
('Durand', 'Gabriel', 55000, '2016-12-02', 5),
('Morel', 'Audrey', 46500, '2012-07-01', 8),
('Carpentier', 'Guillaume', 58500, '2010-02-03', 8),
('Lefebvre', 'Hugo', 42000, '2015-10-11', 9),
('Sharif', 'Sonia', 54500, '2011-01-23', 9),
('Fournier', 'Sabrina', 42000, '2017-10-27', NULL), -- 14 --> 15
('Bower', 'Sarah', 49500, '2018-05-22', 5),
('Dimario', 'Jordan', 32500, '2019-06-30', 8),
('Macdowel', 'Cindy', 32500, '2019-11-04', 9);

-- Mise à jour du manager de FOURNIER Sabrina
UPDATE employees 
SET emp_manager_id = 15
WHERE emp_id = 14;
