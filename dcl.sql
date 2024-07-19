CREATE USER admin
WITH PASSWORD 'township'
VALID UNTIL '2024-07-21';

GRANT 
	SELECT,
	INSERT,
	UPDATE
ON products
TO admin;

GRANT ALL ON products
TO admin;

REVOKE ALL ON products
FROM admin;

DROP USER admin;

ALTER USER admin
RENAME TO intern;


-- viewing user activity
SELECT * FROM pg_user;
SELECT * FROM pg_stat_activity;