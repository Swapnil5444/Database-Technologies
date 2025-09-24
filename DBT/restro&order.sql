create database restrodb;
use restrodb;
create table restrorent (restro_id int primary key, restro_name varchar(200),restro_location varchar(200));
desc restrorent;
INSERT INTO restrorent (restro_id, restro_name, restro_location) VALUES
(1, 'Biryani Blues', 'Hyderabad'),
(2, 'Sagar Ratna', 'Delhi'),
(3, 'Saravana Bhavan', 'Chennai'),
(4, 'Barbeque Nation', 'Mumbai'),
(5, 'Indian Accent', 'Delhi'),
(6, 'Peshawri', 'Kolkata'),
(7, 'Kesar Da Dhaba', 'Amritsar'),
(8, 'Karavalli', 'Bangalore'),
(9, 'Oh! Calcutta', 'Kolkata'),
(10, 'Trishna', 'Mumbai');
select * from restrorent;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    restro_id INT,
    customer_name VARCHAR(100),
    amount DECIMAL(8,2),
    order_date DATE,
    FOREIGN KEY (restro_id) REFERENCES restrorent(restro_id)
);
INSERT INTO orders (order_id, restro_id, customer_name, amount, order_date) VALUES
(1, 1, 'Amit Sharma', 450.00, '2025-08-01'),
(2, 2, 'Neha Singh', 1200.50, '2025-08-02'),
(3, 3, 'Ravi Kumar', 750.25, '2025-08-02'),
(4, 4, 'Priya Verma', 1800.00, '2025-08-03'),
(5, 5, 'Ankit Yadav', 2100.75, '2025-08-03'),
(6, 6, 'Deepa Nair', 980.00, '2025-08-04'),
(7, 7, 'Raj Malhotra', 600.00, '2025-08-04'),
(8, 8, 'Sneha Patil', 1340.40, '2025-08-05'),
(9, 9, 'Manoj Tiwari', 1600.10, '2025-08-06'),
(10, 10, 'Divya Mehta', 2000.00, '2025-08-07');
select * from orders;

select o.order_id,r.restro_id,r.restro_name from orders o join restrorent r on o.restro_id= r.restro_id;
select r.restro_id,r.restro_name,o.amount from orders o join restrorent r on o.restro_id= r.restro_id;
select o.order_id,r.restro_location from orders o join restrorent r on o.restro_id= r.restro_id where restro_location='mumbai';
select r.restro_id,r.restro_name,sum(o.amount) as total_sales from orders o join restrorent r on o.restro_id= r.restro_id group by r.restro_id, r.restro_name;
select o.order_id,r.restro_name from orders o left join restrorent r on o.restro_id= r.restro_id where r.restro_id is null;
select o.customer_name,r.restro_name from orders o join restrorent r on o.restro_id= r.restro_id;
select r.restro_name,order_id, o.restro_id, o.customer_name, o.amount, o.order_date from orders o right join restrorent r on o.restro_id= r.restro_id;


