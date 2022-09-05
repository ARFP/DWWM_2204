-- TRUNCATE TABLE residents;
-- TRUNCATE TABLE people;
-- TRUNCATE TABLE roles;

INSERT INTO roles
VALUES 
(1, 'résident'),
(2, 'gardien'),
(3, 'cuisinier'),
(4, 'technicien'),
(5, 'éducateur'),
(6, 'médecin'),
(7, 'directeur');


INSERT INTO people 
(person_id, person_firstname, person_lastname, person_birthdate, person_role_id)
VALUES 
(1, 'Mike', 'DEV', '1980-02-23', 7),
(2, 'Jean', 'Aymar', '1973-12-17', 3),
(3, 'Pierre', 'KiRool', '1963-05-05', 2),
(4, 'Paul', 'Hette', '1953-01-18', 2),
(5, 'Jack', 'Bauer', '1983-12-21', 4),
(6, 'Léa', 'Daniel', '1966-11-30', 6),
(7, 'Cindy', 'Popo', '1969-10-01', 6),
(8, 'Edwige', 'Soca', '1978-06-01', 6),
(9, 'Lara', 'Kroft', '1956-04-17', 5),
(10, 'Lorenzo', 'Lamas', '1981-04-24', 5),
(11, 'Mustapha', 'M', '1990-06-11', 5),
(12, 'Toto', 'Titi', '1987-08-09', 5),
(13, 'Nezplein', 'Jean', '2004-02-23', 1),
(14, 'Nie', 'Joe', '2002-05-21', 1),
(15, 'Frost', 'Jack', '2000-12-21', 1),
(16, 'Mimi', 'Léa', '1999-08-28', 1),
(17, 'Paute', 'Jessica', '2001-04-11', 1),
(18, 'Martin', 'Michel', '2002-10-09', 1),
(19, 'Dupont', 'Louise', '2002-01-07', 1),
(20, 'Alouache', 'Al', '2002-07-14', 1),
(21, 'Hamblot', 'René', '2002-05-21', 1),
(22, 'LeTaxi', 'Joe', '2002-05-02', 1);


UPDATE people SET person_lastname='DEVOL' WHERE person_id=1;

INSERT INTO residents
(person_id, resident_date_arrival, resident_date_leave, resident_doctor_id) 
VALUES 
('13', '2022-08-05 09:02:05', NULL, NULL),
('14', '2022-08-05 10:14:00', NULL, 8),
('15', '2022-08-06 14:59:00', NULL, NULL),
('16', '2022-08-11 18:45:00', NULL, NULL),
('17', '2022-09-01 12:18:00', NULL, NULL),
('18', '2022-09-02 11:37:00', NULL, NULL),
('19', '2022-09-02 08:25:00', NULL, NULL),
('20', '2022-09-02 08:29:00', NULL, NULL),
('21', '2022-09-03 09:17:00', NULL, 7),
('22', '2022-09-03 15:15:00', NULL, 8);
