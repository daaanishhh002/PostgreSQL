SELECT roll_no, last_name 
FROM students;

SELECT DISTINCT branch 
FROM students;

SELECT DISTINCT age,branch 
FROM students;

SELECT first_name 
FROM students 
WHERE age > 18

SELECT last_name 
FROM students 
WHERE first_name = 'Mohammed'

SELECT first_name, last_name 
FROM students
WHERE age > 21 AND NOT first_name = 'Mohammed';

DELETE FROM students
WHERE first_name = 'Mohammed';