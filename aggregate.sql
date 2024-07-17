-- count
SELECT 
	COUNT(order_line) AS "Total no. of products ordered",
	COUNT(DISTINCT order_id) AS "Total no. of orders",
	COUNT(DISTINCT customer_id) AS "Total no. of customers",
	COUNT(DISTINCT product_id) AS "Total no. of products"
FROM sales;


-- sum
SELECT 
	SUM(sales) AS "Sales",
	SUM(profit) AS "Profits"
FROM sales;


-- average
SELECT 
	AVG(quantity) AS "Average sale quantity"
FROM sales;


-- min max
SELECT 
	MIN(profit) AS "Minimum profit",
	MAX(profit) AS "Maximum profit"
FROM sales;



/* Assignment */
SELECT SUM(sales)
FROM sales;

SELECT COUNT(customer_id)
FROM customers
WHERE age BETWEEN 20 AND 30 
	AND region IN ('North');

SELECT AVG(age)
FROM customers
WHERE region = 'East';

SELECT MIN(age), MAX(age)
FROM customers
WHERE city IN ('Philadelphia');