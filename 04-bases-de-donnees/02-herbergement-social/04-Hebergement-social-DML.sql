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
(person_id, person_firstname, person_lastname, 
 person_birthdate, person_hiredate, 
 person_active, role_id)
VALUES 
(1, 'Mike', 'DEV', '1980-02-23', '2017-08-27', true, 1),
(2, 'Toto', 'Dubizou', '1963-12-17', NULL, true, 3);