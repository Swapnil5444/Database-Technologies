create database TaskNO3;
use TaskNO3;

create table employee(emp_id int primary key, emp_name varchar(200), department varchar(30),salary int, age int, gender varchar(20),city varchar(30));
INSERT INTO employee (emp_id, emp_name, department, salary, age, gender, city) VALUES
(1, 'Rajesh Kumar', 'IT', 75000, 28, 'Male', 'Mumbai'),
(2, 'Sneha Patel', 'HR', 65000, 32, 'Female', 'Delhi'),
(3, 'Amit Singh', 'Finance', 82000, 35, 'Male', 'Pune'), 
(4, 'Priya Sharma', 'IT', 78000, 26, 'Female', 'Mumbai'),
(5, 'Suresh Reddy', 'Marketing', 70000, 30, 'Male', 'Hyderabad'),
(6, 'Anjali Gupta', 'Finance', 85000, 29, 'Female', 'Delhi'),
(7, 'Vikram Joshi', 'HR', 67000, 33, 'Male', 'Pune'), 
(8, 'Meera Nair', 'sale', 72000, 27, 'Female', 'Mumbai'), 
(9, 'Karan Malhotra', 'IT', 76000, 31, 'Male', 'Delhi'),
(10, 'Nisha Verma', 'Finance', 83000, 34, 'Female', 'Hyderabad');

select * from employee;
select * from employee where department ='IT' AND salary > 50000;
SELECT * FROM employee WHERE city = 'Mumbai' OR city = 'Delhi';
SELECT * FROM employee WHERE not department='HR';
SELECT * FROM employee WHERE department = 'Finance' XOR salary > 40000;
SELECT * FROM employee WHERE (department = 'Finance' AND (salary>30000 OR age<25));
SELECT * FROM employee WHERE not city ='Pune'AND salary > 35000;
SELECT * FROM employee WHERE department='IT' OR not department='Finance';
SELECT * FROM employee WHERE (gender = 'male' XOR (salary > 60000 AND department='HR'));
SELECT * FROM employee WHERE (age>30 AND (department='IT' OR department='Finance'));
SELECT * FROM employee WHERE NOT city = 'delhi' XOR salary < 25000;



