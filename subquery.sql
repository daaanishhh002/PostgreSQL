SELECT * FROM sales
WHERE customer_id IN
	(SELECT customer_id
	 FROM customers WHERE age > 60);

SELECT
	a.product_id,
	a.product_name,
	a.category,
	b.quantity
FROM products AS a
LEFT JOIN  
	(
	SELECT product_id, SUM(quantity) AS quantity
	FROM sales
	GROUP BY product_id
	) AS b
ON a.product_id = b.product_id
ORDER BY b.quantity DESC;

SELECT customer_id,
	   order_line,
	   (
	SELECT customer_name
	FROM customers
	WHERE sales.customer_id = customers.customer_id
	)
FROM sales
ORDER BY customer_id;



/* Assignment */
SELECT *, 
	(
	SELECT customer_name
	FROM customers
	WHERE customers.customer_id = sales.customer_id
	),
	(
	SELECT age
	FROM customers
	WHERE customers.customer_id = sales.customer_id
	),
	b.product_name, b.category
FROM sales
INNER JOIN products as b
ON b.product_id = sales.product_id
ORDER BY profit DESC;