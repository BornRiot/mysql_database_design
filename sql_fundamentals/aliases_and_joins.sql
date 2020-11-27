-- Topic and lecture covered in this video is: aliases and joins

-- Select the first and last names of customers in the table using aliases:
Select first_name as "First Name", last_name as "Last Name" where id = 1
from customers;
-- Select data from multiple tables using aliases:
Select p.name , pc.name, p.price
from product_categories as pc, products as p
where p.category = pc.id
-- p.category = product category id foriegn key

-- Add aliases to column names:
Select p.name as Product , pc.name as Category, p.price as Price
from product_categories as pc, products as p
where p.category = pc.id
-- Oder info by product category:
Select p.name as Product , pc.name as Category, p.price as Price
from product_categories as pc, products as p
where p.category = pc.id
order by pc.name


-- Next topic: Joins
-- Website for more info and visualization of joins: https://bit.ly/2UH2Pc7

-- Join  customers and customer_addresses table to produce customers first name, last name and city:
Select customers.first_name as "First Name", customers.last_name as "Last Name", customer_addresses.city as "City"
from customers
inner JOIN customer_addresses
on customers.id = customer_addresses.customer

-- Use of an inner join:
Select *
from customers
inner join orders
on customers.id = orders.customer
-- Returns customers who have bought something

-- Use of a left join to return all customers whether they have bought something or not:
Select *
from customers
left join orders
on customers.id = orders.customer
-- Join three tables products, customers and orders:
Select c.first_name as "First Name", c.last_name as "Last Name", p.name as "Product"
from customers c
inner join orders o on c.id = o.customer
inner join products p on p.id = o.product
order by c.first_name
-- Using aliases for field names :
Select c.first_name as "First Name", c.last_name as "Last Name", p.name as "Product"
from customers c
inner join orders o on c.id = o.customer
inner join products p on p.id = o.product
order by c.first_name
