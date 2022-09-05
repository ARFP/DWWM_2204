
SELECT * FROM residents;

SELECT * FROM roles;

SELECT * FROM people;

SELECT 
person_id, person_lastname, person_firstname, person_birthdate, person_hiredate, person_active, role_id 
FROM people;

-- Sélectionner, l'identifiant de la personne, l'identifiant du role, le nom et prénom de la personne
-- à partir de la table "people" où le role_id est égal à 5
SELECT 
person_id, role_id, person_firstname, person_lastname
FROM people
WHERE role_id = 5
;

-- Sélectionner, l'identifiant de la personne, l'identifiant du role, le nom et prénom de la personne
-- à partir de la table "people" où le role_id est différent de 1
SELECT 
person_id, role_id, person_firstname, person_lastname
FROM people
WHERE role_id <> 1
;


-- Sélectionner, l'identifiant de la personne, l'identifiant du role, le nom et prénom de la personne
-- à partir de la table "people" où le nom du rôle est différent de 'directeur'



SELECT role_name FROM roles 
WHERE 
role_name = 'cuisinier' OR 
role_name = 'éducateur' OR 
role_name = 'médecin' OR 
role_name = 'technicien' OR 
role_name = 'résident' OR 
role_name = 'gardien';

SELECT role_name FROM roles 
WHERE role_name NOT IN('cuisinier', 'éducateur');


SELECT role_name FROM roles WHERE role_id = 1;


 -- requête imbriquée (à éviter tant que possible)
SELECT 
person_id,
role_id,
person_firstname,
person_lastname
FROM people
WHERE role_id <> (SELECT role_id FROM roles WHERE role_id = 1)
;



SELECT 
person_id, person_lastname, person_firstname, person_birthdate, person_hiredate, person_active, role_id
FROM people
WHERE TRUE 
ORDER BY role_id ASC, person_birthdate ASC 
;