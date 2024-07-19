CREATE TABLE employees(
	s_no INT,
	first_name VARCHAR,
	middle_name VARCHAR,
	last_name VARCHAR
);


INSERT INTO employees VALUES(1,'Paul','Van','Rosenburg');
INSERT INTO employees VALUES(2,'Michael',NULL,'Jordan');
INSERT INTO employees VALUES(3,NULL,'Von','Neuman');
INSERT INTO employees VALUES(4,'Mark','Henry',NULL);
INSERT INTO employees VALUES(5,NULL,NULL,'Mathers');

SELECT * FROM employees;


SELECT 
	*,
	COALESCE(first_name,middle_name,last_name) AS name_corr
FROM employees;