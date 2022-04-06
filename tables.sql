CREATE TABLE Customers (
  customer_id INT NOT NULL PRIMARY KEY,
  name VARCHAR(80),
  phone_number CHAR(8),
  address TEXT
);

CREATE TABLE Restaurants (
  restaurant_id INT NOT NULL PRIMARY KEY,
  name VARCHAR(80),
  contact CHAR(8),
  address TEXT
);

CREATE TABLE Tables (
  restaurant_id INT NOT NULL,
  table_number INT NOT NULL,
  capacity INT NOT NULL,
  is_reserved BIT NOT NULL DEFAULT 0,
  PRIMARY KEY (restaurant_id, table_number),
  FOREIGN KEY (restaurant_id) REFERENCES Restaurants (restaurant_id)
);

CREATE TABLE Cashiers (
  restaurant_id INT NOT NULL,
  cashier_number INT NOT NULL,
  PRIMARY KEY (restaurant_id, cashier_number),
  FOREIGN KEY (restaurant_id) REFERENCES Restaurants (restaurant_id)
);

CREATE TABLE CashierRevenue (
  restaurant_id INT NOT NULL,
  cashier_number INT NOT NULL,
  date DATE NOT NULL,
  revenue decimal(7,1) CHECK (revenue >= 0),
  PRIMARY KEY (restaurant_id, cashier_number, date),
  FOREIGN KEY (restaurant_id, cashier_number) REFERENCES Cashiers (restaurant_id, cashier_number)
);

CREATE TABLE Dishes (
  dish_id INT NOT NULL PRIMARY KEY, 
  name VARCHAR(80),
  price decimal(4,1) CHECK (price >= 0),
  type CHAR(1)
);

CREATE TABLE DishAllergen (
  dish_id INT NOT NULL, 
  allergen VARCHAR(100),
  PRIMARY KEY (dish_id, allergen),
  FOREIGN KEY (dish_id) REFERENCES Dishes (dish_id)
);

CREATE TABLE Employees (
  employee_id INT NOT NULL PRIMARY KEY,
  restaurant_id INT NOT NULL,
  name VARCHAR(80),
  phone_number CHAR(8),
  address TEXT,
  type VARCHAR(20),
  FOREIGN KEY (restaurant_id) REFERENCES Restaurants (restaurant_id)
);

CREATE TABLE FullTimeEmployee (
  employee_id INT NOT NULL PRIMARY KEY,
  monthly_salary decimal(7,1) CHECK (monthly_salary >= 0),
  FOREIGN KEY (employee_id) REFERENCES Employees (employee_id)
);

CREATE TABLE PartTimeEmployee (
  employee_id INT NOT NULL PRIMARY KEY,
  hourly_rate decimal(4,1) CHECK (hourly_rate >= 0),
  working_hours decimal(4,1) CHECK (working_hours >= 0),
  total_salary decimal(7,1) CHECK (total_salary >= 0),
  FOREIGN KEY (employee_id) REFERENCES Employees (employee_id)
);

CREATE TABLE Promotions (
  promo_id INT NOT NULL PRIMARY KEY, 
  discount decimal(4,1) CHECK (discount >= 0)
);

CREATE TABLE Books (
  customer_id INT NOT NULL,
  restaurant_id INT NOT NULL,
  table_number INT NOT NULL,
  date DATE NOT NULL,
  start_time TIME NOT NULL,
  duration INT NOT NULL CHECK (duration > 0),
  PRIMARY KEY (customer_id, restaurant_id, table_number, date),
  FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
  FOREIGN KEY (restaurant_id, table_number) REFERENCES Tables (restaurant_id, table_number)
);

CREATE TABLE Orders (
  order_number INT NOT NULL PRIMARY KEY,
  customer_id INT NOT NULL,
  restaurant_id INT NOT NULL,
  cashier_number INT NOT NULL,
  total decimal(7,1) CHECK (total >= 0),
  type CHAR(1) DEFAULT 'D',
  date DATETIME NOT NULL,
  promo_id INT DEFAULT 0,
  FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
  FOREIGN KEY (restaurant_id, cashier_number) REFERENCES Cashiers (restaurant_id, cashier_number),
  FOREIGN KEY (promo_id) REFERENCES Promotions (promo_id)
);

CREATE TABLE Items (
  order_number INT NOT NULL,
  item_number INT NOT NULL,
  dish_id INT NOT NULL, 
  quantity INT NOT NULL CHECK (quantity > 0), 
  PRIMARY KEY (order_number, item_number),
  FOREIGN KEY (order_number) REFERENCES Orders (order_number),
  FOREIGN KEY (dish_id) REFERENCES Dishes (dish_id)
);
