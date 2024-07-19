-- number to string
SELECT 
	sales,
	'Total sales value for the order is ' || TO_CHAR(sales,'$9,999.99') AS message
FROM sales;


-- date to string
SELECT 
	order_date,
	TO_CHAR(order_date,'DD-Mon-YYYY') AS message
FROM sales;


-- number to date
SELECT TO_DATE('2019/01/15', 'YYYY/MM/DD');
SELECT TO_DATE('20221006', 'YYYYMMDD');


-- string to number
SELECT TO_NUMBER('586.236', '999.999');
SELECT TO_NUMBER('$63258.152', 'L99,999.999');