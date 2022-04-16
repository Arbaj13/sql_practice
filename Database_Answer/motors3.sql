-- TODO: Q21 Get the address of the office of the employees that reports to the employee whose id is 1102.


SELECT employees.employee_id,o.office_code,o.address_line1
FROM employees 
RIGHT JOIN offices o
ON o.office_code=employees.office_code
WHERE employees.reports_to="1102";

--  SELECT employees.employee_id,reports_emp.employee_id,offices.office_code, 
-- offices.address_line1, offices.address_line2, offices.phone, offices.city,
--  offices.state, offices.country, 
--  offices.postal_code, offices.territory 
--  FROM employees JOIN employees reports_emp ON 
--  reports_emp.employee_id = employees.reports_to 
--  RIGHT JOIN offices ON offices.office_code = employees.office_code
-- WHERE employees.reports_to = "1102";


-- TODO: Q22 Get the details of the payments of classic cars.

-- SELECT p.check_number,p.payment_date,p.amount,pr.product_code,pr.product_line,customers.customer_id
-- FROM  payments p 
-- LEFT JOIN customers
-- ON customers.customer_id=p.customer_id
-- LEFT JOIN orders ON customers.customer_id=orders.customer_id
-- LEFT JOIN  orderdetails ON
-- orderdetails.order_id=orders.order_id
-- LEFT JOIN products pr
-- ON pr.product_code=orderdetails.product_code
-- WHERE pr.product_line="Classic Cars"
-- LIMIT 5;



-- TODO: Q23 How many customers ordered from the USA?


-- SELECT COUNT(*) FROM customers LEFT JOIN orders ON 
-- orders.customer_id = customers.customer_id WHERE customers.country = "USA";


-- TODO: Q24 Get the comments regarding resolved orders.



-- SELECT order_id,order_date,comments FROM orders 
-- WHERE status="resolved";

-- TODO: Q25 Fetch the details of employees/salesmen in the USA with office addresses.


-- SELECT  offices.office_code,city,phone,address_line1,country,e.employee_id
-- FROM offices LEFT JOIN employees e ON 
-- e.office_code=offices.office_code
-- WHERE country="USA";




-- TODO: Q26) Fetch total price of each order of motorcycles. (Hint: quantity x price for each record).




-- SELECT o.order_id,o.product_code,o.quantity_ordered,o.each_price,o.order_line_number,p.product_line,
-- (o.quantity_ordered*o.each_price) AS total_price
-- FROM orderdetails o LEFT JOIN products p 
-- ON p.product_code=o.product_code
-- WHERE product_line="motorcycles"
-- LIMIT 5;


-- TODO: Q27) Get the total worth of all planes ordered.

-- SELECT SUM(o.quantity_ordered*o.each_price) AS total_amount_of_planes
-- FROM products p LEFT JOIN orderdetails o ON o.product_code=p.product_code
-- WHERE product_line="planes" 
-- ;


-- TODO: Q28) How many customers belong to France?

-- SELECT COUNT(*) FROM customers
-- WHERE country="France";


-- TODO: Q29  Get the payments of customers living in France.


-- SELECT p.customer_id,p.check_number,p.payment_date,p.amount from payments p
-- LEFT JOIN customers ON p.customer_id=customers.customer_id
-- WHERE country="France";

-- TODO: Q30 Get the office address of the employees/salesmen who report to employee 1143.


-- SELECT  employees.employee_id, o.office_code,o.city,o.phone,o.address_line1 FROM
-- offices o 
-- LEFT JOIN  employees ON o.office_code=employees.office_code
-- WHERE employees.reports_to="1143";





