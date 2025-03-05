CREATE DATABASE retail_db;
USE retail_db;

CREATE TABLE retail_sales (
    order_id INT PRIMARY KEY,
    date DATE,
    customer_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    quantity_sold INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(10,2),
    profit DECIMAL(10,2),
    region VARCHAR(50)
);


SELECT product_name, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

SELECT region, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC;

SELECT customer_id, SUM(total_sales) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(total_sales) AS monthly_sales
FROM retail_sales
GROUP BY month
ORDER BY month;

SELECT category, SUM(profit) AS total_profit
FROM retail_sales
GROUP BY category
ORDER BY total_profit DESC;

SELECT AVG(total_sales) AS average_order_value
FROM retail_sales;

