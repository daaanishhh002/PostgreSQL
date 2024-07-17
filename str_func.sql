-- length
SELECT 
	customer_name,
	LENGTH(customer_name) AS char_len
FROM customers
ORDER BY char_len DESC;


-- case
SELECT
	UPPER(customer_name),
	LOWER(customer_name)
FROM customers;


-- replace
SELECT
	customer_name,
	country,
	REPLACE(LOWER(country),'united states','US') AS short
FROM customers;


-- trim
SELECT TRIM(LEADING '  Supercars   ');
SELECT TRIM(BOTH 's' FROM 'Supercars');
SELECT RTRIM('Supercarsss','s');
SELECT LTRIM('aaal is well','a');


-- concat
SELECT
	customer_name,
	city||', '||state||', '||country AS address
FROM customers;


-- substring
SELECT
	SUBSTRING(customer_id, 1, 2) AS cust_grp
FROM customers;

SELECT 
	customer_id,
	customer_name,
	SUBSTRING(customer_id FOR 2) AS cust_grp
FROM customers;

SELECT 
	customer_id,
	customer_name,
	SUBSTRING(customer_id FROM 4 FOR 5) AS cust_no
FROM customers;


-- row concat
SELECT 
	order_id,
	STRING_AGG(product_id,', ') AS product_ids
FROM sales
GROUP BY order_id
ORDER BY order_id;


-- pattern match using wildcards
SELECT * FROM customers
WHERE customer_name LIKE 'G%';

SELECT * FROM customers
WHERE customer_name LIKE '%G%';

SELECT customer_name
FROM customers
WHERE customer_name LIKE '% J____';


-- pattern match using regex
SELECT customer_name
FROM customers
WHERE customer_name ~* '^(b)[a-z]+\s(b)[a-z]+$';

SELECT customer_name FROM customers
WHERE customer_name ~* '^(q|p|s|w|z|d|x)+[a-z\s]+$';



/* Assignment */
SELECT MAX(LENGTH(product_name)) FROM products;

SELECT 
	product_name||', '||sub_category||', '||category AS category_details
FROM products;

SELECT 
	product_id,
	SUBSTRING(product_id FOR 3),
	SUBSTRING(product_id FROM 5 FOR 2),
	SUBSTRING(product_id FROM 8)
FROM products;

SELECT 
	sub_category,
	STRING_AGG(product_name,', ') AS product_list
FROM products
WHERE sub_category IN ('Chairs','Tables')
GROUP BY sub_category;



/* Assignment */
SELECT customer_name
FROM customers
WHERE customer_name ~* '^[a-z]{5}\s(a|b|c|d)[a-z]{4}$'