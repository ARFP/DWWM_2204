CREATE TABLE Categories(
   cat_id VARCHAR(50),
   category VARCHAR(50) NOT NULL,
   PRIMARY KEY(cat_id)
);

CREATE TABLE products(
   reference INT NOT NULL,
   name VARCHAR(50) NOT NULL,
   main_cat_id VARCHAR(50) NOT NULL,
   PRIMARY KEY(reference),
   FOREIGN KEY(main_cat_id) REFERENCES Categories(cat_id)
);

CREATE TABLE products_categories(
   reference INT,
   cat_id VARCHAR(50),
   date_add DATE NOT NULL,
   PRIMARY KEY(reference, cat_id),
   FOREIGN KEY(reference) REFERENCES products(reference),
   FOREIGN KEY(cat_id) REFERENCES Categories(cat_id)
);

INSERT INTO categories (cat_id, category) VALUES 
(101, 'Accessoires'),
(102, 'Sport'),
(103, 'Chaussures');

INSERT INTO products (reference, name, main_cat_id) VALUES 
(1, 'Chaussettes Mike', 102),
(2, 'Basket Fuila', 103),
(3, 'Montre Adadas', 101);

INSERT INTO products_categories (reference, cat_id, date_add) VALUES
(2, 102, '2022-09-14'),
(3, 102, '2022-09-15');
