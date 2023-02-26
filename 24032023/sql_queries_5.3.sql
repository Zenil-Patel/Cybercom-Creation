# SQL Quereies 5.3

# 1. Write a SQL query to retrieve the names and salaries of all employees who have a salary greater than the average salary of all employees.

select names from employees 
having salary > avg(salary);

# 2. Write a SQL query to retrieve the names and total revenue generated by all customers in the "orders" table, sorted by revenue in descending order.

select c.names, sum(o.amount) total_revenue from
customers c join orders o 
on c.id = o.customer_id
order by total_revenue;

# 3. Write a SQL query to retrieve the names and total revenue generated by all customers in the "orders" table, sorted by revenue in descending order, where the total revenue is greater than $10,000.

select c.names, sum(o.amount) total_revenue from
customers c join orders o 
on c.id = o.customer_id
where total_revenue > 10000
order by total_revenue;

# 4. Write a SQL query to retrieve the names and total revenue generated by all customers in the "orders" table, sorted by revenue in descending order, where the total revenue is greater than the average revenue generated by all customers.

select c.names, sum(o.amount) total_revenue from
customers c join orders o 
on c.id = o.customer_id
having total_revenue > avg(o.amount)
order by total_revenue;

#5. Write a SQL query to retrieve the names and total revenue generated by all customers in the "orders" table, sorted by revenue in descending order, where the total revenue is greater than the average revenue generated by all customers, and the customer is from the "USA" or "Canada".

select c.names, sum(o.amount) total_revenue from
customers c join orders o 
on c.id = o.customer_id
having total_revenue > avg(o.amount) and (c.country = 'USA' or c.country = 'Canada')
order by total_revenue;

# 6. Write a SQL query to retrieve the names of all employees who have made sales greater than $50,000 in the "orders" table.

select e.name from employees e join orders o
on e.id = o.empId
where o.sales > 50000;

# 7. Write a SQL query to retrieve the names of all employees who have made sales greater than the average sales of all employees in the "orders" table, sorted by sales in descending order.

select e.name from
employees e join orders o
on e.id = o.empId
group by o.empId
having o.sales > avg(o.sales)
order by o.sales;

# 8. Write a SQL query to retrieve the names and total revenue generated by all customers in the "orders" table, sorted by revenue in descending order, where the customer is from the "USA" and the revenue is greater than $5,000.

select e.name from
employees e join orders o
on e.id = o.empId
having c.country = 'USA' and sum(o.sales) > 5000
order by o.sales;

# 9. Write a SQL query to retrieve the names and total revenue generated by all customers in the "orders" table, sorted by revenue in descending order, where the customer is from the "USA" and the revenue is greater than the average revenue generated by all customers from the "USA".

select c.name, sum(o.sales) revenue from
customers c join orders o 
on c.id = o.customer_id
group by c.city = 'USA'
having c.city = 'USA' and o.sales > avg(o.sales)
order by revenue;

# 10. Write a SQL query to retrieve the names and total revenue generated by all customers in the "orders" table, sorted by revenue in descending order, where the customer is from the "USA" and the revenue is greater than the average revenue generated by all customers, and the customer has made at least 2 orders.

select c.name, SUM(o.price) revenue
from customers c
join orders o on c.id = o.customer_id
where c.country = 'USA'
and c.id in (
  select customer_id
  from orders
  group by customer_id
  having COUNT(*) >= 2
)
 group by c.id
 order by revenue desc;


