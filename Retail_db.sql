## Creating a Database
CREATE DATABASE retail_db;
USE retail_db;

## Creating a Table
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

## 1️⃣ Find the Top-Selling Products
## This will show the best-selling products based on total revenue.
SELECT product_name, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

## 2️⃣ Find the Best-Performing Region
## This tells us which region contributes the most sales.
SELECT region, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC;

## 3️⃣ Find the Most Valuable Customers
## Identifies the highest-spending customers.
SELECT customer_id, SUM(total_sales) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

## 4️⃣ Find Monthly Sales Trends
## This helps us understand how sales perform over different months.
SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(total_sales) AS monthly_sales
FROM retail_sales
GROUP BY month
ORDER BY month;

## 5️⃣ Find the Most Profitable Product Categories
## Helps identify which category generates the most profit.
SELECT category, SUM(profit) AS total_profit
FROM retail_sales
GROUP BY category
ORDER BY total_profit DESC;

## 6️⃣ Find the Average Order Value (AOV)
## Tells us how much customers spend per order on average.
SELECT AVG(total_sales) AS average_order_value
FROM retail_sales;
