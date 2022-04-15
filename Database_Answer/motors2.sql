-- TODO: Q11) Get the details of the customer who made the maximum payment.


-- SELECT payments.customer_id,customers.first_name,customers.last_name
-- FROM payments
-- LEFT JOIN customers ON customers.customer_id=payments.customer_id
-- WHERE payments.amount=(SELECT MAX(amount) FROM payments)
-- ;


-- SELECT * FROM customers RIGHT JOIN payments 
-- ON customers.customer_id = payments.customer_id
-- WHERE payments.amount = (SELECT MAX(amount) from payments);

-- TODO: Q12 Fetch list of orders shipped to France.

-- SELECT orders.order_id, orders.order_date, orders.required_date, orders.shipped_date, 
-- orders.status, orders.comments , orders.customer_id, customers.country 
-- FROM orders LEFT JOIN customers ON customers.customer_id = orders.customer_id 
-- WHERE customers.country = "France" AND orders.status="Shipped";


-- TODO: Q13 How many customers are from Finland who placed orders.

-- SELECT customers.customer_id,customers.country,orders.order_id FROM
-- customers LEFT JOIN orders ON orders.customer_id=customers.customer_id
-- WHERE customers.country="Finland"
-- ;

-- SELECT customers.customer_id, orders.order_id, COUNT(customers.customer_id)
-- FROM customers RIGHT JOIN orders ON orders.customer_id=customers.customer_id 
-- WHERE customers.country = "Finland";

-- TODO: Q14 Get the details of the customer who made the maximum payment.

-- SELECT customers.customer_id,payments.amount FROM customers LEFT JOIN payments ON
-- payments.customer_id=customers.customer_id
-- WHERE payments.amount = (SELECT MAX(amount) from payments)




-- SELECT * FROM customers RIGHT JOIN payments ON customers.customer_id = payments.customer_id 
-- WHERE payments.amount = (SELECT MAX(amount) from payments)



-- TODO: Q15 Get the details of the customer and payments they made between May 2019 and June 2019.

-- SELECT c.customer_id, c.first_name, c.last_name
-- FROM customers c LEFT JOIN payments p
-- ON c.customer_id=p.customer_id
-- WHERE payment_date between "2019-05-01" AND "2019-06-30";


-- TODO: Q16 How many orders shipped to Belgium in 2018?

-- SELECT COUNT(o.order_id) AS total_orders FROM orders o INNER JOIN 
-- customers c ON c.customer_id=o.customer_id
-- WHERE c.country="Belgium"
-- AND o.shipped_date BETWEEN '2019-01-01' AND '2019-12-31';


-- TODO: Q17 Get the details of the salesman/employee with offices dealing with customers in Germany.


-- SELECT e.employee_id,o.country FROM employees e LEFT JOIN
-- offices o ON o.office_code=e.office_code
-- LEFT JOIN customers c ON e.employee_id=c.sales_employee_id
-- WHERE c.country="Germany";

-- SELECT employees.employee_id, employees.first_name ,employees.job_title,customers.customer_id, 
-- offices.office_code, offices.address_line1,offices.city, offices.state, offices.country, 
-- offices.postal_code, offices.territory 
-- FROM employees CROSS JOIN offices ON  offices.office_code=employees.office_code 
-- LEFT JOIN customers on customers.sales_employee_id = employees.employee_id 
-- WHERE customers.country = "Germany";

-- TODO:Q18 The customer (id:496 ) made a new order today and the details are as follows:

-- Order id : 10426
-- Product Code: S12_3148
-- Quantity : 41
-- Each price : 151
-- Order line number : 11
-- Order date : <today’s date>
-- Required date: <10 days from today>
-- Status: In Process


-- Step I

-- INSERT INTO orders(order_id,order_date,required_date,status,customer_id)
-- VALUES(10426,CURDATE(),(CURDATE()+INTERVAL 10 DAY),"In Process",496)

-- Step II

-- INSERT INTO orderdetails(order_id,product_code,quantity_ordered,each_price,order_line_number) 
-- VALUES(10426 , "S12_3148" ,  41, 151, 11);

-- TODO: Q19 Fetch details of employees who were reported for the payments made by the
--  customers between June 2018 and July 2018.


-- SELECT e.employee_id,e.last_name,e.job_title,p.payment_date,p.amount,
-- p.customer_id,ee.employee_id AS reported_by_employee FROM employees ee JOIN
-- employees e ON e.employee_id=ee.reports_to
-- LEFT JOIN customers c ON c.sales_employee_id=ee.employee_id
-- LEFT JOIN payments p ON p.customer_id=c.customer_id
-- WHERE p.payment_date BETWEEN "2018-06-01" AND "2018-07-30";


-- SELECT reported_emp.employee_id, reported_emp.first_name , reported_emp.last_name, 
-- reported_emp.email, reported_emp.job_title, reported_emp.extension , employees.employee_id 
-- AS reported_by_employee, customers.customer_id FROM 
-- employees JOIN employees reported_emp 
-- ON reported_emp.employee_id = employees.reports_to 
-- LEFT JOIN customers 
-- ON customers.sales_employee_id = employees.employee_id 
-- RIGHT JOIN payments ON payments.customer_id = customers.customer_id 
-- WHERE payments.payment_date BETWEEN '2018-06-01' AND '2018-07-31';

-- TODO: Q20 A new payment was done by a customer(id: 119). Insert the below details.
-- Check Number : OM314944
-- Payment date : <today’s date>
-- Amount : 33789.55


-- INSERT INTO payments(customer_id,check_number,payment_date,amount) 
-- VALUES(119,"OM314944",CURDATE(),33789.55)