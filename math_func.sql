-- ceil floor
SELECT
	order_line,
	sales,
	CEIL(sales),
	FLOOR(sales)
FROM sales
WHERE discount > 0;


-- round
SELECT
	order_line,
	ROUND(sales)
FROM sales;


-- power
SELECT 
	age,
	POWER(age,2)
FROM customers;


-- random
SELECT RANDOM();
SELECT RANDOM()*(100-50)+50;  -- with boundary [,)


-- seed
SELECT SETSEED(0.42);
SELECT RANDOM(), RANDOM();



/* Assignment */
SELECT 
	customer_id,
	random() AS rand_n
FROM customers
ORDER BY rand_n
LIMIT 5;

SELECT 
	SUM(FLOOR(sales)),
	SUM(ROUND(sales)),
	SUM(CEIL(sales))
FROM sales;