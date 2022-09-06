
-- Sélectionner tous les éducateurs.
-- role educateur = 5
SELECT person_lastname, person_firstname FROM people WHERE person_role_id = 5;

-- Sélectionner tous les employés autre que le directeur.
SELECT person_id, person_lastname, person_firstname FROM people WHERE person_role_id <> 1;

-- Sélectionner toutes les personnes triées par rôle puis par nom.
SELECT * FROM people ORDER BY person_role_id ASC, person_lastname ASC;


-- Sélectionner tous les rôles avec le nombre de personnes associées à chaque rôle.

SELECT * FROM roles;
SELECT COUNT(*) FROM people WHERE person_role_id = 5;
/*
EXPLAIN SELECT 
role_id, 
role_name,
(SELECT COUNT(*) FROM people WHERE person_role_id = role_id) as nb
FROM roles;
*/

SELECT * FROM people, roles
WHERE person_role_id = role_id
ORDER BY person_id ASC, role_id ASC;


SELECT 
*
FROM people JOIN roles ON person_role_id = role_id
ORDER BY person_id ASC, role_id ASC;


