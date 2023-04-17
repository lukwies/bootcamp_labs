USE sakila;

-- Select all the actors with the first name ‘Scarlett’.
SELECT * FROM  actor WHERE first_name = 'Scarlett';

-- How many films (movies) are available for rent and how many films have been rented?
SELECT  (
	SELECT COUNT(*)
	FROM film
) AS number_of_films,
(
	SELECT COUNT(*)
	FROM rental
) AS number_of_rentals;

SELECT COUNT(*) FROM rental;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT min(length) as min_duration, max(length) as max_duration FROM film;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT floor(avg(length)/60) as hours,
		round(60 * (avg(length)/60-1)) as minutes
        FROM film;

-- How many distinct (different) actors' last names are there?
SELECT count(DISTINCT last_name) FROM actor;

-- Since how many days has the company been operating (check DATEDIFF() function)?
SELECT abs(DATEDIFF(min(rental_date), max(rental_date))) FROM rental;

-- Show rental info with additional columns month and weekday. Get 20 results.
SELECT *, month(rental_date), weekday(rental_date) as weekday FROM rental;

-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *,
	CASE
		WHEN weekday(rental_date) < 6 then 'workday'
		ELSE 'weekend'
		END AS 'day_type'
    FROM rental;

 -- Get release years.
 SELECT release_year FROM film;
 
 -- Get all films with ARMAGEDDON in the title.
 SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%';
 
 -- Get all films which title ends with APOLLO.
 SELECT * FROM film WHERE title LIKE '%APOLLO';

 -- Get 10 the longest films.
 SELECT * FROM film ORDER BY length DESC LIMIT 10;
  
 -- How many films include Behind the Scenes content?
SELECT count(*) FROM film WHERE special_features LIKE '%Behind the Scenes%';