-- Write a query to find all the orders issued against the salesman who may works for customer whose id is 3007.
SELECT * FROM Nandini_activities.orders
WHERE salesman_id=(SELECT DISTINCT salesman_id FROM Nandini_activities.orders WHERE customer_id=3007);

-- Write a query to find all orders attributed to a salesman in New York.
SELECT * FROM Nandini_activities.orders
WHERE salesman_id IN (SELECT salesman_id FROM Nandini_activities.salesman WHERE city='New York');

-- Write a query to count the customers with grades above New York's average.
SELECT grade, COUNT(*) FROM Nandini_activities.customers
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM Nandini_activities.customers WHERE city='New York');

-- Write a query to extract the data from the orders table for those salesman who earned the maximum commission
SELECT order_no, purchase_amount, order_date, salesman_id FROM Nandini_activities.orders
WHERE salesman_id IN( SELECT salesman_id FROM Nandini_activities.salesman
WHERE commission=( SELECT MAX(commission) FROM Nandini_activities.salesman));