-- ============================
-- Matcha Shop Database
-- ============================

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    city TEXT,
    signup_date DATE
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    drink TEXT,
    size TEXT,
    price REAL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ----------------------------
-- Insert Customers
-- ----------------------------
INSERT INTO customers VALUES
(1, 'Alex Kim', 'alex.kim@email.com', 'Nashville', '2024-01-10'),
(2, 'Jordan Lee', 'jordan.lee@email.com', 'Nashville', '2024-02-05'),
(3, 'Sam Patel', 'sam.patel@email.com', 'Franklin', '2024-03-12'),
(4, 'Taylor Nguyen', 'taylor.nguyen@email.com', 'Brentwood', '2024-04-01'),
(5, 'Chris Martinez', 'chris.m@email.com', 'Nashville', '2024-04-15'),
(6, 'Peter Hoang', 'peter.hoang@email.com', 'Nashville', '2024-05-20'),
(7, 'Jayden Cruz', 'jayden.cruz@email.com', 'Nashville', '2024-05-22'),
(8, 'Leah Abraham', 'leah.abraham@email.com', 'Franklin', '2024-05-25'),
(9, 'Dhara Osman', 'dhara.osman@email.com', 'Brentwood', '2024-05-28'),
(10, 'Jason Morgan', 'jason.morgan@email.com', 'Nashville', '2024-06-01'),
(11, 'Yariel Bustillo', 'yariel.bustillo@email.com', 'Antioch', '2024-06-03');

-- ----------------------------
-- Insert Orders
-- ----------------------------
INSERT INTO orders VALUES
(1, 1, '2026-02-02', 'Classic Matcha', 'Medium', 5.50),
(2, 1, '2026-02-10', 'Vanilla Matcha', 'Large', 6.50),
(3, 2, '2026-02-05', 'Strawberry Matcha', 'Small', 5.00),
(4, 2, '2026-02-18', 'Classic Matcha', 'Medium', 5.50),
(5, 2, '2026-02-01', 'Mango Matcha', 'Large', 6.75),
(6, 3, '2026-02-20', 'Classic Matcha', 'Small', 5.00),
(7, 3, '2026-02-03', 'Vanilla Matcha', 'Medium', 6.00),
(8, 4, '2026-02-05', 'Strawberry Matcha', 'Large', 6.75),
(9, 4, '2026-02-12', 'Classic Matcha', 'Medium', 5.50),
(10, 5, '2026-02-15', 'Mango Matcha', 'Small', 5.25),
(11, 6, '2026-02-02', 'Classic Matcha', 'Large', 6.25),
(12, 6, '2026-02-10', 'Vanilla Matcha', 'Medium', 6.00),
(13, 7, '2026-02-02', 'Blueberry Matcha', 'Large', 6.75),
(14, 7, '2026-02-14', 'Classic Matcha', 'Medium', 5.50),
(15, 8, '2026-02-07', 'Strawberry Matcha', 'Small', 5.00),
(16, 8, '2026-02-18', 'Vanilla Matcha', 'Large', 6.50),
(17, 9, '2026-02-09', 'Classic Matcha', 'Medium', 5.50),
(18, 10, '2026-02-12', 'Mango Matcha', 'Small', 5.25),
(19, 10, '2026-02-20', 'Strawberry Matcha', 'Medium', 5.75),
(20, 11, '2026-02-15', 'Vanilla Matcha', 'Medium', 6.00);
