USE sakila;

-- How many films are there for each of the categories in the category table. Use appropriate join to write this query.
SELECT c.category_id , COUNT(c.category_id) as "Number of films"
	FROM sakila.category AS c
    JOIN sakila.film_category fc
    ON c.category_id = fc.category_id
    GROUP BY c.category_id;

-- Display the total amount rung up by each staff member in August of 2005.
SELECT s.staff_id, sum(p.amount) as "Total amount"
	FROM sakila.staff as s
    JOIN sakila.payment p
    ON s.staff_id = p.staff_id
    WHERE left(p.payment_date, 7) = "2005-08"
    GROUP BY s.staff_id;

-- Which actor has appeared in the most films?
SELECT concat(a.first_name, " ", a.last_name) AS actor_name,
		count(fa.film_id) AS total_films
	FROM sakila.actor AS a
    JOIN sakila.film_actor fa
    ON a.actor_id = fa.actor_id
    GROUP BY a.first_name, a.last_name
    ORDER BY total_films DESC;


-- Most active customer (the customer that has rented the most number of films)
SELECT c.customer_id, count(r.customer_id) as rented_total
	FROM sakila.customer AS c
    JOIN sakila.rental AS r
    ON c.customer_id = r.customer_id
    GROUP BY c.customer_id
    ORDER BY rented_total DESC;

-- Display the first and last names, as well as the address, of each staff member.
SELECT s.first_name, s.last_name, a.address
	FROM sakila.staff as s
    JOIN sakila.address as a
    ON s.address_id = a.address_id;

-- List each film and the number of actors who are listed for that film.
SELECT f.title, count(fa.actor_id) AS number_of_actors
	FROM sakila.film as f
    JOIN sakila.film_actor as fa
    ON f.film_id = fa.film_id
    GROUP BY f.title;
    
-- Using the tables payment and customer and the JOIN command, list the total paid by each customer.
-- List the customers alphabetically by last name.
SELECT c.first_name, c.last_name, sum(p.amount) as "payed total"
	FROM sakila.customer as c
    JOIN sakila.payment as p
    ON c.customer_id = p.customer_id
    GROUP BY c.last_name
    ORDER BY c.last_name;

-- List number of films per category.
SELECT c.name, count(fc.film_id) as "films total"
	FROM sakila.category as c
    JOIN sakila.film_category as fc
    ON c.category_id = fc.category_id
    GROUP BY c.name;
