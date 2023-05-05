-- Question 1. List of Customers who live in Texas using JOINs:

district from address
address -> city_id
customer -> address_id

select customer.first_name, last_name, district
from customer
full join address
on address.city_id = customer.address_id
where district = 'Texas';
 
-- Angela Hernandez,  Monica Hicks, Yvonne Watkins,  Ana Bradley,  Kristina Chambers

------------------------------------------------------------------------------------------------------------------------------

-- Question 2. Get all Customer full name with payments above $6.99:

customer -> customer_id
payment ->customer_id


select first_name || ' ' || last_name as full_name, amount
from customer
inner join payment
on customer.customer_id = payment.customer_id
where amount > 6.99
order by amount asc
------------------------------------------------------------------------------------------------------------------------------

-- Question 3. List all customer names who made payments over the $175: 

select customer.customer_id, sum(amount), first_name, last_name
from payment
full join customer
on customer.customer_id = payment.customer_id
group by customer.customer_id
having sum(amount) > 175
order by sum(amount) asc;
------------------------------------------------------------------------------------------------------------------------------
-- Question 4. List all the Customers that live in Nepal:

customer.address_id -> address_id
address.city_id -> city.city_id
city.country_id -> country.country_id

select first_name || ' ' || last_name as full_name, country
from customer
full join address
on customer.address_id = address.address_id
full join city
on address.city_id = city.city_id
full join country
on city.country_id = country.country_id
where country = 'Nepal';

--Kevin Schuler
------------------------------------------------------------------------------------------------------------------------------
-- Question 5. staff member had the most transactions:

payment_id from payment

select first_name || ' ' || last_name as full_name, count(payment_id )
from staff
left join payment
on staff.staff_id = payment.staff_id
group by full_name

-- Mike Hillyer has 7292 transactions
Jon Stephens has 7304 transactions
------------------------------------------------------------------------------------------------------------------------------
-- Question 6. What Film had the most actors:

actor.actor_id
film_actor.film_id

select actor.actor_id, first_name, last_name, count(film_id)
from film_actor
inner join actor
on actor.actor_id = film_actor.film_id
group by actor.actor_id
order by count(film_actor.film_id) desc

--Albert Johansson, Rock Dukakis, Spencer Peck have the most films

------------------------------------------------------------------------------------------------------------------------------
-- Question 7. Show all the customers who made a single payment above $6.99:

select *, amount
from customer
inner join payment
on customer.customer_id = payment.customer_id
where amount > 6.99
order by amount asc

------------------------------------------------------------------------------------------------------------------------------
-- Question 8. Which category is the most prevalent in the films:

category.category_id OR category.name
film_category.category_id

SELECT category.category_id, name, count(film.film_id)
from film
full join film_category
on film.film_id = film_category.film_id
full join category
on film_category.category_id = category.category_id
group by category.category_id
--order by catetgory.category_id; ask question on how to sort by category_id asc

-- Sports -> most prevalent category -> 74 Films
