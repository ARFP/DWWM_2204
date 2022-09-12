-- Suppression des tables existantes
DROP TABLE IF EXISTS employees; 

-- CREATION DES TABLES

CREATE TABLE IF NOT EXISTS employees
(
	emp_id SERIAL
	,emp_lastname VARCHAR(50) NOT NULL
	,emp_firstname VARCHAR(50) NOT NULL
	,emp_salary INT NOT NULL
	,emp_hiredate DATE NOT NULL
)
;
-- AJOUT DES CONTRAINTES 

ALTER TABLE employees
	ADD PRIMARY KEY (emp_id),
	ADD COLUMN emp_manager_id INT NULL,
	ADD CONSTRAINT fk_employees_manager FOREIGN KEY (emp_manager_id) REFERENCES employees(emp_id); 