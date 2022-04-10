-- TODO: Q21 The entire cast of the movie WEST LION has changed. 
-- The new actors are DAN TORN, MAE HOFFMAN, SCARLETT DAMON. 
-- How would you update the record in the safest way?


-- DELETE FROM film_actor WHERE film_id=(SELECT film_id from film WHERE title="WEST LION")



-- INSERT INTO film_actor(actor_id,film_id)
-- VALUES ((SELECT actor_id FROM actor WHERE first_name="DAN" AND last_name="TORN"),
-- (SELECT film_id FROM film WHERE title="WEST LION")),
-- ((SELECT actor_id FROM actor WHERE first_name="MAE"AND last_name="HOFFMAN"),
-- (SELECT film_id FROM film WHERE title="WEST LION")),
-- ((SELECT actor_id FROM actor WHERE first_name="SCARLETT" AND last_name="DAMON"),
-- (SELECT film_id FROM film WHERE title="WEST LION"));


-- TODO: Q22 The entire category of the movie WEST LION was wrongly inserted. 
-- The correct categories are Classics, Family, Children. 
-- How would you update the record ensuring no wrong data is left?

-- DELETE FROM film_category WHERE film_id=(SELECT film_id from film WHERE title="WEST LION")


-- INSERT INTO film_category(film_id,category_id)
-- VALUES((SELECT film_id from film WHERE title="WEST LION"),
-- (SELECT category_id FROM category WHERE name="Classics")),
-- ((SELECT film_id from film WHERE title="WEST LION"),
-- (SELECT category_id FROM category WHERE name="Family")),
-- ((SELECT film_id from film WHERE title="WEST LION"),
-- (SELECT category_id FROM category WHERE name="Children"));


-- TODO: Q23 How many actors acted in films released in 2017?


-- SELECT COUNT(*) AS Total_Actors FROM film_actor INNER JOIN film ON 
-- film.film_id=film_actor.film_id
-- WHERE film.release_year=2017
-- ;


-- TODO: Q24 How many Sci-Fi films released between the year 2007 to 2017?

-- SELECT COUNT(film_category.film_id) AS no_of_films,film.release_year FROM film_category INNER JOIN film ON
-- film.film_id=film_category.film_id INNER JOIN category ON
-- category.category_id=film_category.category_id
-- WHERE category.name="Sci-Fi" AND film.release_year between 2007 AND 2017 
-- GROUP BY film.release_year
-- ORDER BY film.release_year;


-- TODO: Q25 Fetch the actors of the movie WESTWARD SEABISCUIT with the city they live in.


-- SELECT actor.first_name ,actor.last_name ,film.title , city.city
-- FROM film_actor INNER JOIN actor ON film_actor.actor_id=actor.actor_id
-- INNER JOIN address ON actor.address_id=address.address_id
-- INNER JOIN city ON city.city_id=address.city_id
-- INNER JOIN film ON film.film_id=film_actor.film_id
-- WHERE film.title="WESTWARD SEABISCUIT";


-- TODO: Q 26  What is the total length of all movies played in 2008?

-- SELECT SUM(film.length) AS total_length FROM film WHERE film.release_year=2008;


-- TODO: Q27 Which film has the shortest length? In which language and year was it released?


-- SELECT film.title,film.length,language.name,film.release_year FROM film INNER JOIN language
-- ON film.language_id=language.language_id 
-- WHERE film.length=(SELECT MIN(film.length) FROM film);

-- TODO: Q28 How many movies were released each year?


-- SELECT COUNT(film.film_id) AS no_of_films,film.release_year FROM film 
-- GROUP BY film.release_year
-- ORDER BY release_year;

-- TODO: Q29)  How many languages of movies were released each year?.

-- SELECT language.name,film.release_year,COUNT(film.language_id) No_of_lan FROM film
-- INNER JOIN language ON film.language_id=language.language_id
-- GROUP BY film.release_year
-- ORDER BY release_year;

-- TODO: Q30) Which actor did least movies?

-- SELECT film_actor.actor_id,actor.first_name,actor.last_name,COUNT(film_actor.actor_id) FROM 
-- actor INNER JOIN film_actor ON actor.actor_id=film_actor.actor_id
-- GROUP BY film_actor.actor_id ORDER BY COUNT(film_actor.actor_id) ASC LIMIT 1;



--  SELECT actor_id, COUNT(actor_id) FROM `film_actor` 
--  GROUP BY actor_id ORDER BY COUNT(actor_id) ASC LIMIT 1;