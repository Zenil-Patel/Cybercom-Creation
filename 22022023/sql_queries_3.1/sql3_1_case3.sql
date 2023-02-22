# SQL Queries 3.1
# Case 3

create database sql3_1_case3;

create table sales
(
	id int,
    date date,
    customer_id int,
    product_id int, 
    quantity int,
    total_price decimal(10,2),
    primary key (id)
);

insert into sales values 
  (1, '2022-02-20', 1, 1, 2, 20.00),
  (2, '2022-02-21', 2, 2, 1, 10.00),
  (3, '2022-02-22', 1, 3, 3, 30.00),
  (4, '2022-02-22', 3, 1, 1, 10.00),
  (5, '2022-02-23', 2, 3, 2, 20.00),
  (6, '2022-02-23', 1, 2, 1, 10.00),
  (7, '2022-02-24', 2, 1, 2, 20.00),
  (8, '2022-02-25', 3, 2, 1, 10.00),
  (9, '2022-02-26', 1, 3, 3, 30.00),
  (10, '2022-02-27', 3, 3, 1, 10.00),
  (11, '2022-02-28', 2, 1, 2, 20.00),
  (12, '2022-03-01', 1, 2, 1, 10.00),
  (13, '2022-03-02', 2, 2, 1, 10.00),
  (14, '2022-03-03', 3, 3, 1, 10.00),
  (15, '2022-03-04', 1, 1, 2, 20.00),
  (16, '2021-04-10', 1, 3, 2, 20.00),
  (17, '2021-05-15', 2, 1, 1, 10.00),
  (18, '2021-06-20', 3, 2, 3, 30.00),
  (19, '2021-09-01', 1, 1, 1, 10.00),
  (20, '2021-12-31', 2, 3, 2, 20.00);


insert into sales values (21, '2021-12-31', 2, 3, 2, 1000.00);
select * from sales;

select year(date) from sales;


# Below query is the solution
select month(date) as months, sum(total_price) from sales
where year(date) = 2021
group by months
order by months; 