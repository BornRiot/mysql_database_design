-- Simple group by
select customer, count(*) AS "Number of Orders" from orders where customer = 1
-- Use groupby to get all customers and their orders
select customer, count(*) AS "Number of Orders" from orders group by customer

-- Using more complex groupby statement
select
orders.customer AS "Customer ID",
customers.first_name AS "First Name",
customers.last_name AS "Last Name",
count(*) AS "Number of Orders"
from orders
inner join customers
on orders.customer = customers.id
group by orders.customer
order by customers.first_name

-- To follow correct format groupby criteria should also
-- match whats selected
select
orders.customer AS "Customer ID",
customers.first_name AS "First Name",
customers.last_name AS "Last Name",
count(*) AS "Number of Orders"
from orders
inner join customers
on orders.customer = customers.id
group by orders.customer, customers.first_name, customers.last_name
order by customers.first_name
