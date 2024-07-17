SELECT *
FROM customers
ORDER BY city ASC, customer_name DESC;

SELECT *
FROM customers
WHERE age > 25
ORDER BY age ASC, city DESC;

SELECT *
FROM customers
ORDER BY age DESC
LIMIT 20;



/* Assignment */
SELECT *
FROM sales
WHERE discount > 0
ORDER BY discount DESC
LIMIT 10;