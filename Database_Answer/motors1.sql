-- TODO: Q1 How would you fetch details of the customers  who cancelled orders?


-- SELECT * from customers LEFT JOIN orders ON customers.customer_id=orders.customer_id
-- WHERE orders.status="cancelled";

-- TODO: Q2 Fetch the details of customers who have done payments between the amount 5,000 and 35,000?


-- SELECT customers.customer_id,CONCAT(first_name," ",last_name)AS full_name,amount
-- FROM customers LEFT JOIN  payments ON 
-- payments.customer_id=customers.customer_id
-- WHERE payments.amount between 5000 AND 35000
-- ORDER BY payments.amount
-- LIMIT 5;


-- TODO: Q3 
            -- Add new employee/salesman with following details:-
            -- EMP ID - 15657
            -- First Name : Lakshmi
            -- Last Name: Roy
            -- Extension : x4065
            -- Email: lakshmiroy1@lcomotors.com
            -- Office Code: 4
            -- Reports To: 1088
            -- Job Title: Sales Rep


-- INSERT INTO employees(employee_id,first_name,last_name,extension,email,
-- office_code,reports_to,job_title)
-- VALUES
-- (15657,"Lakshmi","Roy","x4065","lakshmiroy1@lcomotors.com","4",1088,"Sales Rep");


-- TODO: Q4 Assign the new employee to the customer whose phone is 2125557413 

-- update customers  SET customers.sales_employee_id=15657 
-- WHERE customers.phone="2125557413";


-- TODO: Q5 Write a SQL query to fetch shipped motorcycles.

-- SELECT products.product_code,products.product_line,orders.status 
-- FROM products LEFT JOIN orderdetails ON orderdetails.product_code=products.product_code
-- LEFT JOIN orders ON orders.order_id=orderdetails.order_id
-- WHERE products.product_line="Motorcycles" AND orders.status="Shipped";


-- TODO: Q6 Write a SQL query to get details of all employees/salesmen in the office located in Sydney.


-- SELECT employees.employee_id,employees.first_name,offices.city FROM employees
-- LEFT JOIN offices ON offices.office_code=employees.office_code
-- WHERE offices.city="Sydney";

-- TODO: Q7 How would you fetch the details of customers whose orders are in process?

-- SELECT customers.customer_id,customers.first_name,orders.status
-- FROM customers LEFT  JOIN orders ON orders.customer_id=customers.customer_id
-- WHERE orders.status="In process";


-- TODO: Q8 How would you fetch the details of products with less than 30 orders?

-- SELECT orderdetails.product_code,orderdetails.quantity_ordered,productlines.product_line
-- FROM orderdetails
-- LEFT JOIN products ON orderdetails.product_code=products.product_code 
-- LEFT JOIN productlines ON productlines.product_line=products.product_line
-- WHERE orderdetails.quantity_ordered<=30
-- GROUP BY products.product_line
-- ;

-- TODO: Q9 It is noted that the payment (check number OM314933) was actually 2575. Update the record.


-- Update payments 
-- SET amount=2575
-- WHERE check_number="OM314933";

-- TODO: Q10 Fetch the details of salesmen/employees dealing with customers whose orders are resolved.


-- SELECT employees.employee_id, employees.first_name ,employees.last_name, employees.email,orders.status
-- FROM employees 
-- LEFT JOIN customers ON employees.employee_id=customers.sales_employee_id
-- LEFT JOIN orders ON orders.customer_id=customers.customer_id
-- WHERE orders.status="resolved";


-- TODO: Q11) Get the details of the customer who made the maximum payment.


SELECT payments.customer_id,customers.first_name,customers.last_name
FROM payments
LEFT JOIN customers ON customers.customer_id=payments.customer_id
WHERE payments.amount=(SELECT MAX(amount) FROM payments)
;


-- SELECT * FROM customers RIGHT JOIN payments 
-- ON customers.customer_id = payments.customer_id
-- WHERE payments.amount = (SELECT MAX(amount) from payments);