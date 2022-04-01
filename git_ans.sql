-- SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate 
-- FROM Orders
-- INNER JOIN Customers ON Orders.CustomerID= Customers.CustomerID LIMIT 5;


-- SELECT Orders.OrderId, Customers.CustomerName, Shippers.ShipperName
-- FROM ((Orders
-- INNER JOIN  Customers ON Orders.CustomerID= Customers.CustomerID)
-- INNER JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID
-- )LIMIT 5;

-- SELECT Customers.CustomerName,Orders.OrderID
-- FROM (Customers
-- LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID
-- );

-- SELECT Customers.CustomerName,Orders.OrderID
-- FROM (Orders
-- LEFT JOIN Customers ON Customers.CustomerID=Orders.CustomerID
-- );

-- TODO:  UNION/FULL UNION

-- SELECT  city from customers
-- UNION 
-- SELECT  city from suppliers ORDER BY city;

