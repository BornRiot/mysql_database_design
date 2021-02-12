-- Very basic math query example
select (1 + 2)

-- four math operations
select (1+1), (8-2), (4*3), (10/2)

-- Round numbers
select Round(2.5), Round(-2.5)

-- Absolute value
select ABS(-5)
-- Get max price from products table
select max(price)
from products

-- Get min price from products table
select min(price)
from products

-- Get the average price
select AVG(price)
from products

-- Using subqueries
select (1+(select 2 + 4))

-- even deeper subqueries
select( 1 + ( select 2 + ( select( 5 * 3))))

-- subqueries using price table
select name, price from products where price > (select AVG(price)
from products)
order by name

-- Using more complex subqueries
select name, MIN(price) from products where id in(select id from products where description like "%Treadmill%")

-- Get the current version of mysql
select version() 

-- To get the current date and time
select now()
