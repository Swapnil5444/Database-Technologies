use mycompanydb;
select * from employee;

DELIMITER //
CREATE trigger new_salary
BEFORE INSERT ON employee
for each row
BEGIN
IF NEW.Emp_salary<0 then
set NEW.Emp_salary = 0 ;
END IF;


END //

DELIMITER ;
INSERT INTO employee (
    emp_id, emp_name, emp_code, gender, emp_DOB, emp_DOJ, Emp_salary,
    Work_time, emp_rating, is_active, Profile_Picture, D_id, email_id, job_title
) VALUES
(
    13, 'sumit D', 'EMP013', 'Male', '1990-08-15', '2022-011-10', -125000,
    '08:00:00', 5, 1, 'Sumit_D.jpg', 2, 'Sumit_D@example.com', 'Software Engineer'
);

DELIMITER //
CREATE trigger update_salary
BEFORE UPDATE ON employee
for each row
BEGIN
IF NEW.Emp_salary<0 then
set NEW.Emp_salary = 0 ;
END IF;
END //
DELIMITER ;

update employee set Emp_salary = -125000 where emp_id = 13;

DELIMITER //

CREATE TRIGGER prevent_delete_high_rating
BEFORE DELETE ON employee
FOR EACH ROW
BEGIN
    IF OLD.emp_salary >= 50000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete high-performing employee!';
    END IF;
END;
//

DELIMITER ;
DELETE FROM employee WHERE emp_id = 6;

DELIMITER //
CREATE trigger check_age
BEFORE INSERT ON employee
for each row
BEGIN
IF NEW.Emp_age<=25 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'ERROR : AGE must be at least 25 years';
END IF;
END //

DELIMITER ;
INSERT INTO employee (
    emp_id, emp_name, emp_code, gender, emp_DOB, emp_DOJ, Emp_salary,
    Work_time, emp_rating, is_active, Profile_Picture, D_id, email_id, job_title,Emp_age
) VALUES
(
    13, 'sumit D', 'EMP013', 'Male', '1990-08-15', '2022-011-10', -125000,
    '08:00:00', 5, 1, 'Sumit_D.jpg', 2, 'Sumit_D@example.com', 'Software Engineer',24
);
show triggers;


CREATE TABLE employ_bonus (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    bonus DECIMAL(10,2)
);
INSERT INTO employ_bonus (id, name, bonus) VALUES
(1, 'Alice Johnson', 1500.00),
(2, 'Bob Smith', 1200.50),
(3, 'Carol White', 1800.75),
(4, 'David Lee', 2000.00),
(5, 'Eva Green', 1750.25);
DELIMITER //

CREATE PROCEDURE calculate_bonuses()

BEGIN

DECLARE done INT DEFAULT 0;

DECLARE v_id INT;

DECLARE v_name VARCHAR(50);

DECLARE v_salary DECIMAL(102);

DECLARE cur CURSOR FOR

SELECT id, name, salary FROM employees;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

OPEN cur;
read_loop: LOOP

FETCH cur INTO v_id, v_name, v_salary;

IF done THEN

LEAVE read_loop

END IF;

calculate 10% bonus and insert into emp bonus

INSERT INTO emp bonus (emp id, emp name, bonus)

VALUES (v_id, v name, v salary 0.10);

END LOOP read_loop,

CLOSE cur,

END //

DELIMITER ;

CALL calculate_bonuses();

SELECT FROM emp bonus;



