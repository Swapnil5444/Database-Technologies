create database LIkeDB;
use Likedb;



CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(30),
    phone VARCHAR(15)
);
INSERT INTO customer (customer_id, name, email, city, phone) VALUES
(1, 'Ankit', 'ankit@gmail.com', 'Nagpur', '9876543210'),
(2, 'Rohan', 'rohan@yahoo.com', 'Kanpur', '9812345678'),
(3, 'Manish', 'manish@gmail.com', 'Bangalore', '9123456789'),
(4, 'Alok', 'alok@hotmail.com', 'Jaipur', '9898989898'),
(5, 'Sara', 'sara@gmail.com', 'Delhi', '9765432109'),
(6, 'Neha', 'neha@rediffmail.com', 'Pune', '9823456789'),
(7, 'Amit', 'amit@gmail.com', 'Surat', '9988776655'),
(8, 'Naman', 'naman@gmail.com', 'Agra', '9811198111'),
(9, 'Vikas', 'vikas@yahoo.com', 'Nagpur', '9712345678'),
(10, 'Aryan', 'aryan@gmail.com', 'Bhopal', '9834567890');
select * from customer;
SELECT * FROM customer WHERE name LIKE 'A%';
SELECT * FROM customer WHERE city LIKE '%pur';
SELECT * FROM customer WHERE email LIKE '%gmail%';
SELECT * FROM customer WHERE name LIKE '%an%';
SELECT * FROM customer WHERE phone LIKE '98%';
SELECT * FROM customer WHERE name LIKE '_____';
SELECT * FROM customer WHERE city LIKE '_a%';

