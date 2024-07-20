SELECT 
	a.*,
	b.total_quantity,
	b.total_sales
FROM customers AS a
LEFT JOIN 
	(
	SELECT 
		customer_id,
		SUM(quantity) AS total_quantity,
		SUM(sales) AS total_sales
	FROM sales
	GROUP BY customer_id
	) AS b
ON a.customer_id = b.customer_id;

CREATE TABLE top_customers AS(
	SELECT
		a.*,
		b.total_quantity,
		b.total_sales
	FROM customers AS a
	LEFT JOIN 
	(
	SELECT 
		customer_id,
		SUM(quantity) AS total_quantity,
		SUM(sales) AS total_sales
	FROM sales
	GROUP BY customer_id
	) AS b
	ON a.customer_id = b.customer_id
);


-- row number, rank, dense rank and ntile
SELECT 
	customer_id,
	customer_name,
	state,
	total_quantity,
	ROW_NUMBER() OVER(PARTITION BY state ORDER BY total_quantity DESC) AS rank_n,
	RANK() OVER(PARTITION BY state ORDER BY total_quantity DESC) AS row_n,
	DENSE_RANK() OVER(PARTITION BY state ORDER BY total_quantity DESC) AS drank_n,
	NTILE(4) OVER(PARTITION BY state ORDER BY total_quantity DESC) AS tile_n
FROM top_customers;


-- avg, count, total sum, running sum, lag and lead
SELECT 
	customer_name,
	state,
	total_sales,
	AVG(total_sales) OVER(PARTITION BY state),
	COUNT(customer_name) OVER(PARTITION BY state),
	SUM(total_sales) OVER(PARTITION BY state),
	SUM(total_sales) OVER(PARTITION BY state ORDER BY customer_name),
	LAG(total_sales, 1) OVER(PARTITION BY state ORDER BY customer_name),
	LEAD(total_sales, 1) OVER(PARTITION BY state ORDER BY customer_name)
FROM top_customers;