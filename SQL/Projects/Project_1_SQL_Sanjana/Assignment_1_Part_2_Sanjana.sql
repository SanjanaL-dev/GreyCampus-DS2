/* 1 Create a new database called "School" this database should have two tables: teachers and students.
*/
/* Asnwer: Created with the pgAdmin: Object Menu -> Create -> Database OR Rt clicl Databases-> Create -> Database*/

/* 2 The students table should have columns for student_id, first_name,last_name, homeroom_number, phone, email, and graduation year.
*/

/*Answer*/
CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name varchar(35),
	last_name varchar(35),
	homeroom_number int,
	phone varchar(12) UNIQUE NOT NULL,
	email varchar(256) UNIQUE,
	graduation int
);

/* 3 The teachers table should have columns for teacher_id, first_name, last_name, homeroom_number, department, email, and phone.
*/

/*Answer*/
CREATE TABLE teachers(
    teacher_id SERIAL PRIMARY KEY,
	first_name varchar(35),
	last_name varchar(35),
	homeroom_number int,
	department varchar(32),
	email varchar(256) UNIQUE,
	phone varchar(12) UNIQUE
);

/* 4 The constraints are mostly up to you, but your table constraints do have to consider the following:
    1. We must have a phone number to contact students in case of an emergency.
    2. We must have ids as the primary key of the tables
    3. Phone numbers and emails must be unique to the individual.
*/

/* Answer: Constraints already added in above queries */

/* 5 Once you've made the tables, insert a student named Mark Watney (student_id=1) 
    who has a phone number of 777-555-1234 
    and doesn't have an email.
    He graduates in 2035 and has 5 as a homeroom number.*/

/*Answer*/
INSERT INTO students(student_id, first_name, last_name, homeroom_number, phone, graduation)
VALUES
(1, 'Mark', 'Watney', 5, '777-555-1234', 2035);

SELECT *
FROM students;

/* 6 Then insert a teacher names Jonas Salk (teacher_id = 1) 
    who as a homeroom number of 5 and is from the Biology department.
    His contact info is: jsalk@school.org and a phone number of 777-555-4321.

*/

/*Answer*/
INSERT INTO teachers(teacher_id, first_name, last_name, homeroom_number, department, email, phone)
VALUES
(1, 'Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '777-555-4321')

SELECT *
FROM teachers

/*7(NOTE) Keep in mind that these insert tasks may effect your constraints! */