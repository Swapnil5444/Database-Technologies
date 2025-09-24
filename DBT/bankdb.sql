create database BANKdb;
use bankdb;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Amit Sharma', 'Delhi'),
(2, 'Priya Singh', 'Mumbai'),
(3, 'Rahul Verma', 'Bangalore'),
(4, 'Sneha Mehta', 'Delhi'),
(5, 'Rohan Kapoor', 'Mumbai'),
(6, 'Anjali Nair', 'Bangalore'),
(7, 'Vikram Joshi', 'Delhi'),
(8, 'Kavita Iyer', 'Mumbai'),
(9, 'Manish Rao', 'Bangalore'),
(10, 'Neha Desai', 'Mumbai');

insert into customers values(12,'Niketan','dombivali');

select * from customers;
CREATE TABLE bank (
    acc_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    bank_name VARCHAR(100) NOT NULL,
    balance DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO bank (acc_id, customer_id, bank_name, balance) VALUES
(1001, 1, 'State Bank of India', 15000.50),
(1002, 2, 'HDFC Bank', 24500.75),
(1003, 3, 'ICICI Bank', 13200.00),
(1004, 4, 'Axis Bank', 9800.25),
(1005, 5, 'State Bank of India', 20000.00),
(1006, 6, 'HDFC Bank', 17250.50),
(1007, 7, 'ICICI Bank', 8800.00),
(1008, 8, 'Axis Bank', 30000.10),
(1009, 9, 'HDFC Bank', 11200.00),
(1010, 10, 'State Bank of India', 40000.00);
insert into bank values (1012,null,'Bank of maharastra', 100000);
select * from bank;
ALTER TABLE bank MODIFY customer_id INT;



select c.customer_name, b.bank_name from customers c left join bank b on c.customer_id = b.customer_id;
select c.customer_name, b.balance from customers c left join bank b on c.customer_id = b.customer_id;
select c.customer_name, b.acc_id, b.customer_id, b.bank_name, b.balance from customers c right join bank b on c.customer_id = b.customer_id where c.city='mumbai';
select c.customer_name, b.bank_name from customers c left join bank b on c.customer_id = b.customer_id where b.customer_id is null;
select b.bank_name,b.acc_id, c.customer_name from customers c left join bank b on c.customer_id = b.customer_id where b.customer_id is not null;
select c.customer_id, c.customer_name, c.city,b.balance from customers c left join bank b on c.customer_id = b.customer_id where b.balance>50000;