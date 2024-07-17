CREATE VIEW logistics AS
SELECT 
	a.order_line,
	a.order_id,
	b.customer_name,
	b.city,
	b.state,
	b.country
FROM sales AS a
LEFT JOIN customers AS b
ON a.customer_id = b.customer_id
ORDER BY a.order_line;

SELECT * FROM logistics;


CREATE OR REPLACE VIEW logistics AS
SELECT 
	a.order_line,
	a.order_id,
	b.customer_name,
	b.city,
	b.state,
	b.country,
	b.postal_code,
	b.region
FROM sales AS a
LEFT JOIN customers AS b
ON a.customer_id = b.customer_id
ORDER BY a.order_line;


DROP VIEW logistics;



/* Assignment */
CREATE VIEW Daily_Billing AS
SELECT 
	order_line,
	product_id,
	sales,
	discount
FROM sales
WHERE order_date IN 
	(
	SELECT MAX(order_date)
	FROM sales
	);

SELECT * FROM Daily_Billing;

DROP VIEW Daily_Billing;