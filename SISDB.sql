CREATE DATABASE SISDB;
USE SISDB;
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(100) UNIQUE
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    credits INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    phone_number VARCHAR(15),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
INSERT INTO Students (first_name, last_name, date_of_birth, email)
VALUES
('John', 'Doe', '2000-05-15', 'john.doe@example.com'),
('Jane', 'Smith', '1999-03-20', 'jane.smith@example.com'),
('Mark', 'Johnson', '1998-11-02', 'mark.johnson@example.com'),
('Emily', 'Davis', '2001-07-12', 'emily.davis@example.com'),
('Paul', 'Williams', '2000-01-19', 'paul.williams@example.com'),
('Laura', 'Brown', '1997-09-27', 'laura.brown@example.com'),
('Jake', 'Garcia', '1999-04-10', 'jake.garcia@example.com'),
('Mia', 'Martinez', '2002-02-28', 'mia.martinez@example.com'),
('Lucas', 'Anderson', '2001-06-15', 'lucas.anderson@example.com'),
('Olivia', 'Taylor', '2000-08-05', 'olivia.taylor@example.com');
INSERT INTO Teachers (first_name, last_name, email)
VALUES
('Alice', 'White', 'alice.white@example.com'),
('Bob', 'Green', 'bob.green@example.com'),
('Charles', 'Black', 'charles.black@example.com'),
('Diana', 'Jones', 'diana.jones@example.com'),
('Edward', 'Moore', 'edward.moore@example.com'),
('Fiona', 'Clark', 'fiona.clark@example.com'),
('George', 'Lee', 'george.lee@example.com'),
('Hannah', 'Walker', 'hannah.walker@example.com'),
('Ian', 'King', 'ian.king@example.com'),
('Judy', 'Scott', 'judy.scott@example.com');
INSERT INTO Courses (course_name, credits, teacher_id)
VALUES
('Math 101', 3, 1),
('History 201', 4, 2),
('Computer Science 101', 3, 3),
('Physics 301', 4, 4),
('Chemistry 202', 3, 5),
('English Literature', 3, 6),
('Biology 101', 4, 7),
('Philosophy 101', 3, 8),
('Economics 101', 4, 9),
('Art History', 2, 10);
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2023-09-01'),
(2, 2, '2023-09-01'),
(3, 3, '2023-09-02'),
(4, 4, '2023-09-03'),
(5, 5, '2023-09-04'),
(6, 6, '2023-09-05'),
(7, 7, '2023-09-06'),
(8, 8, '2023-09-07'),
(9, 9, '2023-09-08'),
(10, 10, '2023-09-09');
INSERT INTO Payments (student_id, amount, payment_date, phone_number)
VALUES
(1, 500.00, '2023-08-10', '555-1234'),
(2, 700.00, '2023-08-12', '555-5678'),
(3, 600.00, '2023-08-14', '555-9101'),
(4, 550.00, '2023-08-16', '555-1213'),
(5, 650.00, '2023-08-18', '555-1415'),
(6, 750.00, '2023-08-20', '555-1617'),
(7, 800.00, '2023-08-22', '555-1819'),
(8, 900.00, '2023-08-24', '555-2021'),
(9, 1000.00, '2023-08-26', '555-2223'),
(10, 1100.00, '2023-08-28', '555-2425');
show tables;
select * from Payments;