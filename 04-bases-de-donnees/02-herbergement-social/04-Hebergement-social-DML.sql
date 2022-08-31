INSERT INTO roles
(role_id, role_name) 
VALUES 
(1, 'directeur'),
(2, 'gardien'),
(3, 'cuisinier'),
(4, 'technicien'),
(5, 'éducateur'),
(6, 'médecin'),
(7, 'résident');


INSERT INTO people 
(person_id, person_firstname, person_lastname, person_birthdate, person_hiredate, person_active, role_id)
VALUES 
(1, 'Mike', 'DEV', '1980-02-23', '2017-08-27', true, 1),
(2, 'Jean', 'Aymar', '1973-12-17', NULL, true, 3),
(3, 'Pierre', 'KiRool', '1963-05-05', NULL, true, 2),
(4, 'Paul', 'Hette', '1953-01-18', NULL, true, 2),
(5, 'Jack', 'Bauer', '1983-12-21', NULL, true, 4),
(6, 'Léa', 'Daniel', '1966-11-30', NULL, true, 6),
(7, 'Cindy', 'Popo', '1969-10-01', NULL, true, 6),
(8, 'Edwige', 'Soca', '1978-06-01', NULL, true, 6),
(9, 'Lara', 'Kroft', '1956-04-17', NULL, true, 5),
(10, 'Lorenzo', 'Lamas', '1981-04-24', NULL, true, 5),
(11, 'Mustapha', 'M', '1990-06-11', NULL, true, 5),
(12, 'Toto', 'Titi', '1987-08-09', NULL, true, 5);

