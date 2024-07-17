SELECT region, COUNT(customer_id) AS customer_count
FROM customers
GROUP BY region;

SELECT customer_id,
	MIN(sales) AS min_sales,
	MAX(sales) AS max_sales,
	AVG(sales) AS avg_sales,
	SUM(sales) AS total_sales
FROM sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 10;

SELECT region, state,
	AVG(age) AS Age,
	COUNT(customer_id) AS customer_count
FROM customers
GROUP BY region, state;

SELECT region, 
	COUNT(customer_id) AS customer_count
FROM customers
GROUP BY region
HAVING COUNT(customer_id) > 150;


-- HAVING command is used for agg columns
-- WHERE command is used for non-agg columns

SELECT region,
	COUNT(customer_id) AS customer_count
FROM customers
WHERE customer_name LIKE 'A%'
GROUP BY region
HAVING COUNT(customer_id) > 15;



/* Assignment */
SELECT product_id,
	SUM(sales) AS total_sales,
	SUM(quantity) AS total_sales_quantity,
	COUNT(order_id) AS no_orders,
	SUM(quantity)/COUNT(order_id) AS quantity_per_order,
	MAX(sales) AS max_value,
	MIN(sales) AS min_value,
	AVG(sales) AS avg_value
FROM sales
GROUP BY product_id
HAVING COUNT(order_id) > 10
ORDER BY SUM(sales) DESC;