
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM products_categories;

-- Afficher les produits avec le nom de la catégorie principale
SELECT reference, name, category
FROM products 
INNER JOIN categories ON products.main_cat_id = categories.cat_id;

-- Afficher les produits avec le nom de chaque catégorie associée sauf la principale
SELECT reference, name, category 
FROM products 
NATURAL JOIN products_categories -- JOIN products_categories ON products.reference = products_categories.reference
NATURAL JOIN categories;