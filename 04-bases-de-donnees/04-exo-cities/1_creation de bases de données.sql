-
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS countries;

CREATE table countries
(
	country_code char(2),
	country_name varchar (100)
);

CREATE TABLE cities
(
	city_id int,
	city_name varchar (100),
	country_code char (2) 
);


ALTER TABLE countries 
	ADD PRIMARY KEY (country_code);
	
ALTER TABLE cities
    ADD PRIMARY KEY (city_id), 
	ADD FOREIGN KEY (country_code) REFERENCES countries (country_code);
	
 
 
	