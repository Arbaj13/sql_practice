-- TODO: Q 21 Increase the rental value of all equipment types by 11.25.

-- UPDATE equipment_type 
-- SET rental_value=rental_value+"11.25"


-- TODO: Q22 Increase the  cost of all rental insurances 
-- except Cover The Car (LDW) by twice the current cost.

-- UPDATE insurance
-- SET cost=cost*"2"
-- WHERE name!="Cover The Car (LDW)";


-- TODO:  Q23 Fetch the maximum net amount of invoice generated.


-- SELECT MAX(rental_invoice.net_amount_payable) as Net_Amount FROM rental_invoice ;


-- TODO:  Q24 Update the dob of customer with driving license V435899293 to 1977-06-22.


-- UPDATE customer 
-- SET dob="1977-06-22" 
-- WHERE driver_license_number="V435899293";


-- TODO:  Q25 Insert new location with following details.
-- Street address : 468  Jett Lane
-- City : Gardena , State : CA, Zip - 90248


-- INSERT INTO location(street_address,city,state,zipcode)
-- VALUES("468  Jett Lane","Gardena","CA",90248);


-- TODO:  Q26 The new customer (Driving license: W045654959) 
-- wants to rent a car from 2020-09-15 to 2020-10-02. 
-- More details are as follows: 

-- Vehicle Type : Hatchback
-- Fuel Option : Pre-paid (refunded)
-- Pick Up location:  468  Jett Lane , Gardena , CA, zip- 90248
-- Drop Location: 5911 Blair Rd NW, Washington, DC, zip - 20011



-- INSERT INTO rental(start_date,end_date,customer_id,vehicle_type_id,fuel_option_id,
-- pickup_location_id,drop_off_location_id)

-- VALUES("2020-09-15","2020-10-02",

-- (SELECT customer.id FROM customer WHERE driver_license_number="W045654959"),

-- (SELECT vehicle_type.id FROM vehicle_type WHERE name="Hatchback"),

-- (SELECT fuel_option.id FROM fuel_option WHERE name="Pre-paid (refunded)"),

-- (SELECT pick_up.id FROM location pick_up  WHERE zipcode=90248 ),

-- (SELECT drop_off.id FROM location drop_off  WHERE zipcode=20011 )

-- );



-- TODO:: Q27  Replace the driving license of the customer
--  (Driving License: G055017319) with new one K16046265.

-- UPDATE customer 
-- SET driver_license_number="K16046265"
-- WHERE driver_license_number="G055017319";


-- TODO: Q 28 Calculated the total sum of all insurance costs of all rentals.




-- SELECT SUM(insurance.cost) AS Total_Sum FROM rental_has_insurance INNER JOIN
-- insurance ON insurance.id=rental_has_insurance.insurance_id;


-- TODO:  Q29 How much discount we gave to customers in total in the rental invoice?


-- SELECT SUM(rental_invoice.discount_amount) AS Total_Discount FROM rental_invoice ;


-- TODO: Q30) The Nissan Versa has been repainted to black. Update the record.


-- UPDATE Vehicle
-- SET vehicle.color="black"
-- WHERE vehicle.brand="Nissan"
-- AND
-- vehicle.model="Versa";

