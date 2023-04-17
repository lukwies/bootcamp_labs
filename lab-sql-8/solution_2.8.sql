USE sakila;

-- Write a query to display for each store its store ID, city, and country.
SELECT s.store_id, ci.city, co.country
	FROM sakila.store AS s
    JOIN sakila.address AS a
		ON s.address_id = a.address_id
	JOIN sakila.city AS ci
		ON a.city_id = ci.city_id
    JOIN sakila.country AS co
		ON ci.country_id = co.country_id;

-- Write a query to display how much business, in dollars, each store brought in.
SELECT sto.store_id, concat(convert(count(p.amount), CHAR), " $") AS money_total
	FROM sakila.store as sto
	JOIN sakila.staff as sta
		ON sto.store_id = sta.store_id
	JOIN sakila.payment as p
		ON p.staff_id = sta.staff_id
	GROUP BY sto.store_id;

-- Which film categories are longest?
SELECT c.name as category, avg(f.length) as average_length
	FROM sakila.category as c
	JOIN sakila.film_category as fc
		ON c.category_id = fc.category_id
	JOIN sakila.film as f
		ON f.film_id = fc.film_id
	GROUP BY c.name
	ORDER BY average_length DESC;


-- Display the most frequently rented movies in descending order.
SELECT f.title AS film_title, count(r.rental_id) AS rent_frequency
	FROM sakila.film AS f
	JOIN sakila.inventory AS i
		ON f.film_id = i.film_id
	JOIN sakila.rental AS r
		ON i.inventory_id = r.inventory_id
	GROUP BY f.title
	ORDER BY COUNT(r.rental_id) DESC;


-- List the top five genres in gross revenue in descending order.
SELECT c.name as category, count(fc.category_id) as num_films
	FROM sakila.category as c
    JOIN sakila.film_category as fc
		ON c.category_id = fc.category_id
    GROUP BY c.name
    ORDER BY num_films DESC;

-- Is "Academy Dinosaur" available for rent from Store 1?
SELECT i.store_id, f.title, count(i.film_id) as existing
	FROM sakila.film as f
    JOIN sakila.inventory as i
		ON f.film_id = i.film_id
    JOIN sakila.rental as r
		ON r.inventory_id = i.inventory_id
    WHERE f.title LIKE "Academy Dinosaur" AND i.store_id = 1
    ORDER BY f.title;


-- Get all pairs of actors that worked together.
SELECT f.title AS film_title,
		concat(a1.first_name," ", a1.last_name) AS first_actor,
        concat(a2.first_name," ", a2.last_name) AS second_actor
	FROM sakila.film f
	JOIN film_actor fa1
		ON f.film_id=fa1.film_id
	JOIN sakila.actor a1
		ON fa1.actor_id=a1.actor_id
	JOIN sakila.film_actor fa2
		ON f.film_id=fa2.film_id
	JOIN sakila.actor a2
		ON fa2.actor_id=a2.actor_id
	WHERE fa1.actor_id <> fa2.actor_id
	ORDER BY f.film_id;


-- Get all pairs of customers that have rented the same film more than 3 times.
SELECT o1.customer_id AS client_1,
       o2.customer_id AS client_2,
       COUNT(*) same_films
FROM( (SELECT c.customer_id, f.film_id
        FROM sakila.customer AS c
        JOIN sakila.rental AS r ON r.customer_id = c.customer_id
        JOIN sakila.inventory AS i ON i.inventory_id = r.inventory_id
        JOIN sakila.film AS f ON i.film_id = f.film_id
        ) AS o1
        JOIN (SELECT c.customer_id, f.film_id
                FROM sakila.customer AS c
                JOIN sakila.rental AS r ON r.customer_id = c.customer_id
                JOIN sakila.inventory AS i ON i.inventory_id = r.inventory_id
                JOIN sakila.film AS f ON i.film_id = f.film_id
    ) AS o2
    ON o2.film_id = o1.film_id AND o2.customer_id < o1.customer_id )
GROUP BY o1.customer_id, o2.customer_id
ORDER BY COUNT(*) DESC;


-- For each film, list actor that has acted in more films
SELECT fa.actor_id, f.title, a.last_name, count(fa.actor_id) as films_total
	FROM sakila.film_actor as fa
    JOIN sakila.film as f
		ON f.film_id = fa.film_id
	JOIN sakila.actor as a
		ON fa.actor_id = a.actor_id
    GROUP BY fa.actor_id
    HAVING films_total > 1
    ORDER BY films_total DESC;
