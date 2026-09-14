# Sales Trend Analysis Using Aggregations

Sales Trend Analysis using SQL, completed as **Task 6** of the Data Analyst Internship (Elevate Labs).

## 📌 Objective
Analyze monthly revenue and order volume from the `online_sales` orders table using SQL aggregations, and identify the top-performing months by revenue.

## 🛠 Tools Used
- MySQL
- MySQL Workbench

## 📂 Files in this Repository
| File | Description |
|------|--------------|
| `sales_trend_analysis.sql` | SQL script with table creation, sample data, and both queries |
| `results.csv` | Output of the monthly revenue & order volume query |
| `top3_months.csv` | Output of the top 3 months by revenue query |

## 🔍 Approach
- Created an `orders` table with `order_id`, `order_date`, `amount`, `product_id`
- Grouped orders by year and month using `YEAR()` and `MONTH()`
- Used `SUM(amount)` for monthly revenue and `COUNT(DISTINCT order_id)` for order volume
- Used `ORDER BY total_revenue DESC LIMIT 3` to find the top 3 months

## ✅ Outcome
Learned how to group data by time period and analyze sales trends using SQL aggregate functions.
