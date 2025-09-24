create database employeeDB;

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);
INSERT INTO employee (id, name, salary) VALUES
(1, 'Alice', 50000.00),
(2, 'Bob', 55000.00),
(3, 'Charlie', 60000.00),
(4, 'David', 52000.00),
(5, 'Eva', 58000.00),
(6, 'Frank', 61000.00),
(7, 'Grace', 49000.00),
(8, 'Helen', 53000.00),
(9, 'Ian', 62000.00),
(10, 'Julia', 57000.00);

    select * ,
    case
    when salary > 50000 then 
		salary*0.2
	when salary > 30000 and salary < 50000 then 
		salary*0.1
	else
		salary* 0.05
	end as Bonus
from employee;








