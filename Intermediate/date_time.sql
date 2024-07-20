-- date
SELECT CURRENT_DATE;


-- time
SELECT CURRENT_TIME(2);


-- timestamp
SELECT CURRENT_TIMESTAMP;


-- age
SELECT AGE(CURRENT_DATE,'2002-05-10');

SELECT
	order_line,
	ship_date,
	order_date,
	AGE(ship_date, order_date) AS time_taken
FROM sales
ORDER BY time_taken DESC;


-- extract
SELECT EXTRACT(DAY FROM CURRENT_DATE);

SELECT
	order_date,
	ship_date,
	(EXTRACT (EPOCH FROM ship_date) - EXTRACT (EPOCH FROM order_date))
FROM sales;



/* Assignment */
SELECT AGE(CURRENT_DATE,'1939-04-06');

SELECT
	EXTRACT(MONTH FROM order_date) AS mon,
	SUM(sales) as sales
FROM sales
WHERE product_id IN 
	(
	SELECT product_id
	FROM products
	WHERE sub_category = 'Chairs'
	)
GROUP BY mon
ORDER BY sales;