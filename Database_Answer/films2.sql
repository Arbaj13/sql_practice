-- TODO: Q11 Get the details of the film with maximum length released in 2014 

-- SELECT *,MAX(film.length),film.release_year FROM
-- film WHERE film.release_year=2014
-- ;


-- TODO: Q12 Get all Sci- Fi movies with NC-17 ratings and language they are screened in.


-- SELECT film.film_id,film.title,film.description,film.release_year,
-- film.length,film.rating,category.name,language.name FROM film RIGHT JOIN
-- film_category ON film_category.film_id=film.film_id
-- LEFT JOIN category ON category.category_id=film_category.category_id
-- LEFT JOIN language ON language.language_id=film.language_id
-- WHERE category.name="Sci-Fi" AND film.rating="NC-17";


-- SELECT film.film_id, film.title, film.description, film.release_year, 
-- film.length, film.rating,category.name, language.name FROM film LEFT JOIN 
-- language ON language.language_id=film.language_id RIGHT JOIN
-- film_category ON film_category.film_id = film.film_id 
-- LEFT JOIN category ON category.category_id=film_category.category_id  
-- WHERE film.rating="NC-17" AND category.name="Sci-Fi";

-- TODO: Q13 The actor FRED COSTNER (id:16) shifted to a new address:
--  055,  Piazzale Michelangelo, Postal Code - 50125 , District - Rifredi at Florence, Italy. 
-- Insert the new city and update the address of the actor.



-- INSERT INTO city(city,country_id)
-- VALUES("Florence",(SELECT country_id FROM country WHERE country="Italy"));

-- UPDATE address INNER JOIN actor ON actor.address_id=address.address_id
-- SET address.address="055,  Piazzale Michelangelo",address.postal_code="50125",
-- address.district="Rifredi",address.city_id=(SELECT city_id from city WHERE city="Florence")
-- WHERE actor.actor_id=16;


-- TODO: Q14 


-- INSERT INTO film(title,description,release_year,language_id,
-- original_language_id,rental_duration,rental_rate,length,replacement_cost,rating,special_features)

-- VALUES("No Time to Die","Recruited to rescue a kidnapped scientist, 
-- globe-trotting spy James Bond finds himself hot on the trail of a mysterious villain, who's armed with a dangerous new technology.",
-- 2020,(SELECT language_id from language WHERE name="English"),
-- (SELECT language_id from language WHERE name="English")
-- ,6,3.99,100,20.99,"PG-13","Trailers,Deleted Scenes");


-- TODO: Q15 Assign the category Action, Classics, Drama  to the movie “No Time to Die” 


-- INSERT INTO film_category(film_id,category_id)
-- VALUES((SELECT film_id FROM film WHERE title="No Time to Die"),
-- (SELECT category_id from category WHERE name="Action")),
-- ((SELECT film_id FROM film WHERE title="No Time to Die"),
-- (SELECT category_id from category WHERE name="Classics")),
-- ((SELECT film_id FROM film WHERE title="No Time to Die"),
-- (SELECT category_id from category WHERE name="Drama"));


-- TODO: Q16 Assign the cast: PENELOPE GUINESS, NICK WAHLBERG, JOE SWANK to the movie “No Time to Die” .

-- INSERT INTO film_actor(actor_id,film_id)
-- VALUES((SELECT actor_id from actor WHERE first_name="PENELOPE" AND last_name="GUINESS"),
-- (SELECT film_id FROM film WHERE title="No Time to Die")),
-- ((SELECT actor_id from actor WHERE first_name="NICK" AND last_name="WAHLBERG"),
-- (SELECT film_id FROM film WHERE title="No Time to Die")),
-- ((SELECT actor_id from actor WHERE first_name="JOE" AND last_name="SWANK"),
-- (SELECT film_id FROM film WHERE title="No Time to Die"));

-- TODO: Q17 Assign a new category Thriller  to the movie ANGELS LIFE.


-- INSERT INTO category(name)
-- VALUES("Thriller");

-- INSERT INTO film_category(film_id,category_id)
-- VALUES((SELECT film_id FROM film WHERE title="ANGELS LIFE"),
-- (SELECT category_id FROM category WHERE name="Thriller"));

-- TODO: Q 18 Which actor acted in most movies?

-- SELECT actor_id,COUNT(actor_id) as no_of_films from film_actor
-- GROUP BY (actor_id) ORDER BY COUNT(actor_id) DESC LIMIT 1;

-- TODO: Q19  The actor JOHNNY LOLLOBRIGIDA was removed from the movie
--  GRAIL FRANKENSTEIN. How would you update that record?




-- SELECT film.title,film_actor.film_id,actor.actor_id,
-- CONCAT(actor.first_name," ",actor.last_name) as full_name
-- FROM film 
-- INNER JOIN film_actor ON film.film_id=film_actor.film_id
-- INNER JOIN  actor ON actor.actor_id=film_actor.actor_id
-- WHERE actor.first_name="JOHNNY" 
-- AND actor.last_name="LOLLOBRIGIDA" AND film.title="GRAIL FRANKENSTEIN";


-- DELETE FROM `film_actor` WHERE 
-- film_id = (SELECT film_id FROM film WHERE film.title = "GRAIL FRANKENSTEIN") 
-- AND actor_id = (SELECT actor_id FROM actor 
-- WHERE actor.first_name = "JOHNNY" AND actor.last_name="LOLLOBRIGIDA");

-- TODO: Q20 The HARPER DYING movie is an animated 
-- movie with Drama and Comedy. Assign these categories to the movie.


-- INSERT INTO film_category(film_id,category_id)
-- VALUES
-- ((SELECT film_id FROM film WHERE film.title="HARPER DYING"),
-- (SELECT category_id from category WHERE name="Drama")),
-- ((SELECT film_id FROM film WHERE film.title="HARPER DYING"),
-- (SELECT category_id from category WHERE name="Comedy"))
-- ON DUPLICATE KEY UPDATE film_id =VALUES(film_id),category_id=
-- VALUES(category_id);