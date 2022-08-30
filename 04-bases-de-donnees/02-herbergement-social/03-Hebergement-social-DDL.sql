
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
