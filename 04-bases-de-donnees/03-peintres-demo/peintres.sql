
DROP TABLE IF EXISTS peintres;

CREATE TABLE IF NOT EXISTS peintres
(
	id INT PRIMARY KEY,
	nom VARCHAR(100) NOT NULL,
	prenom VARCHAR(50) NULL DEFAULT 'n/a',
	date_naissance DATE NOT NULL,
	date_deces DATE NULL DEFAULT NULL,
	total_oeuvres INT CHECK(total_oeuvres >= 0) NOT NULL DEFAULT 1,
	apreciation DECIMAL(3,2) NOT NULL
);

INSERT INTO peintres 
(id, nom, prenom, date_naissance, date_deces, total_oeuvres, apreciation)
VALUES 
(1, 'Mil', 'Mustapha', '1980-05-07', NULL, 20, 4.2);


INSERT INTO peintres 
(id, nom, date_naissance, total_oeuvres, apreciation)
VALUES 
(2, 'Bastian', '1991-02 -14', 1, 0.7);



SELECT * FROM peintres;