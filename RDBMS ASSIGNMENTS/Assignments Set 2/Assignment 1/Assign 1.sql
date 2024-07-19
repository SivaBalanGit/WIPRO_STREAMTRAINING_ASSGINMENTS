create database customer;

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
    
SELECT * FROM customers;  -- reterive all column from customer table

SELECT customer_name, email
FROM customers
WHERE city = 'Chennai';  -- reterive specified column from customer table