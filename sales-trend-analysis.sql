
CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2025-01-05', 200.00, 101),
(1, '2025-01-05', 150.00, 102),
(2, '2025-01-15', 300.00, 103),
(3, '2025-02-02', 500.00, 101),
(4, '2025-02-10', 250.00, 104),
(4, '2025-02-10', 100.00, 105),
(5, '2025-02-20', NULL, 101),
(6, '2025-03-01', 700.00, 102),
(7, '2025-03-12', 400.00, 103),
(8, '2025-03-25', 600.00, 104);

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 3;