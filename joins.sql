-- inner join
SELECT
	a.order_line,
	a.product_id,
	a.customer_id,
	a.sales,
	b.customer_name,
	b.age
FROM sales AS a
INNER JOIN customers AS b
ON a.customer_id = b.customer_id
ORDER BY customer_id;


-- left join
SELECT
	a.order_line,
	a.product_id,
	a.customer_id,
	a.sales,
	b.customer_name,
	b.age
FROM sales AS a
LEFT JOIN customers AS b
ON a.customer_id = b.customer_id
ORDER BY customer_id;


-- right join
SELECT
	a.order_line,
	a.product_id,
	a.customer_id,
	a.sales,
	b.customer_name,
	b.age
FROM sales AS a
RIGHT JOIN customers AS b
ON a.customer_id = b.customer_id
ORDER BY customer_id;


-- full join
SELECT
	a.order_line,
	a.product_id,
	a.customer_id,
	a.sales,
	b.customer_name,
	b.age,
	b.customer_id
FROM sales AS a
FULL JOIN customers AS b
ON a.customer_id = b.customer_id
ORDER BY a.customer_id, b.customer_id;


-- Cross Join
SELECT
	a.customer_id,
	b.customer_name
FROM sales AS a, customers AS b;


-- intersection
SELECT customer_id FROM sales
INTERSECT
SELECT customer_id FROM customers;


-- except
SELECT customer_id FROM sales
EXCEPT
SELECT customer_id FROM customers;


-- union
SELECT customer_id FROM sales
UNION
SELECT customer_id FROM customers;


/* Using ALL at the end of the above three keywords includes duplicates as well */