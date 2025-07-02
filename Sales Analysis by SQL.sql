-- 1. Monthly Revenue and Order Volume (All Years)
SELECT
  DATE_FORMAT(sale_date, '%Y-%m') AS YearMonth,
  SUM(CAST(total AS UNSIGNED)) AS total_revenue,
  COUNT(DISTINCT sale_id) AS order_count
FROM sales
GROUP BY YearMonth
ORDER BY YearMonth;



-- 2. Monthly Revenue and Order Volume (Filter: 2023)
SELECT
  DATE_FORMAT(sale_date, '%Y-%m') AS YearMonth,
  SUM(CAST(total AS UNSIGNED)) AS total_revenue,
  COUNT(DISTINCT sale_id) AS order_count
FROM sales
WHERE YEAR(sale_date) = 2023
GROUP BY YearMonth
ORDER BY YearMonth;

-- 3. Top 5 Months by Revenue (All Years)
SELECT
  DATE_FORMAT(sale_date, '%Y-%m') AS YearMonth,
  SUM(CAST(total AS UNSIGNED)) AS total_revenue,
  COUNT(DISTINCT sale_id) AS order_count
FROM sales
GROUP BY YearMonth
ORDER BY total_revenue DESC
LIMIT 5;

-- 4. Top 5 Months by Order Volume (All Years)
SELECT
  DATE_FORMAT(sale_date, '%Y-%m') AS YearMonth,
  SUM(CAST(total AS UNSIGNED)) AS total_revenue,
  COUNT(DISTINCT sale_id) AS order_count
FROM sales
GROUP BY YearMonth
ORDER BY order_count DESC
LIMIT 5;