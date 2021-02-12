-- Demonstration of Union:
 select city from customers
 Union
 select city from vendors
 order by city
 -- Union all can be used to show every instance of a city

-- Using union with where clause
select city, zipcode
from customers
where zipcode = "11111"
union all
select city, zipcode
from vendors
where zipcode = "11111"
order by city


-- Demonstrate the use of concat in SQL
select id, concat( first_name, ' -', email) as "Name and Email"
from customers

-- Another example
select id, concat( name, ' - $', price) as "Product & Price" from products

-- Demonstration of the count function
select count(*)
from products


-- Demonstration of the count function using where clause
select count(*)
from products
where category = 1


select count(*)
from products
where category = 1 && price > 200


select count(distinct category)
from products
