use customer;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    city VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO customers (customer_id, customer_name, email, phone_number, city, country)
VALUES
    (1, 'John Doe', 'john.123@gmail.com', '9458652345', 'Chennai', 'INDIA'),
    (2, 'Jane Smith', 'jane.smith@gmail.com', '9894929391', 'Mumbai', 'INDIA'),
    (3, 'Alice Johnson', 'alice.johnson@gmail.com', '7355648521', 'Delhi', 'INDIA'),
    (4, 'Bob Brown', 'bob.brown@gmail.com', '8495623542', 'Kochi', 'INDIA');
    
INSERT INTO customers (customer_id, customer_name, email, phone_number, city, country)
VALUES
    (5, 'Kishore', 'kishore.741@gmail.com', '9996582546', 'Chennai', 'INDIA'),
    (6, 'Smith', 'smith6598@gmail.com', '7895645289', 'Mumbai', 'INDIA'),
    (7, 'Giri', 'girialltoall@gmail.com', '8526985654', 'Bangalore', 'INDIA'),
    (8, 'Krish Reddy', 'krishreddy123@gmail.com', '8495623542', 'Bangalore', 'INDIA'),
    (9, 'Rohit', 'rohitguru45@gmail.com', '9985682130', 'Kochi', 'INDIA'),
    (10, 'Bob', 'bobgod2356@gmail.com', '86697542135', 'Kochi', 'INDIA');
    
SELECT * FROM customers;  -- reterive all column from customer table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
    (101, 1, '2024-05-01', 100.00),
    (102, 2, '2024-05-05', 150.00),
    (103, 3, '2024-05-10', 200.00),
    (104, 1, '2024-05-15', 75.00),
    (105, 4, '2024-05-20', 120.00);
    
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES  
    (106, 1, '2024-05-01', 250.00),
    (107, 2, '2024-05-05', 300.00),
    (108, 3, '2024-05-10', 275.00),
    (109, 3, '2024-05-15', 71.00),
    (1010, 10, '2024-05-20', 89.00);
    
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES  
    (1011, 10, '2024-05-06', 345.00),
    (1012, 5, '2024-05-05', 30.00),
    (1013, 4, '2024-05-01', 450.00),
    (1014, 7, '2024-05-14', 711.00),
    (1015, 7, '2024-05-22', 890.00),
	(1016, 8, '2024-05-07', 200.00),
    (1017, 2, '2024-05-03', 650.00),
    (1018, 1, '2024-05-11', 240.00),
    (1019, 6, '2024-05-10', 85.00),
    (1020, 9, '2024-05-20', 90.00);
    
SELECT * FROM orders;

SELECT c.*, o.order_id, o.order_date, o.total_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Chennai';


SELECT c.*, o.order_id, o.order_date, o.total_amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Vizag' OR o.customer_id IS NULL;

