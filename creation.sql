CREATE TABLE students(
	roll_no INT,
	first_name VARCHAR,
	last_name VARCHAR,
	age INT,
	branch VARCHAR
);

SELECT * FROM students;

INSERT INTO students
VALUES (097,'Danish','Ahmed',22,'ECE');

INSERT INTO students (roll_no, last_name, age, branch)
VALUES (68,'Faruki',21,'ECE');

INSERT INTO students
VALUES (098,'Syed','Zeeshan',23,'ECE'),
	   (099,'Mohammed','Nomaan',21,'ECE'),
	   (100,'Wasim','Akram',21,'ECE'),
	   (102,'Mohammed','Afhaam',21,'ECE');

DELETE FROM students;



COPY students 
FROM [PATH]
DELIMITER ',' 
CSV HEADER;

COPY students
FROM [PATH]
DELIMITER ',';



-- tablespaces
CREATE TABLESPACE NewSpace [PATH];

CREATE TABLE [name]() TABLESPACE NewSpace;
SET DEFAULT_TABLESPACE = NewSpace;

SELECT * FROM pg_tablespace