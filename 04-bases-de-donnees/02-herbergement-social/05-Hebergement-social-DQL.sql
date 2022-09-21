/* VERSION 1 */ 

-- Sélectionner tous les éducateurs. (role educateur = 5)
SELECT person_lastname, person_firstname FROM people WHERE person_role_id = 5;

-- Sélectionner tous les employés autre que le directeur.
SELECT person_id, person_lastname, person_firstname FROM people WHERE person_role_id <> 1;

-- Sélectionner toutes les personnes triées par rôle puis par nom.
SELECT * FROM people ORDER BY person_role_id ASC, person_lastname ASC;

-- Sélectionner tous les rôles avec le nombre de personnes associées à chaque rôle.
SELECT * FROM roles;
SELECT roles.role_id, roles.role_name, COUNT(people.*) 
FROM roles JOIN people ON roles.role_id = people.person_role_id
GROUP BY (roles.role_id);

/* VERSION 2 */



-- 1 Sélectionner tous les résidents actifs du plus jeune au plus âgé
SELECT p.person_lastname, p.person_birthdate 
FROM residents AS r
NATURAL JOIN people AS p 
WHERE r.resident_date_leave IS NULL
ORDER BY p.person_birthdate DESC;

-- 2 Sélectionner tous les résidents suivis par un médecin avec nom et prénom du médecin attitré
SELECT  
	P_RE.person_lastname 
	, P_RE.person_firstname 
	, RE.resident_date_arrival 
	, P_DR.person_lastname 
	, P_DR.person_firstname
FROM residents AS RE
INNER JOIN PEOPLE AS P_RE ON RE.person_id = P_RE.person_id
INNER JOIN PEOPLE AS P_DR ON RE.resident_doctor_id = P_DR.person_id;


-- 3 Mustapha Sélectionner tous les médecins avec le nombre de résidents qu'ils suivent.

SELECT person_lastname AS nom_docteur, person_firstname AS prenom_docteur, count(residents.*) AS nb_suivi

FROM people
INNER JOIN residents ON residents.resident_doctor_id = people.person_id
where person_role_id = 6
GROUP BY people.person_id

/* VERSION 3 */

-- 4 willy Sélectionner les activités en cours.
SELECT activity_id,activity_label, events.event_date, events.event_start, events.event_end
FROM events
NATURAL JOIN activities
WHERE event_state = 1 AND CURRENT_DATE = event_date AND CURRENT_TIME >= event_start AND CURRENT_TIME <= event_end 


-- 5 david Sélectionner les activités dont le nombre d’inscriptions a atteint le maximum.
-- 6 daoud Sélectionner les activités dont le nombre d’inscriptions est inférieur au minimum requis.
SELECT activity_id,activity_label 
from activities
natural join events
natural join events_registration
GROUP BY activity_id,event_id
HAVING  COUNT(events_registration.*) < event_cap_min


-- 7  julian Sélectionner les activités dont le nombre de places disponibles est inférieur au quart du maximum.
SELECT activity_label
FROM activities
NATURAL JOIN events
NATURAL JOIN events_registration
GROUP BY activity_id, event_id
HAVING (event_cap_max - COUNT(events_registration.*)) < (event_cap_max / 4)


-- 8 yacine Sélectionner les activités futures avec le nombre d’inscrits par activité.
