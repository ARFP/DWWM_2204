SELECT * FROM countries;
SELECT * FROM cities;

-- Sélectionner le nom de toutes les villes commençant par la lettre "M"
SELECT city_name FROM cities;
SELECT city_name 
FROM cities
WHERE city_name LIKE 'M%' OR city_name LIKE 'm%';

-- Séléctionner le noms des villes se terminant par la lettre "e"
SELECT city_name 
FROM cities
WHERE city_name LIKE '%e';

-- Sélectionner le nom des villes contenant la lettre "l"
SELECT city_name 
FROM cities
WHERE city_name NOT LIKE '%l%' ;

-- Sélectionner les villes dont le nom contient plus de 5 lettres
-- Afficher les 3 1er résultats
SELECT city_name , LENGTH(city_name) AS longueur
FROM cities
GROUP BY city_id
HAVING LENGTH(city_name) >5
ORDER BY longueur ASC
LIMIT 3;

-- Sélectionner les villes dont le nom contient plus de 5 lettres
-- Afficher 3 lignes à partir du 2ème résultat
SELECT city_name , LENGTH(city_name) AS longueur
FROM cities
GROUP BY city_id
HAVING LENGTH(city_name) > 5
ORDER BY longueur ASC
LIMIT 3 OFFSET 2;

-- Sélectionner l’identifiant et le nom de toutes les villes triées par nom de ville et par ordre alphabétique.
SELECT city_id,city_name FROM cities ORDER BY city_name ASC;

-- Sélectionner toutes les villes avec le nom du pays associé à chaque ville. Trier la liste par code pays et par ordre alphabétique inverse.

SELECT city_name , country_name 
FROM countries
NATURAL JOIN cities
ORDER BY country_code DESC;

-- Equivalent de la requête ci-dessus
SELECT city_name , country_name 
FROM cities
INNER JOIN countries ON cities.country_code = countries.country_code
ORDER BY cities.country_code DESC;

-- Sélectionner le code ISO et le nom de tous les pays avec le nombre de villes par pays. 
-- Les pays avec le moins de villes apparaissent en 1er.

SELECT countries.country_code, countries.country_name, 
COUNT(cities.*) AS nb_ville
FROM countries
NATURAL JOIN cities
group by cities.country_code, countries.country_name 
ORDER BY nb_ville;

-- Créer la requête SELECT correspondant au résultat affiché dans le PDF de l'exercice :

SELECT cities.city_id, cities.city_name, countries.country_code ,
country_name, COUNT (cities.*) AS number_of_cities 
FROM cities 
JOIN countries ON cities.country_code = countries.country_code
JOIN cities as cities2 ON cities.country_code = cities2.country_code
GROUP BY cities.city_id, countries.country_code
ORDER BY cities.city_id;

SELECT cities.city_id, cities.city_name, countries.country_code ,
country_name, COUNT (cities.*) AS number_of_cities 
FROM cities 
NATURAL JOIN countries 
JOIN cities as cities2 ON cities.country_code = cities2.country_code
GROUP BY cities.city_id, countries.country_code
ORDER BY cities.city_id;


