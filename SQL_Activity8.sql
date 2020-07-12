-- the highest purchase amount ordered by the each customer with their ID and highest purchase amount.
SELECT customer_id, MAX(purchase_amount) AS "Max Amount" FROM Nandini_activities.orders GROUP BY customer_id;

--  the highest purchase amount on '2012-08-17' for each salesman with their ID.
SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM Nandini_activities.orders 
WHERE order_date='2012-08-17' GROUP BY salesman_id, order_date;

-- the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount within the list 2030, 3450, 5760, and 6000.
SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM Nandini_activities.orders GROUP BY customer_id, order_date HAVING MAX(purchase_amount) 
IN(2030, 3450, 5760, 6000);