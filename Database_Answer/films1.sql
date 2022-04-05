-- TODO: Q1 Which categories of movies released in 2018? 
-- Fetch with the number of movies.

-- SELECT category.name,category.category_id,film.release_year,film.film_id,
-- COUNT(category.category_id) as No_of_films
-- FROM
-- category LEFT  JOIN film_category ON category.category_id=film_category.category_id
-- RIGHT JOIN film ON film.film_id=film_category.film_id
-- WHERE film.release_year="2018"
-- GROUP BY category.category_id;

-- TODO:  Q2  Update the address of actor id 36 to “677 Jazz Street”

-- UPDATE address
-- INNER JOIN
-- actor ON
-- actor.address_id=address.address_id
-- SET address="677 Jazz Street"
-- WHERE actor_id=36;


-- TODO: Q3 Add the new actors (id : 105 , 95) in film  ARSENIC INDEPENDENCE (id:41)

-- INSERT INTO film_actor(actor_id,film_id)
-- VALUES(105,41),
-- (95,41) ON DUPLICATE KEY UPDATE film_id=VALUES(film_id),actor_id=VALUES(actor_id);

-- TODO: Q4 Get the name of films of the actors who belong to India.

-- SELECT DISTINCT  film.title FROM film INNER JOIN film_actor ON film.film_id=film_actor.film_id
-- INNER JOIN actor ON film_actor.actor_id=actor.actor_id
-- INNER JOIN address ON actor.address_id=address.address_id
-- INNER JOIN city ON city.city_id=address.city_id
-- INNER JOIN country ON country.country_id=city.country_id
-- WHERE country.country="India" LIMIT 5;


-- TODO: Q5 How many actors are from the United States?


-- SELECT COUNT(actor.address_id) as actors_from_USA
-- FROM actor 
-- INNER JOIN address ON address.address_id=actor.address_id
-- INNER JOIN city ON city.city_id=address.city_id
-- INNER JOIN country ON country.country_id=city.country_id
-- WHERE country.country="United States" ;


-- SELECT COUNT(*) FROM actor INNER JOIN 
-- address on address.address_id = actor.address_id 
-- INNER JOIN city ON city.city_id = address.city_id 
-- INNER JOIN country ON country.country_id=city.country_id
-- WHERE country.country = "United States";



-- TODO: Q6 Get all languages in which films are released in the year between 2001 and 2010


-- SELECT language.name,film.release_year,COUNT(language.language_id) as No_of_films
-- FROM language LEFT JOIN film ON 
-- film.language_id=language.language_id
-- WHERE film.release_year between 2001 AND 2010
-- GROUP BY language.language_id;


-- TODO: Q7 The film ALONE TRIP (id:17) was actually released in Mandarin, update the info.



-- UPDATE film
-- SET language_id=(SELECT language.language_id from language WHERE name="Mandarin")
-- WHERE film.film_id=17;


-- TODO:  Q8 Fetch cast details of films released during 2005 and 2015 with PG rating.

-- SELECT CONCAT(actor.first_name," ",actor.last_name) AS name,
-- film.release_year,film.rating,film.title,COUNT(actor.actor_id) as Total_actors
-- FROM actor LEFT JOIN film_actor
-- ON actor.actor_id=film_actor.actor_id
-- LEFT JOIN film
-- ON film.film_id=film_actor.film_id
-- WHERE film.release_year BETWEEN 2005 AND 2015 AND film.rating="PG" 
-- GROUP BY release_year
-- ORDER BY release_year;


-- TODO: Q9 In which year most films were released?

-- SELECT film.title,film.release_year,COUNT(film.release_year) AS Total_No_Of_Films FROM film
-- GROUP BY release_year
-- ORDER BY COUNT(film.release_year) DESC LIMIT 1; 


-- TODO: Q10 In which year least number of films were released?

-- SELECT film.title,film.release_year,COUNT(film.release_year) AS Total_No_Of_Films
-- FROM film GROUP BY release_year
-- ORDER BY COUNT(film.release_year) ASC LIMIT 1;








