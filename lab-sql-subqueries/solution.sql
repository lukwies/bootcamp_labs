USE sakila;

-- 1. How many copies of the film Hunchback Impossible exist in the inventory system?
SELECT count(*)
	FROM sakila.inventory as i
    JOIN film as f
    ON f.film_id = i.film_id
    WHERE f.title LIKE 'Hunchback Impossible';

-- 2. List all films whose length is longer than the average of all the films.
SELECT title FROM sakila.film WHERE length > (SELECT AVG(length) FROM film);

-- 3. Use subqueries to display all actors who appear in the film Alone Trip.
SELECT first_name as fname FROM (
	SELECT first_name
		FROM sakila.actor as a
        JOIN sakila.film as f
			ON f.title LIKE 'Alone Trip'
		JOIN sakila.film_actor as fa
			ON fa.
	FROM sakila.actor as a
    JOIN sakila.film as f

-- 4. Sales have been lagging among young families, and you wish to target all family movies for a promotion.
-- Identify all movies categorized as family films.
SELECT title FROM sakila.film WHERE film_id IN (
	SELECT film_id FROM sakila.film_category WHERE category_id = (
		SELECT category_id FROM sakila.category WHERE name = 'family'
	)
);

-- 5. Get name and email from customers from Canada using subqueries. Do the same with joins.
-- Note that to create a join, you will have to identify the correct tables with their primary
-- keys and foreign keys, that will help you get the relevant information.
SELECT email FROM sakila.customer WHERE address_id IN (
	SELECT address_id FROM sakila.address WHERE city_id IN (
		SELECT city_id FROM sakila.city WHERE country_id IN (
			SELECT country_id FROM sakila.country WHERE country = 'CANADA'
		)
	)
);

-- 6. Which are films starred by the most prolific actor? Most prolific actor is defined as the actor that has acted in the most number of films.
-- First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.
SELECT title FROM sakila.film WHERE film_id IN (
	SELECT film_id FROM (
		SELECT actor_id, count(*) AS num_films FROM sakila.film_actor
			GROUP BY actor_id
        ) AS sub_query
) LIMIT 1;

-- 7. Films rented by most profitable customer.
-- You can use the customer table and payment table to find the most profitable customer ie the customer that has made the largest sum of payments.


-- 8. Customers who spent more than the average payments.
SELECT customer_id, first_name, last_name FROM sakila.customer WHERE customer_id IN (
	SELECT customer_id FROM (
		SELECT customer_id, avg(amount) AS amount_per_cust FROM sakila.payment
			GROUP BY customer_id
			HAVING amount_per_cust > (
				SELECT avg(amount) FROM sakila.payment
			)
	) as sub_query
);
