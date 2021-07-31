-- select * from sql_store.customers;

-- select * from sql_store.orders;

-- USE sql_store;

-- SELECT * FROM customers;

-- SELECT *
-- FROM customers
-- -- WHERE customer_id = 1
-- ORDER BY first_name;

-- SELECT * FROM products
-- WHERE quantity_in_stock IN (49, 38, 72);

-- SELECT * FROM products
-- WHERE quantity_in_stock NOT IN (49, 38, 72);

-- Between is used to get rows in a particular range

-- SELECT * FROM products 
-- WHERE quantity_in_stock BETWEEN 10 AND 49;

-- SELECT * FROM products 
-- WHERE NOT quantity_in_stock BETWEEN 10 AND 49;




-- SELECT * FROM customers
-- WHERE address LIKE "%Trail%" OR address LIKE "%AVENUE%" AND phone LIKE "%9";

-- SELECT * FROM customers
-- WHERE last_name REGEXP "field";

-- begining of string

-- SELECT * FROM customers 
-- WHERE last_name REGEXP "^field";

-- Ends with
-- SELECT * FROM customers
-- WHERE last_name REGEXP "field$";

-- multiple string pattern matching
-- SELECT * FROM customers
-- WHERE last_name REGEXP "field|mac|rose";

-- SELECT * FROM customers
-- WHERE last_name REGEXP "field$|^mac|rose";

-- SELECT * FROM customers
-- WHERE last_name REGEXP "[gim]e"; -- ge ie me

-- SELECT * FROM customers
-- WHERE last_name REGEXP "e[gim]"; -- eg ei em

-- SELECT * FROM customers 
-- WHERE last_name REGEXP "[a-h]e";

-- -- ^ begining
-- -- $ end
-- -- | logical or
-- -- [abcd]
-- -- [a-h]

-- Get the customers whose 
-- 1. first name are ELKA or AMBUR

SELECT * FROM customers 
WHERE first_name REGEXP "ELKA|AMBUR";

-- last name end with EY or ON 

SELECT * FROM customers
WHERE last_name REGEXP "ey$|on$";

-- last names start with my or contains se

SELECT * FROM customers 
WHERE last_name REGEXP "^my|^se";

-- last na,es contains b followed by r u
SELECT * FROM customers
WHERE last_name REGEXP "b[ru]";

-- NULL
SELECT * FROM customers
WHERE phone IS NULL;

SELECT * FROM customers
WHERE phone IS NOT NULL;

-- Exercise

SELECT * FROM orders
WHERE shipped_date IS NULL;

-- Sorting ASCending order

SELECT * FROM orders
ORDER BY order_date ASC;

-- Descending order
SELECT * FROM orders
ORDER BY order_date DESC;

