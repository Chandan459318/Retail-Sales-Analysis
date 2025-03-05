**Retail Sales Analysis (Excel + MySQL)**  

📌 Overview

This project analyzes 500+ retail sales transactions to uncover key business insights. The goal was to use Excel for data cleaning and visualization and MySQL for querying and deeper analysis. The analysis focuses on identifying top-selling products, regional performance, customer behavior, and monthly sales trends to help businesses make data-driven decisions.

📊 Key Insights & Findings

✔ Top-Selling Product: "**Laptop**" generated the highest revenue.  
✔ Best-Performing Region: "**North Region**" contributed the most sales.  
✔ Most Valuable Customers: Identified top 5 highest-spending customers.  
✔ Monthly Sales Trends: Sales peaked in the "**Januray Month**", revealing seasonal trends.  
✔ Most Profitable Category: "**Electronics**" generated the highest profit.  
✔ Average Order Value (AOV): Customers spent an average of "**$1253.900000**" per transaction.  

🛠 Tools & Skills Used

* Excel: Data Cleaning, Pivot Tables, Charts

* SQL (MySQL): Querying, Aggregations

* Business Intelligence: Sales Trend Analysis, Customer Segmentation

🔍 SQL Queries Used

1️⃣ Find the Top-Selling Products

SELECT product_name, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

2️⃣ Find the Best-Performing Region

SELECT region, SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC;

3️⃣ Find Monthly Sales Trends

SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(total_sales) AS monthly_sales
FROM retail_sales
GROUP BY month
ORDER BY month;

📜 Business Impact

* **Improved Sales Strategies:** Identified top-selling products to focus marketing efforts.

* **Customer Retention:** Found high-value customers for personalized promotions.

* **Revenue Growth:** Insights helped in inventory planning and regional sales optimization.
