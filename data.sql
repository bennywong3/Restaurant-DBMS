insert into Customers (customer_id, name, phone_number, address) values (1, 'Benny', 94779627, '43 Shelley Way');
insert into Customers (customer_id, name, phone_number, address) values (2, 'Nickolai Agglione', 97508196, '95819 Pawling Point');
insert into Customers (customer_id, name, phone_number, address) values (3, 'Sol Sponer', 90051416, '56 Hazelcrest Circle');
insert into Customers (customer_id, name, phone_number, address) values (4, 'Ardelis Fearney', 99863649, '5 Waywood Alley');
insert into Customers (customer_id, name, phone_number, address) values (5, 'Ernaline O''Crigan', 93342344, '39 Fallview Pass');
insert into Customers (customer_id, name, phone_number, address) values (6, 'Sena Lefridge', 90342948, '6796 Dawn Junction');
insert into Customers (customer_id, name, phone_number, address) values (7, 'Les Sturton', 90721341, '7 Dapin Plaza');
insert into Customers (customer_id, name, phone_number, address) values (8, 'Frank Downing', 92081998, '892 Lindbergh Point');
insert into Customers (customer_id, name, phone_number, address) values (9, 'Felix Dymocke', 91153342, '26 Vahlen Drive');
insert into Customers (customer_id, name, phone_number, address) values (10, 'Betsy Franchyonok', 99287551, '205 Fuller Drive');
insert into Customers (customer_id, name, phone_number, address) values (11, 'Gualterio Dunkley', 91695415, '00 Sauthoff Court');
insert into Customers (customer_id, name, phone_number, address) values (12, 'Marlin Signoret', 93321367, '737 Petterle Crossing');
insert into Customers (customer_id, name, phone_number, address) values (13, 'Drucy Aspinall', 96513923, '38 Springview Place');
insert into Customers (customer_id, name, phone_number, address) values (14, 'Jay Bartle', 90498754, '611 Buell Way');
insert into Customers (customer_id, name, phone_number, address) values (15, 'Petunia Gamet', 91269883, '0 Redwing Street');

insert into Restaurants (restaurant_id, name, contact, address) values (1, 'KFP HKU', 24442978, 'Rm 203, 2/f Chong Yuet Ming Amenities Centre, HKU, Pok Fu Lam');
insert into Restaurants (restaurant_id, name, contact, address) values (2, 'KFP TW', 24232502, 'Shop Nos. G02-G03, G05 & G28-G31, G/F, Citywalk 2, 18 Yeung Uk Road, Tsuen Wan, New Territories');
insert into Restaurants (restaurant_id, name, contact, address) values (3, 'KFP MK', 20070588, 'Shop Nos. 130-131, Level 1, Moko, 193 Prince Edward Road West, Mong Kok, Kowloon');

insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (1, 1, 4, 1);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (1, 2, 8, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (1, 3, 2, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (1, 4, 4, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (1, 5, 2, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (1, 6, 8, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (2, 1, 2, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (2, 2, 2, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (2, 3, 4, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (2, 4, 8, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (3, 1, 2, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (3, 2, 2, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (3, 3, 4, 0);
insert into Tables (restaurant_id, table_number, capacity, is_reserved) values (3, 4, 8, 0);

insert into Cashiers (restaurant_id, cashier_number) values (1, 1);
insert into Cashiers (restaurant_id, cashier_number) values (1, 2);
insert into Cashiers (restaurant_id, cashier_number) values (2, 1);
insert into Cashiers (restaurant_id, cashier_number) values (3, 1);

insert into CashierRevenue (restaurant_id, cashier_number, date, revenue) values (1, 1, '2020-11-25', '100000');
insert into CashierRevenue (restaurant_id, cashier_number, date, revenue) values (1, 1, '2020-11-26', '200000.5');
insert into CashierRevenue (restaurant_id, cashier_number, date, revenue) values (1, 2, '2020-11-25', '123456');
insert into CashierRevenue (restaurant_id, cashier_number, date, revenue) values (1, 2, '2020-11-26', '234567.5');
insert into CashierRevenue (restaurant_id, cashier_number, date, revenue) values (2, 1, '2020-11-26', '10000');
insert into CashierRevenue (restaurant_id, cashier_number, date, revenue) values (3, 1, '2020-11-26', '324143');

insert into Dishes (dish_id, name, price, type) values (1, 'Individual Meal 1', 100, 'S');
insert into Dishes (dish_id, name, price, type) values (2, 'Individual Meal 2', 60.5, 'S');
insert into Dishes (dish_id, name, price, type) values (3, 'Hot Wings', 13, 'F');
insert into Dishes (dish_id, name, price, type) values (4, 'Zinger burger', 26.5, 'F');
insert into Dishes (dish_id, name, price, type) values (5, 'Chocolate', 18, 'D');
insert into Dishes (dish_id, name, price, type) values (6, '7-down', 14, 'D');
insert into Dishes (dish_id, name, price, type) values (7, 'Bucket Meal for 2', 120, 'S');
insert into Dishes (dish_id, name, price, type) values (8, 'Bucket Meal for 4', 200, 'S');

insert into DishAllergen (dish_id, allergen) values (1, 'Eggs, milk');
insert into DishAllergen (dish_id, allergen) values (1, 'Peanuts');
insert into DishAllergen (dish_id, allergen) values (4, 'Eggs');
insert into DishAllergen (dish_id, allergen) values (5, 'Milk');
insert into DishAllergen (dish_id, allergen) values (8, 'Seafood');

insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (1, 1, 'Nicoli Eykelbosch', 90728902, '334 4th Drive', 'waiter');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (2, 1, 'Megan Elfleet', 99956016, '85 Washington Point', 'waiter');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (3, 1, 'Cobb Newark', 94462356, '2 Marquette Point', 'waiter');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (4, 1, 'Cam Luipold', 95783438, '2378 Sundown Hill', 'chef');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (5, 1, 'Davine Tarply', 92748402, '8788 Old Gate Drive', 'chef');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (6, 1, 'Ekaterina Orrom', 99381571, '0 Amoth Road', 'manager');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (7, 2, 'Bradley Tackley', 98945412, '2833 Alpine Junction', 'manager');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (8, 2, 'Werner Bingle', 90636476, '2 Gulseth Crossing', 'chef');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (9, 3, 'Prinz Gann', 93504238, '2 Fieldstone Crossing', 'manager');
insert into Employees (employee_id, restaurant_id, name, phone_number, address, type) values (10, 3, 'Karee McDavitt', 94506816, '41 Hollow Ridge Center', 'chef');

insert into FullTimeEmployee (employee_id, monthly_salary) values (1, 15000);
insert into FullTimeEmployee (employee_id, monthly_salary) values (4, 18000);
insert into FullTimeEmployee (employee_id, monthly_salary) values (6, 25000);
insert into FullTimeEmployee (employee_id, monthly_salary) values (7, 21000);
insert into FullTimeEmployee (employee_id, monthly_salary) values (9, 23000);

insert into PartTimeEmployee (employee_id, hourly_rate, working_hours, total_salary) values (2, 50, 100, (hourly_rate*working_hours));
insert into PartTimeEmployee (employee_id, hourly_rate, working_hours, total_salary) values (3, 40, 100, (hourly_rate*working_hours));
insert into PartTimeEmployee (employee_id, hourly_rate, working_hours, total_salary) values (5, 60, 200, (hourly_rate*working_hours));
insert into PartTimeEmployee (employee_id, hourly_rate, working_hours, total_salary) values (8, 70, 160, (hourly_rate*working_hours));
insert into PartTimeEmployee (employee_id, hourly_rate, working_hours, total_salary) values (10, 100, 200, (hourly_rate*working_hours));

insert into Promotions (promo_id, discount) values (0, NULL);
insert into Promotions (promo_id, discount) values (1, 10);
insert into Promotions (promo_id, discount) values (2, 5.5);

insert into Books (customer_id, restaurant_id, table_number, date, start_time, duration) values (1, 1, 1, '2020-11-27', '13:00:00', 120);
insert into Books (customer_id, restaurant_id, table_number, date, start_time, duration) values (2, 1, 2, '2020-12-01', '20:00:00', 90);
insert into Books (customer_id, restaurant_id, table_number, date, start_time, duration) values (3, 1, 6, '2020-12-02', '19:00:00', 90);
insert into Books (customer_id, restaurant_id, table_number, date, start_time, duration) values (1, 2, 3, '2020-12-05', '18:00:00', 60);
insert into Books (customer_id, restaurant_id, table_number, date, start_time, duration) values (1, 3, 4, '2020-12-10', '21:00:00', 60);

insert into Orders (order_number, customer_id, restaurant_id, cashier_number, type, date, promo_id) values (1, 1, 1, 1, 'D', '2020-11-27 12:34:56', 1);
insert into Items (order_number, item_number, dish_id, quantity) value (1, 1, 1, 1);
insert into Items (order_number, item_number, dish_id, quantity) value (1, 2, 3, 2);
UPDATE Orders
SET total = (SELECT SUM(quantity*price) FROM Dishes, Items WHERE Items.order_number=1 AND Dishes.dish_id=Items.dish_id)
WHERE order_number = 1;
UPDATE Orders
SET total = total - (SELECT discount FROM Promotions WHERE promo_id=1)
WHERE order_number = 1;

insert into Orders (order_number, customer_id, restaurant_id, cashier_number, type, date) values (2, 2, 2, 1, 'T', '2020-11-27 09:00:00');
insert into Items (order_number, item_number, dish_id, quantity) value (2, 1, 7, 1);
UPDATE Orders
SET total = (SELECT SUM(quantity*price) FROM Dishes, Items WHERE Items.order_number=2 AND Dishes.dish_id=Items.dish_id)
WHERE order_number = 2;


insert into Orders (order_number, customer_id, restaurant_id, cashier_number, type, date, promo_id) values (3, 3, 3, 1, 'T', '2020-11-27 10:30:00', 2);
insert into Items (order_number, item_number, dish_id, quantity) value (3, 1, 8, 2);
UPDATE Orders
SET total = (SELECT SUM(quantity*price) FROM Dishes, Items WHERE Items.order_number=3 AND Dishes.dish_id=Items.dish_id)
WHERE order_number = 3;
UPDATE Orders
SET total = total - (SELECT discount FROM Promotions WHERE promo_id=2)
WHERE order_number = 3;

insert into Orders (order_number, customer_id, restaurant_id, cashier_number, type, date, promo_id) values (4, 4, 1, 2, 'T', '2020-11-27 19:00:00', 1);
insert into Items (order_number, item_number, dish_id, quantity) value (4, 1, 3, 4);
insert into Items (order_number, item_number, dish_id, quantity) value (4, 2, 4, 2);
insert into Items (order_number, item_number, dish_id, quantity) value (4, 3, 5, 2);
UPDATE Orders
SET total = (SELECT SUM(quantity*price) FROM Dishes, Items WHERE Items.order_number=4 AND Dishes.dish_id=Items.dish_id)
WHERE order_number = 4;
UPDATE Orders
SET total = total - (SELECT discount FROM Promotions WHERE promo_id=1)
WHERE order_number = 4;
