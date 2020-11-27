-- Change the data type for a given field 
alter table products modify price decimal;
-- Select every column from the products table
select * from products;
-- select the name field from the products table
select name from products; 
-- select the name and price field from the products table
select name, price from products;
-- Select  a customer from the customers table  who's id = 3
select * from customers where id =3;
-- select from the customers table a customer who's name is beth:
select * from customers where first_name = "Beth";
-- Select from the products table all products with a price greater than $20:
select * from products where price > 20;
-- Using partial strings to find a text matching specific starting words or letters
select * from products where name like "Microsoft%";
-- select the names from the products table
select name from products; 
-- select product descriptions that begins with g
select * from products where description like "G%";
-- To search for a specific word anywhere in a field use %word% 
select * from products where name like "%surface%";
-- select item from table using multi conditions with AND/&&
select * from products where category = 1  && price > 200;
-- select item from table using multi conditions with ||/OR
select * from products where category = 1  or category = 5;
-- You can choose how the results are displayed or arranged using the order by keywords
select * from products where category = 1  or category = 5 order by id;
-- You can also have them arranged by reverse order
select * from products where category = 1  or category = 5 order by id desc;
-- you can limit the amount of queris that are returned using the limit keyword and two parameters:
select * from products where category = 1  or category = 5 order by id desc limit 0,3;

 
 






