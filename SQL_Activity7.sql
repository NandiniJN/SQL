--  the total purchase amount of all orders.
select SUM(purchase_amount) AS "Total" from Nandini_activities.orders;

-- the average purchase amount of all orders.
select AVG(purchase_amount) AS "Average" from Nandini_activities.orders;

-- the maximum purchase amount of all the orders.
select MAX(purchase_amount) AS "Max value" from Nandini_activities.orders;

-- the minimum purchase amount of all the orders.
select MIN(purchase_amount) AS "Min value" from Nandini_activities.orders;

-- the number of salesmen listed in the table.
select COUNT(distinct salesman_id) AS "Count" from Nandini_activities.orders;