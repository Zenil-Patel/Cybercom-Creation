# SQL Queries 3.1
# Case 2

create database sql3_1_case2;

create table inventory 
(
	id int,
    name varchar(255),
    quantity int,
    price decimal(20,2),
    category varchar(50),
    primary key (id)
);

insert into inventory values (1, 'A', 2,10000,'Musical instrument');
insert into inventory values (2, 'B', 0 , 3910.43, 'electronics' );
insert into inventory values (3, 'C', 1, 25342.43, 'Electronics');
insert into inventory values (4, 'D', 2, 99999.99, 'electronics' );


select name, price from inventory
where quantity > 0 and category = 'electronics'
order by price desc;