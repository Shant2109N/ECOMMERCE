
-- Drop tables if they exist
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50)
);

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert customers
INSERT INTO customers VALUES
(1, 'John Doe', 'john@example.com', 'USA'),
(2, 'Jane Smith', 'jane@example.com', 'UK'),
(3, 'Raj Patel', 'raj@example.com', 'India'),
(4, 'Maria Garcia', 'maria@example.com', 'Spain');

-- Insert products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 800.00),
(102, 'Smartphone', 'Electronics', 500.00),
(103, 'Desk Chair', 'Furniture', 150.00),
(104, 'Coffee Maker', 'Appliances', 80.00);

-- Insert orders
INSERT INTO orders VALUES
(1001, 1, 101, 1, 800.00, '2025-07-01'),
(1002, 1, 102, 2, 1000.00, '2025-07-03'),
(1003, 2, 103, 1, 150.00, '2025-07-05'),
(1004, 3, 104, 3, 240.00, '2025-07-06'),
(1005, 4, 101, 1, 800.00, '2025-07-07'),
(1006, 3, 102, 1, 500.00, '2025-07-08');
