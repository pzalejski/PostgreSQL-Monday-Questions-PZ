-- WEEK 5 MONDAY QUESTIONS --

--How many actors are there with the last name 'Wahlberg'
select last_name
from actor
where last_name like 'Wahlberg';
-- 2 actors -- 


-- How many payments were made between $3.99 and $5.99?
select amount
from payment
where amount between 3.99 and 5.99;
-- 5607 payments --


--What film does the store have the most of? (search in inventory)
select film_id,count(film_id)
from inventory
group by film_id
order by count(film_id) desc;
-- my thought process
-- to get the inventory by film,
-- i would group the inventory into groups based on the film_id
-- use the count() function to count the inventory for each group
-- there are 72 film_id that have a count of 8


--How many customers have the last name "William"?
Select last_name
from customer
where last_name like 'Wil%';
-- 0 custoemrs with last name 'William', 1 customer with last name Williams--

--What store employee (get the id) sold the most rentals?
select staff_id, count(rental_id)
from rental
group by staff_id
order by count(rental_id) desc;
-- staff_id 1 sold the most rentals--


--How many different district names are there?
select district
from address
group by district;
-- 378 districts--


--What film hast the most actors in it? (use film_actor table and get film_id)
select film_id, count(film_id)
from film_actor
group by film_id
order by count(film_id) desc;
-- film_id 508 had 15 actors in it--


--from store_id 1, how many customers have a last name ending with 'es'?(use customer table)
select last_name
from customer
where last_name like '%es';
-- 21 customers have a last name that ends in 'es'--


--How many payment amounts (4.99,5.99, etc) had a number of rentals above 250 for customers with id's between 380 and 430? (use group by and having >250)
select amount, sum(amount)
from payment
where customer_id between 380 and 430
group by amount
having sum(amount)>250;
-- 8 payment ammounts--


-- Within the film talbe, how many rating categories are there? and what rating has the most movies total?
select rating, count(title)
from film
group by rating
order by count(title) desc;
-- PG-13 rating has the most movies at 223--




