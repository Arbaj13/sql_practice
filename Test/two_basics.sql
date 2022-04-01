-- SHOW DATABASES;
-- CREATE TABLE customer(
--     cust_id INT NOT NULL AUTO_INCREMENT,
--     cust_name VARCHAR(30) NOT NULL,
--     cust_email VARCHAR(40) DEFAULT "NO Email provide",
--     cust_amount INT,
--     PRIMARY KEY (cust_id)  
-- );

-- TODO: add some values in customer

-- INSERT INTO customer(cust_name,cust_email,cust_amount)
-- VALUES  ('ARBAJ PATHAN','pathan2019arbaj@gmail.com',35),
--         ('hitesh','lco@gmail.com',45),
--         ('ARBAJ','pathan2019arbaj@yahoo',88),
--         ('george','george@gmail.com',78),
--         ('jimmy','jimmy@gmail.com',54),
--         ('lina','lina@gmail.com',35),
--         ('hitesh','hitesh@yahoo.com',56);
-- TODO: ans some questons?
-- SELECT cust_name from customer;

-- SELECT cust_email from customer;

-- SELECT cust_amount from customer;
-- SELECT cust_amount as Purchases from customer;

-- TODO: updates tasks


-- SELECT * from  customer WHERE cust_name='jimmy';

-- UPDATE customer SET cust_email='jimmy@yahoo.com'   WHERE cust_name='jimmy';

-- SELECT * from customer WHERE cust_name='hitesh';

-- SELECT * from customer WHERE cust_id=7;

-- UPDATE customer SET cust_amount=35 WHERE cust_id=7;


-- SELECT * from customer WHERE cust_name='hitesh';

-- UPDATE customer SET cust_email='lco@gmail.com' WHERE cust_name='hitesh';

-- SELECT * from customer WHERE cust_name='george';

-- DELETE from customer WHERE cust_name='george';

-- SELECT * from customer WHERE cust_name='hitesh';

-- DELETE FROM customer WHERE cust_name='hitesh';

-- SELECT * from customer WHERE cust_name='lina';

-- DELETE from customer WHERE cust_name='lina';
