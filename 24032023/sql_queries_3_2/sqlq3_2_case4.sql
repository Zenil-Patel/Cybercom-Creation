# SQL Queries 3.2 Case 4
# Consider a table called "employees" with the following columns: "id", "name", "department", "salary". Write a SQL query to retrieve the names and salaries of all employees in the "sales" department who earn more than $50,000 per year.

create database sql_3_2_case4;

create table Orders
(
	id int,
    customer_id int,
    order_date date,
    total_amount int,
    primary key (id)
);

INSERT INTO Orders (id, customer_id, order_date, total_amount)
VALUES
(1, 101, '2022-02-22', 500),
(2, 102, '2022-02-23', 1000),
(3, 103, '2022-02-24', 750),
(4, 101, '2022-02-25', 200),
(5, 104, '2022-02-26', 1500),
(6, 102, '2022-02-27', 800),
(7, 105, '2022-02-28', 900),
(8, 103, '2022-03-01', 1200),
(9, 101, '2022-03-02', 250),
(10, 104, '2022-03-03', 600);


select customer_id, count(customer_id) as orders, total_amount
from Orders
group by customer_id
order by total_amount desc;
