SELECT *,
	CASE WHEN age < 30 THEN 'Young'
		 WHEN age > 60 THEN 'Old'
		 ELSE 'Middle Age'
	END AS age_grp
FROM customers;