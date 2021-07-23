-- database = any collection of related information
-- DBMS = database management system
-- CRUD = create, read, update, delete
-- TWO TYPES OF DB'S -
-- Relational DB (SQL) - each table has columns/rows, unique key ID's each row
-- Non-relational (noSQL) - anything (data) other than traditional table: documents, graphs, flexible tables, etc.
-- Query = request made to the dbms for specific information
-- always need a column with a PRIMARY KEY that uniquely defines the row
-- surrogate ID = used just to represent someone in a table, an otherwise useless primary key
-- natural ID = primary key that has mapping to real world (ie SSN)
-- foreign key = attribute stored in table that can link to another table (primary key inside of different table)
-- composite id = several columns together uniquely identify a given row

-- TYPES OF DATATYPES =
-- 1. INT = whole numbers
-- 2. DECIMAL(M, N) = decimal numbers, exact value. M- total # of all digits, N- # of digits stored after decimal
-- 3. VARCHAR(1) = string of text of length 1
-- 4. BLOB = Binary Large Object, stores large data
-- 5. DATE = 'YYYY-MM-DD'
-- 6. TIMESTAMP = 'YYYY-MM-DD HH:MM:SS' , used for recording

DROP TABLE student;

CREATE TABLE student (
    student_id INT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
);

SELECT * FROM student;

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(name, major) VALUES('Claire', 'Chemistry');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

ALTER TABLE student ADD gpa DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN gpa;

UPDATE student
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' or major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;

DELETE FROM student
WHERE student_id = 5;