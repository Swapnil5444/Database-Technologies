use mycompanydb;

select * from employee;


select upper(emp_name) from employee;
select lower(job_title) desigination from employee;
select length(emp_name) from employee;
select concat(emp_name,' ', job_title) as name_job from employee;
select substring(emp_name,1,4) from employee;
select left(job_title,3) as _left,right(job_title,4) as _Right from employee;
select replace(job_title,'Software Engineer','Developer') as replace_ from employee;
select position('@' IN email_id) as position_ from employee;
select trim(emp_name) from employee;
select reverse(emp_name) from employee;






