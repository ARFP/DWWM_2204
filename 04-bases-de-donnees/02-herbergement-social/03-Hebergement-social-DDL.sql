
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS roles;

CREATE TABLE roles
(
	role_id INT PRIMARY KEY,
	role_name VARCHAR(50) NOT NULL
);

CREATE TABLE people
(
	person_id INT,
	person_lastname VARCHAR(255) NOT NULL,
	person_firstname VARCHAR(50) NOT NULL,
	person_birthdate DATE NOT NULL,
	person_hiredate DATE NULL,
	person_active BOOLEAN NOT NULL,
	role_id INT NOT NULL,
	PRIMARY KEY(person_id)
);

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

SELECT * FROM roles;

SELECT * FROM people;