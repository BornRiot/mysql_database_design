-- Retrun results for each specific state
select city, state from customer_addresses where state = "MA" or state = "MD" or state = "FL" order by state

-- Using the IN clause instead of tyoing out each state about 15
-- times
select city, state from customer_addresses where state in("MA", "MD", "FL") order by state

 -- Find customers  that are not in the following states
 select city, state from customer_addresses where state not in("MA", "MD", "FL") order by state

 -- Use join and in clause to join customers and customer_addresses
select
customers.first_name AS "First Name",
customers.last_name AS "Last Name",
customer_addresses.city AS "City",
customer_addresses.state AS "State"
from customer_addresses
inner join
customers
on customer_addresses.customer = customers.id
where state
in ("MA", "MD", "FL")
order by state
