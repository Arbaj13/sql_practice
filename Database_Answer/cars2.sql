-- TODO:  Q6

-- SELECT customer.first_name,customer.driver_license_number,COUNT(rental_has_insurance.rental_id)
-- AS number_of_insurance FROM customer  JOIN rental ON customer.id=rental.customer_id
--  JOIN rental_has_insurance ON rental.id=rental_has_insurance.rental_id
-- GROUP BY rental_has_insurance.rental_id ORDER BY 
-- COUNT(rental_has_insurance.rental_id) DESC ;

-- TODO: Q7

-- INSERT INTO equipment_type (name,rental_value)
-- VALUES("Mini TV",8.99);


-- TODO: Q8


-- INSERT INTO equipment (name,equipment_type_id,current_location_id)
-- VALUES("Garmin Mini TV",(SELECT equipment_type.id FROM
-- equipment_type WHERE name='Mini TV'),
-- (SELECT location.id FROM location WHERE location.zipcode=60638));

-- TODO:  Q9 Fetch rental invoice for customer (email: smacias3@amazonaws.com)

-- SELECT rental_invoice.id,car_rent,equipment_rent_total,insurance_cost_total,
-- tax_surcharges_and_fees,total_amount_payable,discount_amount,net_amount_payable,
-- rental_id,customer.id as customer_id FROM rental_invoice LEFT JOIN rental 
-- ON rental_invoice.rental_id=rental.id 
-- LEFT JOIN customer ON customer.id=rental.customer_id 
-- WHERE customer.email="smacias3@amazonaws.com";


-- TODO:   Q10  

-- INSERT INTO rental_invoice (car_rent,equipment_rent_total,insurance_cost_total,
-- tax_surcharges_and_fees,total_amount_payable,discount_amount,net_amount_payable,rental_id)  

-- VALUES(785.4,114.65,688.2,26.2,1614.2,213.25,1401.2,(SELECT rental.id
-- FROM rental INNER JOIN customer ON customer.id=rental.customer_id  
-- WHERE customer.driver_license_number="K59042656E"
-- ));

-- TODO: Q 11 Which rental has the most number of equipment.

-- SELECT rental_has_equipment_type.rental_id,
-- COUNT(rental_has_equipment_type.rental_id) as number_of_equipment
-- FROM rental_has_equipment_type
-- GROUP BY 
-- rental_has_equipment_type.rental_id
-- ORDER BY
-- COUNT(rental_has_equipment_type.rental_id) ;


-- TODO: Q 12 Get driving license of a customer with least number of rental licenses.

-- SELECT customer.driver_license_number,
-- COUNT(rental_has_insurance.rental_id) as rental_license
-- FROM rental_has_insurance RIGHT  JOIN
-- rental ON rental.id =rental_has_insurance.rental_id
-- LEFT JOIN customer ON
-- customer.id =rental.customer_id
-- GROUP BY 
-- rental_has_insurance.rental_id
-- ORDER BY 
-- COUNT(rental_has_insurance.rental_id) ASC LIMIT 1;



-- SELECT customer.driver_license_number, 
-- COUNT(rental_has_insurance.rental_id) AS number_of_insurance 
-- FROM customer LEFT  JOIN rental 
-- ON rental.customer_id = customer.id 
-- LEFT JOIN rental_has_insurance 
-- ON rental_has_insurance.rental_id = rental.id 
-- GROUP BY rental_has_insurance.rental_id 
-- ORDER BY COUNT(rental_has_insurance.rental_id) ASC LIMIT 1

--  TODO: Q13


-- INSERT INTO location(street_address,city,state,zipcode)
-- VALUES("1460  Thomas Street","Burr Ridge","IL",61257);

-- TODO: Q14

-- INSERT INTO vehicle (brand,model,model_year,mileage,color,vehicle_type_id,current_location_id)

-- VALUES("Tata","Nexon",2020,17000,"Blue",(SELECT vehicle_type.id FROM vehicle_type WHERE name="Economy SUV"),
-- (SELECT location.id FROM location WHERE zipcode=20011));


-- -- TODO: Q15) Insert new vehicle type Hatchback and rental value: 33.88.

-- INSERT INTO vehicle_type (name,rental_value)
-- VALUES("Hatchback",33.88);


-- TODO:   Q16 Add new fuel option Pre-paid (refunded)




-- INSERT INTO fuel_option (name,description)
-- VALUES("Pre-paid (refunded)","Customer buy a tank of fuel at pick-up and get refunded the amount customer don’t use");

-- TODO:   Q17 Assign the insurance : Cover My Belongings (PEP), Cover The Car (LDW) to the
--         rental started on 25-08-2020 (created in Q2) by customer (Driving License:K59042656E).




-- INSERT INTO rental_has_insurance (rental_id,insurance_id)
-- VALUES((SELECT rental.id FROM rental LEFT JOIN customer ON customer.id=rental.customer_id
-- WHERE driver_license_number="K59042656E"),
-- (SELECT insurance.id from insurance WHERE name="Cover My Belongings (PEP)")),
-- ((SELECT rental.id FROM rental LEFT JOIN customer ON customer.id=rental.customer_id
-- WHERE driver_license_number="K59042656E"),
-- (SELECT insurance.id from insurance WHERE name="Cover The Car (LDW)"));




-- TODO:  Q18  Remove equipment_type :Satellite Radio from rental started on 2018-07-14 and ended on 2018-07-23.

-- DELETE FROM  rental_has_equipment_type WHERE

-- rental_has_equipment_type.rental_id=(SELECT rental.id FROM rental WHERE 
-- rental.start_date="2018-07-14" AND rental.end_date="2018-07-23")
-- AND
-- rental_has_equipment_type.equipment_type_id=(SELECT equipment_type.id FROM equipment_type 
-- WHERE name="Satellite Radio");


-- TODO:   Q19 Update phone to 510-624-4188 of customer (Driving License: K59042656E)

-- UPDATE customer SET phone="510-624-4188 " WHERE driver_license_number="K59042656E";



-- TODO:   Q20 INCREASE the insurance cost of Cover The Car (LDW) by 5.65.


-- UPDATE insurance SET cost=(SELECT cost +"5.65")
-- WHERE insurance.name="Cover The Car (LDW)";







































