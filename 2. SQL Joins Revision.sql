-- Inner Join 
USE sql_store;

SELECT *
FROM order_items o JOIN products p
ON o.product_id = p.product_id;

-- Joining the tables across multiple db
USE sql_hr;

SELECT *
FROM sql_store.order_items o JOIN sql_inventory.products p
ON o.product_id =  p.product_id;


-- Joining table with itself
USE sql_hr;

SELECT *
FROM employees e JOIN employees m
ON e.employee_id = m.reports_to;

-- Joining two tables

USE sql_store;

SELECT * FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_statuses os
ON o.status = os.order_status_id;

use sql_invoicing;

SELECT * FROM payments p
JOIN clients c 
ON p.client_id = c.client_id
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id;

-- Compound Join Condition
USE sql_store;

SELECT *
FROM order_items oi join order_item_notes oin
ON oi.order_id = oin.order_id and oi.product_id = oin.product_id;

-- implicit join condition

SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

-- cross join

SELECT *
FROM orders o, customers c;

-- Outer Join

SELECT * FROM customers c right outer join orders o
ON c.customer_id = o.customer_id;

SELECT * FROM customers c left outer join orders o
ON c.customer_id = o.customer_id;


-- Outer joining Multiple tables

select * from customers c left join orders o
ON c.customer_id = o.customer_id
left join shippers sh
ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- Self outer joins

USE sql_hr;

SELECT * 
FROM employees e
LEFT JOIN employees m
ON e.employee_id = m.reports_to;


-- using keyword is useful in joining two tables in case if two tables has columns with same name

use sql_store;

SELECT * FROM 
customers c JOIN orders o
USING(customer_id)
LEFT JOIN shippers
USING(shipper_id);


-- NATURAL JOIN : We don't mention the join condition we let db do that and this can sometime lead to abnormal behivaour

SELECT *
FROM orders o NATURAL JOIN customers c;

-- CROSS JOIN

-- EXplecit cross join
SELECT *
FROM customers c CROSS JOIN  products p;

-- Implecit cross join

SELECT *
FROM orders o, customers c;



-- UNION and UNION ALL

SELECT *, "Active" as status FROM orders
WHERE order_date>="2019-01-01"
UNION
SELECT *, "Inactive" as status FROM orders
WHERE order_date<="2019-01-01";