# SQL Queries 3.1
# Case 1

create database sql3_1_case1;

create table Customers 
(
	id int,
    name varchar(40),
    email varchar(80),
    created_at timestamp,
    primary key (id)
);

#Inserting value in Customers table
insert into customers values (1, 'John Smith', 'johnsmith@gmail.com', '2022-01-01 10:00:00');
insert into customers values (2, 'Jane Doe', 'janedoe@yahoo.com', '2022-01-02 11:00:00');
insert into customers values (3, 'Bob Johnson', 'bobjohnson@hotmail.com','2022-01-03 12:00:00');
insert into customers values (4, 'Sarah Lee', 'sarahlee@gmail.com', '2022-01-04 13:00:00');
insert into customers values (5, 'David Kim', 'davidkim@yahoo.com', '2022-01-05 14:00:00');

# Q1:  Write a query that selects all customers whose email address ends with "@gmail.com".

select * from customers 
where email like '%@gmail.com';

# Q2: Write a query that selects the customer with the earliest created_at date.

select * from Customers
having min(created_at);

# Q3: Write a query that selects the name and email of customers who were created on or after January 3, 2022.

select name, email, created_at from Customers
where created_at >= '2022-01-03 00:00:00';

# Q4:  Write a query that updates the email address of the customer with id=5 to "davidkim@gmail.com".

update Customers
set email = 'davidkim@gmail.com'
where id=5;

select * from customers;

# Q5:  Write a query that deletes the customer with id=2.

delete from customers
where id = 2;

select * from customers;

# Q6: Write a query that calculates the total number of customers in the "customers" table.

select count(id) as number_of_customers 
from customers;
