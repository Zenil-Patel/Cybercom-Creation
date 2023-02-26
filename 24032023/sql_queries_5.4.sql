# 1. Write a SQL query to retrieve the names of all customers who have made at least one order in the "orders" table and have not made any orders in the "returns" table.

select c.id from customer c
join orders o on c.id = o.customer_id
where c.id not in
(select customer_id from returns);

# 2. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have returned at least one item in the "returns" table.

select c.id from customer c
join orders o on c.id = o.customer_id
where c.id in
(select customer_id from returns);

# 3. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have not returned any items in the "returns" table.

select c.id from customer c
join orders o on c.id = o.customer_id
where c.id not in
(select customer_id from returns);

# 4. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have returned more items than they have ordered.

select c.name from 
customer c join orders o on c.id = o.customer_id
join returns r on o.id = r.order_id
having count(distinct r.order_id) > 1;

# 5. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have not returned more items than they have ordered.

select c.name from
customers c join orders o on c.id = o.order_id
join returns r on o.id = r.order_id
where r.order_id > r.id;

# 6. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have spent more than $100 in total on all orders.

select c.name, sum(o.amount) amount from 
customers c join orders o 
on c.id = o.customer_id
group by o.customer_id
having sum(distinct amount) > 100;

#7. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have spent more than $100 in total on all orders, sorted by the total amount spent in descending order.

select c.name, sum(o.amount) amount from
customers c join orders o
on c.id = o.customer_id
group by o.customer_id
having sum(distinct amount) > 100
order by amount;

# 8. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have ordered products in all categories.

select c.name from
customers c join orders o 
on c.id = o.order_id
join products p 
on p.id = o.product_id
group by p.category
having count(distinct p.category) > 1;

select c.name from 
customers c join orders o 
on c.id = o.customer_id
where o.product_id in
(select id from product);

# 9. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have not ordered products in all categories.

select c.name from 
customers c join orders o 
on c.id = o.customer_id
where o.product_id not in
(select id from product);

# 10. Write a SQL query to retrieve the names of all customers who have made orders in the "orders" table and have ordered products in at least two different categories.

select c.name 
from customers c
 join orders o on c.id = o.customer_id
 join order_items oi on o.id = oi.order_id
join products p on oi.product_id = p.id
group by c.id
having count(distict p.category_id) >= 2;
