SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

SELECT 
    DATE_PART('month', order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

SELECT discount, AVG(profit) AS avg_profit
FROM sales
GROUP BY discount
ORDER BY discount;

SELECT customer_name, SUM(sales) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;