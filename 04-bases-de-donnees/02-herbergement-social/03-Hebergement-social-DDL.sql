-- DDL : Data Definition Language (Langage de définition des données)
-- Permet de manipuler : TABLE, VIEW, TRIGGER, PROCEDURE

-- CREATE : créer une structure de données 
-- ALTER : Modifier une structure de donnes
-- DROP : Supprimer une structure de données

DROP TABLE IF EXISTS events_registration CASCADE;
DROP TABLE IF EXISTS events CASCADE;
DROP TABLE IF EXISTS activities CASCADE;
DROP TABLE IF EXISTS residents_medical_needs CASCADE;
DROP TABLE IF EXISTS residents CASCADE;
DROP TABLE IF EXISTS medical_needs CASCADE;
DROP TABLE IF EXISTS people CASCADE;
DROP TABLE IF EXISTS roles CASCADE;

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
	person_role_id INT NOT NULL,
	PRIMARY KEY(person_id)
	-- ,FOREIGN KEY (person_role_id) REFERENCES roles(role_id)
);

CREATE TABLE residents
(
	person_id INT,
	resident_date_arrival TIMESTAMP NOT NULL,
	resident_date_leave TIMESTAMP NULL DEFAULT NULL, 
	resident_doctor_id INT NULL,
	PRIMARY KEY (person_id)
);

CREATE TABLE medical_needs
(
	medical_needs_id serial PRIMARY KEY,
	medical_needs_label varchar (255) NOT NULL
);

CREATE TABLE  residents_medical_needs
(
	person_id int NOT NULL,
	medical_needs_id int NOT NULL,
	PRIMARY KEY (person_id, medical_needs_id),
	constraint TOTO FOREIGN KEY (person_id) REFERENCES residents(person_id),
	FOREIGN KEY (medical_needs_id) REFERENCES medical_needs(medical_needs_id)
);

CREATE TABLE activities 
(
   activity_id SERIAL,
   activity_label VARCHAR(255) NOT NULL,
   PRIMARY KEY(activity_id)
);

CREATE TABLE events(
   event_id VARCHAR(50),
   event_date DATE NOT NULL,
   event_start TIME NOT NULL,
   event_end TIME NOT NULL,
   event_cap_min SMALLINT NOT NULL DEFAULT 3,
   event_cap_max SMALLINT NOT NULL DEFAULT 20,
   event_state SMALLINT NOT NULL DEFAULT 1,
   person_id INTEGER NOT NULL,
   activity_id INTEGER NOT NULL,
   PRIMARY KEY(event_id),
   FOREIGN KEY(person_id) REFERENCES people(person_id),
   FOREIGN KEY(activity_id) REFERENCES activities(activity_id)
);

CREATE TABLE events_registration
(
   person_id INTEGER,
   event_id VARCHAR(50),
   PRIMARY KEY(person_id, event_id),
   FOREIGN KEY(person_id) REFERENCES residents(person_id),
   FOREIGN KEY(event_id) REFERENCES events(event_id)
);




-- ALTER TABLE people 
--	ADD FOREIGN KEY (person_role_id) REFERENCES roles(role_id);
	
ALTER TABLE people 
	ADD CONSTRAINT fk_people_role_id 
	FOREIGN KEY (person_role_id) REFERENCES roles(role_id)
	ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE residents 
	ADD CONSTRAINT fk_residents_people_id FOREIGN KEY (person_id) REFERENCES people(person_id),
	ADD CONSTRAINT fk_residents_doctor_id FOREIGN KEY (resident_doctor_id) REFERENCES people(person_id);
	
	
