#sql_queries_5.2

# 1. Write a SQL query to retrieve the names of all customers who have placed orders for products in the "Electronics" category, along with the total amount they have spent on all orders. The output should be sorted by the total amount spent in descending order.

select c.name, sum(amount) total_amount
from customers c join products p
on c.product_id = p.id
where p.name = 'Electronics'
group by c.product_id
order by total_amount desc;

# 2. Write a SQL query to retrieve the names of all employees who have sold at least one product in the "Clothing" category, along with the total revenue they have generated from those sales. The output should be sorted by total revenue generated in descending order.

select e.names, sum(p.sales) total_revenue from 
employees e join product p
on e.id = p.empId
group by p.empId
having count(p.product = 'clothing') > 1
order by total_revenue;

# 3. Write a SQL query to retrieve the names of all customers who have placed orders for products in both the "Electronics" and "Clothing" categories. The output should only include customers who have ordered products in both categories.

select c.name from 
customers c join categories cat
on c.category_id = cat.id
where cat.name = 'Electronis' and cat.name = 'Clothing';

# 4. Write a SQL query to retrieve the names of all employees who have sold at least one product to a customer who has a shipping address in the same city as the employee. The output should only include employees who have made at least one such sale.

select e.name
from employees e join orderes o
on e.id = o.empId
where e.city = o.shipped_at
having count(o.empId) > 1;

# 5. Write a SQL query to retrieve the names of all customers who have placed orders for products in the "Electronics" category, but have never placed an order for products in the "Clothing" category.

select c.name from 
customers c join products p
on c.product_id = p.id
where p.id not in
(select id from products
where product_name = 'Clothing');

# 6. Write a SQL query to retrieve the names of all employees who have sold at least one product to customers who have placed orders for products in the "Electronics" category, but have never placed an order for products in the "Clothing" category. The output should only include employees who have made at least one such sale.

select e.name from 
employees e join products p
on e.product_id = p.id
where p.id not in
(select id from products
where product_name = 'Clothing')
group by p.name;

# 7. Write a SQL query to retrieve the names of all customers who have placed orders for more than five different products in the "Electronics" category.

select c.name from 
customers c join orders o
on c.order_id = o.id
having count(c.order_id) > 5 and product_name = 'Electronics';

# 8. Write a SQL query to retrieve the names of all employees who have sold products to customers who have placed orders for more than five different products in the "Electronics" category. The output should only include employees who have made at least one such sale.

select e.name from employees join orders o on  e.id = o.empId
where o.customerId in (select id from products 
where customer_id =
(select c.id from 
customers c join orders o 
on c.id = o.customer_id
where o.category = 'Electronics')) = 5;






