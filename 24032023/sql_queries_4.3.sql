# SQL Queries 4.3
#case 1	

create database sqlq_4_3;

create table Users
(
	id int,
    name text,
    email text,
    password text,
    created_at timestamp,
    updated_at timestamp,
    primary key (id)
);

create table Orders
(
	id int,
    user_id int,
    amount float,
    created_at timestamp,
    updated_at timestamp,
    primary key (id),
    foreign key (user_id) references users(id)
);

-- Insert values into Users table
INSERT INTO Users (id, name, email, password, created_at, updated_at)
VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '2023-02-25 10:00:00', '2023-02-25 10:00:00'),
(2, 'Jane Smith', 'jane.smith@example.com', 'password456', '2023-02-25 11:00:00', '2023-02-25 11:00:00'),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'password789', '2023-02-25 12:00:00', '2023-02-25 12:00:00');

-- Insert values into Orders table
INSERT INTO Orders (id, user_id, amount, created_at, updated_at)
VALUES
(1, 1, 50.0, '2023-02-25 10:30:00', '2023-02-25 10:30:00'),
(2, 2, 100.0, '2023-02-25 11:30:00', '2023-02-25 11:30:00'),
(3, 1, 75.0, '2023-02-25 12:30:00', '2023-02-25 12:30:00'),
(4, 3, 25.0, '2023-02-25 13:30:00', '2023-02-25 13:30:00');
-- Insert more values into Orders table
INSERT INTO Orders (id, user_id, amount, created_at, updated_at)
VALUES
(5, 2, 50.0, '2023-02-26 10:30:00', '2023-02-26 10:30:00'),
(6, 3, 75.0, '2023-02-26 11:30:00', '2023-02-26 11:30:00'),
(7, 1, 25.0, '2023-02-26 12:30:00', '2023-02-26 12:30:00'),
(8, 2, 125.0, '2023-02-26 13:30:00', '2023-02-26 13:30:00');






# 1. Create a new user with the following information:name: John Doeemail: john.doe@example.compassword: 123456created_at: current timestamp updated_at: current timestamp

insert into users values (4, 'John Doe', 'john.doe@example.com', '123456', current_timestamp(), current_timestamp());

select * from users;

# 2. Retrieve the names and email addresses of all users who have placed at least one order.

select u.email, u.name from 
users u join orders o
on u.id = o.user_id
group by o.user_id;

# 3. Retrieve the total amount of orders placed by each user, sorted in descending order of total amount.

select user_id, count(user_id), sum(amount) 
from orders  
group by user_id
order by amount desc;

# 4. Retrieve the email address of the user who has placed the most orders.

select u.email
from users u join orders o
on u.id = o.user_id
group by o.user_id
order by o.user_id
limit 1;

# 5. Retrieve the user IDs and the total amount of orders placed by users who have placed at least one order and whose total amount of orders exceeds $100.

select user_id, sum(amount) total_amount
from orders
group by user_id
having count(user_id)>1 and sum(amount) > 100;

# 6. Retrieve the number of users who have not placed any orders.

select * , count(*) from users
where id not in 
(select distinct user_id from orders);

# 7. Update the user with ID 1 to change their email address to "jane.doe@example.com".

update users
set email =  "jane.doe@example.com"
where id = 1;

select * from users;

# 8. Delete all orders placed by users whose email address contains the string "test".

delete from orders
where user_id = (select id from users a
where email like '%test');

# 9. Retrieve the total amount of orders placed on each day of the current week, grouped by day.

select count(user_id), date(created_at) from orders
group by date(created_at);

# 10. Retrieve the IDs and email addresses of users who have placed an order in the current year and whose email address is in the format "example.com".

select o.user_id, u.email from
users u join orders o
on u.id = o.user_id
where year(o.created_at) = year(current_date()) and
email like '%example.com'
group by o.user_id;