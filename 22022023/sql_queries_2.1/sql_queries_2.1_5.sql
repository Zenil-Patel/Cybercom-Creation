# 5. Write an SQL query to report all customers who never order anything. Return the result table in any order.

create database Orders;


create table Customers
(
	id int auto_increment,
    customer_name varchar(40),
    primary key (id)
);

create table Orders
(
	id int auto_increment,
    customer_id int,
    primary key (id),
    foreign key (customer_id) references Customers(id)
);

# Inserting data into Customers table
insert into Customers (customer_name) values ('Joe');
insert into Customers (customer_name) values ('Henry');
insert into Customers (customer_name) values ('Sam');
insert into Customers (customer_name) values ('Max');

# Inserting values in Orders table
insert into Orders (customer_id) values (3);
insert into Orders (customer_id) values (1);

select customer_id from orders;

# Below query is the solution
select customer_name from Customers 
where id not in (select customer_id from orders);
