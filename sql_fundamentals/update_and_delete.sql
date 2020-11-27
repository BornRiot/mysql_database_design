-- Lesson and video lecture covers how to update and delete data in SQL

-- Update products table using the update keyword with new info:
update products set name = "Microsoft Surface Tablet" where id  = 3;

-- Update customer info:
update customers set first_name = "Melanie", last_name = "Rodriguez ", email ="mrodriguez@gmail.com" where id = 1

-- delete a record in the table:
delete from customer_addresses where id = 5;   -- delete the foreign key constraint first
-- In this particalular instance, the customer also created a review whic has to be deleted first also:
delete from reviews where id = 12;
delete from customers where id = 5; -- Now the customer can be deleted
