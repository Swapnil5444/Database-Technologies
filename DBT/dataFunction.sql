use mycompanydb;

select * from employee;


SELECT CURDATE() AS currentdate;


SELECT NOW() AS current_date_time;


SELECT emp_id, emp_name, YEAR(emp_DOJ) AS year_of_joining
FROM employee;

SELECT emp_id, emp_name,
       MONTH(emp_DOJ) AS month_number,
       MONTHNAME(emp_DOJ) AS month_name
FROM employee;


SELECT emp_id, emp_name,
       DAY(emp_DOJ) AS day_number,
       DAYNAME(emp_DOJ) AS day_name
FROM employee;



SELECT emp_id, emp_name,
       DATEDIFF(CURDATE(), emp_DOJ) AS days_worked
FROM employee;



SELECT emp_id, emp_name,
       TIMESTAMPDIFF(YEAR, emp_DOJ, CURDATE()) AS years_worked
FROM employee;

SELECT emp_id, emp_name,
       LAST_DAY(emp_DOJ) AS last_day_of_month
FROM employee;