SQL Queries 5.1

# 1. Write a SQL query to retrieve the top 10 customers who have made the most orders in the "orders" table, along with the total number of orders they have made.

select c.name, count(o.user_id)
from customers c join orders o
on c.id = o.user_id
group by o.user_id
order by count(o.user_id)
limit 10;

# 2. Write a SQL query to retrieve the names of all employees who have sold more than $100,000 worth of products in the "order_details" table, sorted by the amount sold in descending order.

select e.names
from employees e join order_deatils d
where d.soldValue = 100000
order by sold_amount;

# 3. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table, along with the total amount they have spent on all orders and the total amount they have spent on orders made in the last 30 days.

select c.name, sum(o.amount) as total_amount from
customers c join orders o
on c.id = o.user_id
group by user_id;

# 4. Write a SQL query to retrieve the names and salaries of all employees who have a salary greater than the average salary of all employees in the "employees" table, sorted by salary in descending order.

select name, salary from employees
having salary > avg(salary)
order by salary desc;

#5. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table, but have not made any orders in the last 90 days.

select u.name 
from users u join orders o
on u.id = o.user_id
where o.order_date - current_date() > 90;

# 6. Write a SQL query to retrieve the names and salaries of all employees who have a salary greater than the minimum salary of their department in the "employees" table, sorted by department ID and then by salary in descending order.

select name, salary from employees
where salary not in (select  min(salary) from employees
group by department)
order by dept_id, salary;

#7. Write a SQL query to retrieve the names and salaries of the five highest paid employees in each department of the "employees" table, sorted by department ID and then by salary in descending order.

select e.name, e.salary
from employees e join department d
on e.dept_id = d.id
order by d.dept_id, e.salary;

#8. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table, but have not made any orders for products in the "products" table with a price greater than $100.

select c.name 
from customers c join orders o
on c.order_id = o.id 
join products p on c.product_id = p.id
where p.product_id not in
(select id from products
where price < 100
group by id);

# 9. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table, along with the total amount they have spent on all orders and the average amount they have spent per order.

select c.name, sum(o.amount) total_amount, avg(o.amount) avg_amount
from customer c join orders o
on c.order_id = o.id
group by o.customer_id;

# 10. Write a SQL query to retrieve the names of all products in the "products" table that have been ordered by customers in more than one country, along with the names of the countries where the products have been ordered.

select name, shipped_at from products
group by name
having count(shipped_at) > 1;