SELECT *
FROM customers
WHERE city IN ('Philadelphia','Seattle');

SELECT *
FROM sales
WHERE ship_date BETWEEN '2015-05-10' AND '2016-05-10';

SELECT *
FROM customers
WHERE customer_name LIKE 'Jack %';



/* Assignment */
SELECT DISTINCT city
FROM customers
WHERE region in ('North','East');

SELECT *
FROM sales
WHERE sales BETWEEN 100 AND 500;

SELECT customer_name
FROM customers
WHERE customer_name LIKE '% ____';