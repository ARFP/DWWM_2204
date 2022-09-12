
SELECT * FROM employees;

-- 1. Sélectionner le nom, prénom et salaire de tous les employés 
-- triés par date d’embauche de la plus ancienne à la plus récente.

SELECT emp_lastname,emp_firstname,emp_salary,emp_hiredate FROM employees
ORDER BY emp_hiredate ASC;

-- 2. Sélectionner le nom, salaire, date d’embauche de tous les employés 
-- triés par identifiant de manager (croissant) puis par nom (ordre alphabétique).

SELECT emp_lastname,emp_salary,emp_hiredate,emp_manager_id FROM employees
ORDER BY emp_manager_id ASC, emp_lastname ASC;

-- 3. Sélectionner le nom, prénom, salaire, date d’embauche, nom et prénom du manager de tous les employés. 
-- Trier la liste par nom de manager (ordre croissant) 
-- puis par date d’embauche de la plus récente à la plus ancienne.

SELECT E1.emp_lastname,E1.emp_firstname,E1.emp_salary,E1.emp_hiredate,M1.emp_lastname,M1.emp_firstname
FROM employees AS E1
JOIN employees AS M1 ON M1.emp_id = E1.emp_manager_id
ORDER BY M1.emp_lastname ASC , E1.emp_hiredate DESC ;

-- 4. Sélectionner les employés sans manager.
SELECT * 
FROM EMPLOYEES
WHERE emp_manager_id IS NULL;

-- 5. Sélectionner le prénom et nom de tous les managers avec, pour chacun, le nombre de leur subordonnés. 
-- Les managers avec le moins de subordonnés apparaissent en 1er.

SELECT 
	M1.emp_lastname 
	, M1.emp_firstname
	, COUNT (E1.emp_id) AS nb_sub
FROM EMPLOYEES AS M1
INNER JOIN EMPLOYEES AS E1 ON M1.emp_id = E1.emp_manager_id
GROUP BY M1.emp_id
ORDER BY nb_sub;

-- 6. Sélectionner le nom de tous les managers avec, pour chacun, la moyenne des salaires de leur subordonnés. 
-- Trier le résultat selon la valeur de la moyenne par ordre décroissant.

SELECT
	M1.emp_lastname
	,AVG (E1.emp_salary) AS average_salary
FROM EMPLOYEES AS M1
JOIN EMPLOYEES AS E1 ON M1.emp_id = E1.emp_manager_id
GROUP BY M1.emp_id
ORDER BY average_salary DESC;

--7. Créer la requête SELECT correspondant au résultat suivant : 
-- cf: voir le pdf

SELECT 
	M1.emp_id
	,M1.emp_lastname
	,M1.emp_firstname
	,M1.emp_salary
	,M1.emp_hiredate
	,COUNT (E1.emp_id) AS nb_sub
	,SUM(E1.emp_salary)AS total_salary
	,AVG(E1.emp_salary)AS average_salary
	--,MIN (E1.emp_salary)AS poor_sub
	--,MAX (E1.emp_salary)AS rich_sub
FROM EMPLOYEES AS M1
INNER JOIN EMPLOYEES AS E1 ON E1.emp_manager_id IS NOT NULL
WHERE M1.emp_manager_id IS NULL
GROUP BY M1.emp_id;

