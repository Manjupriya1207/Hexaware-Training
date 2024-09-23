create database Sis;
use Sis;
create table Students (
student_id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
date_of_birth date,
email varchar(20) unique,
phone_number varchar(10)
);
create table if not exists Teacher(
teacher_id int Primary Key auto_increment,
first_name varchar(20),
last_name varchar(20),
email varchar(20) unique
);
create table Courses(
course_id int Primary Key auto_increment,
course_name varchar(30),
credits int,
teacher_id int,
foreign key (teacher_id) references Teacher(teacher_id)
);
create table Enrollments(
enrollment_id int Primary Key auto_increment,
student_id int,
course_id int,
enrollment_date date,
foreign key (student_id) references Students (student_id),
foreign key (course_id) references Courses (course_id));
create table Payments(
payment_id int Primary Key auto_increment,
student_id int,
amount int,
payment_date date,
foreign key (student_id) references Students (student_id)
);
ALTER TABLE Students MODIFY phone_number VARCHAR(10);
ALTER TABLE Students MODIFY email VARCHAR(50);
insert into Students (first_name, last_name, date_of_birth, email, phone_number) values
('John', 'Doe', '2000-05-15', 'john.doe@example.com', 9876543210),
('Jane', 'Smith', '2001-07-22', 'jane.smith@example.com', 8765432109),
('Michael', 'Brown', '1999-12-03', 'michael.brown@example.com', 7654321098),
('Emily', 'Davis', '2000-01-14', 'emily.davis@example.com', 6543210987),
('Daniel', 'Garcia', '1998-11-29', 'daniel.garcia@example.com', 5432109876),
('Sophia', 'Martinez', '2002-03-25', 'sophia.martinez@example.com', 4321098765),
('Matthew', 'Wilson', '2000-08-10', 'matthew.wilson@example.com', 3210987654),
('Olivia', 'Anderson', '2001-02-17', 'olivia.anderson@example.com', 2109876543),
('James', 'Taylor', '1999-04-09', 'james.taylor@example.com', 1098765432),
('Ava', 'Thomas', '2002-06-18', 'ava.thomas@example.com', 9988776655);
ALTER TABLE Teacher MODIFY email VARCHAR(50);
insert into Teacher (first_name, last_name, email) values
('Alice', 'Johnson', 'alice.johnson@example.com'),
('Bob', 'Williams', 'bob.williams@example.com'),
('Catherine', 'Miller', 'catherine.miller@example.com'),
('David', 'Smith', 'david.smith@example.com'),
('Emma', 'Brown', 'emma.brown@example.com'),
('Frank', 'Davis', 'frank.davis@example.com'),
('Grace', 'Wilson', 'grace.wilson@example.com'),
('Henry', 'Garcia', 'henry.garcia@example.com'),
('Ivy', 'Martinez', 'ivy.martinez@example.com'),
('Jack', 'Anderson', 'jack.anderson@example.com');
insert into Courses (course_name, credits, teacher_id) values
('Mathematics', 3, 1),
('Physics', 4, 2),
('Chemistry', 3, 3),
('Biology', 3, 4),
('History', 2, 5),
('Computer Science', 4, 6),
('English', 3, 7),
('Economics', 3, 8),
('Psychology', 2, 9),
('Political Science', 3, 10);
Insert into Enrollments (student_id, course_id, enrollment_date) VALUES
(11, 1, '2024-01-15'),
(12, 2, '2024-01-16'),
(13, 3, '2024-01-17'),
(14, 4, '2024-01-18'),
(15, 5, '2024-01-19'),
(16, 6, '2024-01-20'),
(17, 7, '2024-01-21'),
(18, 8, '2024-01-22'),
(19, 9, '2024-01-23'),
(20, 10, '2024-01-24');
Insert into Payments (student_id, amount, payment_date) VALUES
(11, 1000, '2024-01-01'),
(12, 1500, '2024-01-02'),
(13, 2000, '2024-01-03'),
(14, 2500, '2024-01-04'),
(15, 3000, '2024-01-05'),
(16, 3500, '2024-01-06'),
(17, 4000, '2024-01-07'),
(18, 4500, '2024-01-08'),
(19, 5000, '2024-01-09'),
(20, 5500, '2024-01-10');
-- 1. Write an SQL query to insert a new student into the "Students" table with the following details:
Insert into Students (first_name, last_name, date_of_birth, email, phone_number) VALUES
('Jona', 'Doe', '2000-05-15', 'jona.doe@example.com', '9876543210'),
('sam', 'Smith', '2001-07-22', 'sam.smith@example.com', '8765432109');
Select * From Students;
Insert into Courses (course_name, credits, teacher_id) VALUES
('dbms', 4, 11),
('cn', 3, 12),
('pe', 3, 13),
('cs', 4, 14);
Select * From Courses;
insert into Teacher (first_name, last_name, email) values
('Alra', 'Johnson', 'alra.johnson@example.com'),
('Bary', 'Williams', 'bary.williams@example.com'),
('Cary', 'Miller', 'cary.miller@example.com'),
('Dav', 'Smith', 'dav.smith@example.com');

-- 2. Write an SQL query to enroll a student in a course. Choose an existing student and course and
-- insert a record into the "Enrollments" table with the enrollment date.

insert into Enrollments (student_id, course_id, enrollment_date) VALUES
(23, 17, '2024-01-23'),
(24, 18, '2024-01-23');

-- 3. Update the email address of a specific teacher in the "Teacher" table. Choose any teacher and
-- modify their email address
Select * From Teacher;
update Teacher
set email="bobi.williams@example.com"
where teacher_id=2;
Update Teacher
Set email = 'alicee.johnson@example.com'
Where teacher_id = 1;
-- 4.Write an SQL query to delete a specific enrollment record from the "Enrollments" table. Select
-- an enrollment record based on the student and course.
delete from Enrollments
Where student_id = 1 and course_id = 1;
-- 5.Update the "Courses" table to assign a specific teacher to a course. Choose any course and
-- teacher from the respective tables
Update Courses
set teacher_id = 2
where course_id = 1;
-- 6.Delete a specific student from the "Students" table and remove all their enrollment records
-- from the "Enrollments" table. Be sure to maintain referential integrity.
delete from Enrollments
Where student_id = 1; 
delete from Students
Where student_id = 1; 
-- 7.Update the payment amount for a specific payment record in the "Payments" table. Choose any
-- payment record and modify the payment amount.
UPDATE Payments
SET amount = 1200
Where payment_id = 1;

-- 1.Write an SQL query to calculate the total payments made by a specific student. You will need to
-- join the "Payments" table with the "Students" table based on the student's ID.
Select * From Students;
Select * From Payments;
select s.student_id,s.first_name, sum(P.amount) as total_payments
from Students s 
join Payments p
on s.student_id=p.student_id 
where s.student_id = p.student_id 
group by  s.student_id,s.first_name ;

-- 2. Write an SQL query to retrieve a list of courses along with the count of students enrolled in each
-- course. Use a JOIN operation between the "Courses" table and the "Enrollments" table.
Select * From Courses;
Select * From Enrollments;
select c.course_id,c.course_name,count(e.enrollment_id)as students_enrolled
from Courses c
join Enrollments e
on  c.course_id= e.course_id
group by c.course_id,c.course_name;

/* 3.Write an SQL query to find the names of students who have not enrolled in any course. Use a
LEFT JOIN between the "Students" table and the "Enrollments" table to identify students
without enrollments. */ Select * From Students;
select s.first_name,s.student_id, count(e.enrollment_id) 
from Students s 
left join Enrollments e
on s.student_id=e.student_id
group by s.first_name,s.student_id
having count(e.enrollment_id)=0;

/*4. Write an SQL query to retrieve the first name, last name of students, and the names of the
courses they are enrolled in. Use JOIN operations between the "Students" table and the
"Enrollments" and "Courses" tables.*/
select s.first_name,s.last_name,c.course_name
from Students s 
join Enrollments e
on s.student_id=e.student_id
join Courses c 
on e.course_id=c.course_id;

/* 5. Create a query to list the names of teachers and the courses they are assigned to. Join the
"Teacher" table with the "Courses" table.*/select * from Teacher;
select t.first_name, t.last_name,c.course_id from Teacher t
join Courses c 
on t.teacher_id=c.teacher_id;

/*6. Retrieve a list of students and their enrollment dates for a specific course. You'll need to join the
"Students" table with the "Enrollments" and "Courses" tables.*/select * from Enrollments;
select s.student_id,s.first_name,s.last_name,e.enrollment_date,c.course_name from Students s 
join Enrollments e 
on s.student_id=e.student_id
join Courses c 
on e.course_id=c.course_id
WHERE c.course_name = 'Mathematics';

/*7. Find the names of students who have not made any payments. Use a LEFT JOIN between the
"Students" table and the "Payments" table and filter for students with NULL payment records.*/
select s.first_name,s.last_name,p.payment_id from Students s 
left join Payments p 
on s.student_id=p.student_id
where p.payment_id is NULL;

/*8. Write a query to identify courses that have no enrollments. You'll need to use a LEFT JOIN
between the "Courses" table and the "Enrollments" table and filter for courses with NULL enrollment records*/
select c.course_name from Courses c 
left join Enrollments e 
on c.course_id=e.course_id
where enrollment_id is null;

/*9. Identify students who are enrolled in more than one course. Use a self-join on the "Enrollments"
table to find students with multiple enrollment records.*/
select s.first_name,s.last_name from Enrollments e1 
join Enrollments e2
on e1.enrollment_id=e2.enrollment_id
and e1.enrollment_id != e2.enrollment_id
join Students s 
on e1.student_id = s.student_id
group by e1.student_id, s.first_name, s.last_name;

/*10. Find teachers who are not assigned to any courses. Use a LEFT JOIN between the "Teacher"
table and the "Courses" table and filter for teachers with NULL course assignments*/select * from Teacher;
select t.first_name,t.last_name from Teacher t
left join Courses c 
on t.teacher_id=c.teacher_id
where c.course_id is null;
/*1. Write an SQL query to calculate the average number of students enrolled in each course. Use
aggregate functions and subqueries to achieve this.*/select * from Enrollments;
select avg(stu_count) as avg_stu
from(select e.course_id,count(e.student_id) as stu_count from Enrollments e
group by e.course_id)as course_enrollments;

/*2. Identify the student(s) who made the highest payment. Use a subquery to find the maximum
payment amount and then retrieve the student(s) associated with that amount.*/
select s.first_name,s.last_name from Students s
join Payments p on s.student_id=p.student_id
where p.amount =(select max(amount) from Payments );

/*3. Retrieve a list of courses with the highest number of enrollments. Use subqueries to find the
course(s) with the maximum enrollment count.*/
select c.course_name,count(e.student_id) as enrollment_count from Courses c 
join Enrollments e on c.course_id=e.course_id
group by c.course_id, c.course_name
having count(e.student_id) = (select max(enrollment_count)
from(select count(e.student_id) as enrollment_count from Enrollments e group by e.course_id)as course_enroll);

/*4. Calculate the total payments made to courses taught by each teacher. Use subqueries to sum
payments for each teacher's courses.*/ select * from Payments;
select t.teacher_id, t.first_name, t.last_name, (select sum(p.amount) from Payments p
join Enrollments e on p.student_id=e.student_id
join Courses c on e.course_id=c.course_id
where c.teacher_id = t.teacher_id )as tot_pay
from teacher t;

/*5. Identify students who are enrolled in all available courses. Use subqueries to compare a
student's enrollments with the total number of courses.*/
select s.student_id, s.first_name, s.last_name from Students s
where not exists (select c.course_id,e.course_id from Courses c  
join  Enrollments e on e.course_id = c.course_id
and e.student_id = s.student_id);

/*6. Retrieve the names of teachers who have not been assigned to any courses. Use subqueries to
find teachers with no course assignments.*/
select t.teacher_id, t.first_name, t.last_name from teacher t
where not exists (select 1 from Courses c where c.teacher_id = t.teacher_id);
-- 7
select avg(age) as average_age from (select timestampdiff(YEAR, date_of_birth, CURDATE()) as age from Students) as student_ages;
-- 8
select c.course_id, c.course_name from Courses c WHERE NOT EXISTS (
select 1 from Enrollments e WHERE e.course_id = c.course_id
);
-- 9
select s.student_id, s.first_name, s.last_name, c.course_id, c.course_name,
(select SUM(p.amount)from Payments p
JOIN Enrollments e ON p.student_id = e.student_id
WHERE e.course_id = c.course_id AND e.student_id = s.student_id) AS total_payments from Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.student_id, s.first_name, s.last_name, c.course_id, c.course_name;
-- 10
select s.student_id, s.first_name, s.last_name from Students s
WHERE ( select COUNT(*) FROM Payments p WHERE p.student_id = s.student_id) > 1;
-- 11
select s.student_id, s.first_name, s.last_name, SUM(p.amount) AS total_payments from Students s
JOIN Payments p ON s.student_id = p.student_id
GROUP BY s.student_id, s.first_name, s.last_name;
-- 12
select c.course_name, COUNT(e.student_id) AS student_count from Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;
-- 13
select AVG(p.amount) AS average_payment from Students s
JOIN Payments p ON s.student_id = p.student_id;




