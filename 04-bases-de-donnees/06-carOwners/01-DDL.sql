CREATE TABLE brands(
   brand_id SERIAL,
   brand_name VARCHAR(50) NOT NULL,
   brand_slogan VARCHAR(255),
   PRIMARY KEY(brand_id)
);

CREATE TABLE owners(
   owner_id INTEGER,
   owner_lastname VARCHAR(50) NOT NULL,
   owner_firstname VARCHAR(50) NOT NULL,
   PRIMARY KEY(owner_id)
);

CREATE TABLE cars(
   car_id SERIAL,
   car_name VARCHAR(100) NOT NULL,
   brand_id INTEGER NOT NULL,
   PRIMARY KEY(car_id),
   FOREIGN KEY(brand_id) REFERENCES brands(brand_id)
);

CREATE TABLE cars_owners(
   car_id INTEGER,
   car_owner_id INTEGER,
   car_registration CHAR(9) NOT NULL,
   PRIMARY KEY(car_id, car_owner_id),
   FOREIGN KEY(car_id) REFERENCES cars(car_id),
   FOREIGN KEY(car_owner_id) REFERENCES owners(owner_id)
);
