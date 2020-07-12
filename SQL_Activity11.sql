-- Write a query that produces the name and number of each salesman and each customer with more than one current order. Put the results in alphabetical order
SELECT customer_id, customer_name FROM Nandini_activities.customers a
WHERE 1<(SELECT COUNT(*) FROM Nandini_activities.orders b WHERE a.customer_id = b.customer_id)
UNION
SELECT salesman_id, name FROM Nandini_activities.salesman a
WHERE 1<(SELECT COUNT(*) FROM Nandini_activities.orders b WHERE a.salesman_id = b.salesman_id)
ORDER BY customer_name;



-- Write a query to make a report of which salesman produce the largest and smallest orders on each date.
SELECT a.salesman_id, name, order_no, 'highest on', order_date FROM Nandini_activities.salesman a, Nandini_activities.orders b
WHERE a.salesman_id=b.salesman_id
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM Nandini_activities.orders c WHERE c.order_date = b.order_date)
UNION
SELECT a.salesman_id, name, order_no, 'lowest on', order_date FROM Nandini_activities.salesman a, Nandini_activities.orders b
WHERE a.salesman_id=b.salesman_id
AND b.purchase_amount=(SELECT MIN(purchase_amount) FROM Nandini_activities.orders c WHERE c.order_date = b.order_date);