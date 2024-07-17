ALTER TABLE students
    ADD mail VARCHAR;

ALTER TABLE students
    DROP COLUMN mail;

ALTER TABLE students
    ALTER COLUMN roll_no TYPE bigint;

ALTER TABLE students
    RENAME COLUMN roll_no TO roll_call;

ALTER TABLE students
    ALTER COLUMN age SET NOT NULL;

ALTER TABLE students
    ALTER COLUMN age DROP NOT NULL;

ALTER TABLE students
    ADD CONSTRAINT roll_call CHECK (roll_call > 0);

ALTER TABLE students
    ADD PRIMARY KEY (roll_call);

ALTER TABLE physics
    ADD CONSTRAINT roll_no CHECK (roll_no > 0)
    FOREIGN KEY (roll_no)
    REFERENCES students (roll_call);