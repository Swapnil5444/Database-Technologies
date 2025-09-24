create database Educationdb;
use educationdb;

CREATE TABLE student (
    s_id INT PRIMARY KEY,
    s_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    age INT , 
    marks DECIMAL(5,2) 
);
INSERT INTO student (s_id, s_name, department, gender, age, marks) VALUES
(1, 'Aman Verma', 'CSE', 'Male', 20, 88.50),
(2, 'Priya Sharma', 'CSE', 'Female', 21, 92.00),
(3, 'Ravi Kumar', 'CSE', 'Male', 22, 76.25),   
(4, 'Neha Gupta', 'ECE', 'Female', 20, 85.75),
(5, 'Rohit Singh', 'ME', 'Male', 23, 67.00),
(6, 'Kavya Iyer', 'ECE', 'Female', 19, 91.20),
(7, 'Sahil Mehta', 'ME', 'Male', 22, 78.40),
(8, 'Anjali Rao', 'EEE', 'Female', 20, 82.50),
(9, 'Deepak Jain', 'CIVIL', 'Male', 21, 74.10),
(10, 'Sneha Reddy', 'EEE', 'Female', 20, 89.35);

select * from student;

select department, count(*) as student_count from student group by department;
select department, avg(marks) as student_marks from student group by department;
select gender, count(s_name) as gender_count from student group by gender;
select department,max(marks) as student_marks from student group by department;
select department,gender, avg(age) as student_age from student group by department,gender;
select department,sum(marks) as student_marks from student group by department;
select gender,min(marks) as student_gender from student group by gender;
select age,count(*) as student_age from student group by age;
select department,count(*) as student_count,avg(marks) as student_marks from student group by department;
select department,age,count(*) as student_count from  student group by department,age;

