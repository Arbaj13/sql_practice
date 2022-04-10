-- SHOW DATABASES;
-- SELECT DATABASE();
-- USE lco_car_rentals;
-- SELECT DATABASE();

-- TODO: Q1 Insert the details of new customer

-- INSERT INTO customer(first_name, last_name , dob , driver_license_number , email )
-- VALUES ("Nancy","Perry","1988-05-16","K59042656E","nancy@gmail.com");

-- TODO:  Q2

-- INSERT INTO rental (start_date, end_date,customer_id,vehicle_type_id,fuel_option_id,pickup_location_id,drop_off_location_id )
-- VALUES("2020-08-25","2020-08-30",(SELECT customer.id FROM customer WHERE driver_license_number="K59042656E"),
-- (SELECT vehicle_type.id FROM vehicle_type WHERE vehicle_type.name="Economy SUV "),
-- (SELECT fuel_option.id FROM fuel_option WHERE fuel_option.name="Market"),
-- (SELECT location.id FROM location WHERE location.zipcode=60638),
-- (SELECT location.id FROM location WHERE location.zipcode=90045)
-- );


-- TODO:   Q3


-- UPDATE rental INNER JOIN customer ON customer.id=rental.customer_id SET 

-- drop_off_location_id=(SELECT location.id FROM location WHERE zipcode=76102),
-- end_date=(SELECT end_date + INTERVAL 4 DAY )

-- WHERE customer.driver_license_number="W045654959"



-- TODO:   Q4  Fetch all rental details with their equipment type.



-- SELECT CONCAT (customer.first_name," ",customer.last_name) as customer_name,
-- customer.driver_license_number,

-- rental.start_date,rental.end_date,
-- vehicle_type.name,
-- fuel_option.name,
-- CONCAT (pick_location.street_address," ",pick_location.city," ",pick_location.state," ",pick_location.zipcode)
-- AS pickup_location,
-- CONCAT (drop_location.street_address," ",drop_location.city," ",drop_location.state," ",drop_location.zipcode)
-- AS drop_location,
-- equipment_type.name as equipment_type 

-- FROM rental INNER JOIN customer ON customer.id=rental.customer_id 
-- INNER JOIN vehicle_type ON vehicle_type.id=rental.vehicle_type_id
-- INNER JOIN fuel_option ON fuel_option.id=rental.fuel_option_id
-- INNER JOIN location pick_location ON pick_location.id=rental.pickup_location_id
-- INNER JOIN location drop_location ON drop_location.id=rental.drop_off_location_id

-- INNER JOIN rental_has_equipment_type ON rental_has_equipment_type.rental_id=rental.id

-- INNER JOIN equipment_type ON equipment_type.id=rental_has_equipment_type.equipment_type_id;



-- TODO: Q5  Fetch all details of vehicles.


-- SELECT vehicle.id ,vehicle.brand,vehicle.model,vehicle.model_year,vehicle.mileage,
-- vehicle.color,vehicle_type.name,
-- CONCAT(location.street_address," ",location.city," ",location.state," ",location.zipcode)
-- AS current_location
-- FROM vehicle LEFT JOIN vehicle_type ON vehicle_type.id=vehicle.vehicle_type_id
-- LEFT  JOIN  location ON location.id=vehicle.current_location_id;



















