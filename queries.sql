-- Q1
SELECT * FROM Restaurants

-- Q2
SELECT type AS 'Dine in (D) / Take away (T)', COUNT(type) AS 'COUNT'
FROM Orders
GROUP BY type 

-- Q3
SELECT DISTINCT O.order_number, C.name AS 'Customer name', R.name AS 'Restaurant name', Ca.cashier_number, O.date, O.type, O.discount, O.total
FROM Customers C, Restaurants R, Cashiers Ca, 
(SELECT order_number,customer_id,restaurant_id,cashier_number,total,type,date,discount
FROM Orders
LEFT OUTER JOIN Promotions
ON Orders.promo_id = Promotions.promo_id) AS O
WHERE C.customer_id = O.customer_id AND R.restaurant_id=O.restaurant_id AND Ca.cashier_number=O.cashier_number

-- Q4
SELECT O.order_number, I.item_number, D.name, D.price, I.quantity
FROM Orders O, Items I, Dishes D
WHERE O.order_number=I.order_number AND O.order_number=1 AND I.dish_id=D.dish_id

-- Q5
SELECT promo_id, COUNT(promo_id) AS 'COUNT'
FROM Orders
GROUP BY promo_id 

-- Q6
SELECT table_number, capacity
FROM Tables
WHERE restaurant_id=1 AND is_reserved=1

-- Q7
SELECT R.name, C.name, table_number, date, start_time, duration
FROM Books B, Customers C, Restaurants R
WHERE B.restaurant_id=R.restaurant_id AND B.restaurant_id=1 AND B.customer_id=C.customer_id AND date>'2020-11-27'

-- Q8
SELECT C.customer_id, C.name, C.phone_number, C.address
FROM Customers C 
WHERE C.customer_id NOT IN ( 
      SELECT DISTINCT customer_id
      FROM Orders
)

-- Q9
SELECT * FROM Employees WHERE restaurant_id=1

-- Q10
SELECT F.employee_id, E.name, F.monthly_salary
FROM Employees E, FullTimeEmployee F
WHERE E.employee_id=F.employee_id AND E.restaurant_id=1

-- Q11
SELECT P.employee_id, E.name, P.hourly_rate, P.working_hours, P.total_salary
FROM Employees E, PartTimeEmployee P
WHERE E.employee_id=P.employee_id AND E.restaurant_id=1

-- Q12
SELECT * FROM CashierRevenue WHERE restaurant_id=1 ORDER BY date

-- Q13
SELECT date, SUM(revenue) AS 'total revenue' 
FROM CashierRevenue 
WHERE restaurant_id=1 AND date='2020-11-26' 
GROUP BY date

-- Q14
SELECT R.name, C.count AS 'number of cashiers'
FROM Restaurants R,
(SELECT restaurant_id, COUNT(*) AS 'count'
FROM Cashiers
GROUP BY restaurant_id) AS C
WHERE R.restaurant_id=C.restaurant_id

-- Q15
SELECT C.name, O.count AS 'number of orders placed'
FROM Customers C,
(SELECT customer_id, COUNT(*) AS 'count'
FROM Orders
GROUP BY customer_id) AS O
WHERE C.customer_id=O.customer_id AND C.name='Benny'

-- Q16
SELECT R.name, O.count AS 'number of orders', O.total AS 'total revenure'
FROM Restaurants R,
(SELECT restaurant_id, COUNT(*) AS 'count', SUM(total) AS 'total'
FROM Orders
GROUP BY restaurant_id) AS O
WHERE R.restaurant_id=O.restaurant_id

-- Q17
SELECT Dishes.dish_id, name, price, type AS 'Set (S) / Food (F) / Drink (D)', allergen
from Dishes, DishAllergen
WHERE Dishes.dish_id=DishAllergen.dish_id