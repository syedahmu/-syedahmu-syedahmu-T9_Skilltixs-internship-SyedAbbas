🛍️ Retail coffee shop Sales SQL Project
A simple yet complete SQL project that analyzes sales data using core SQL concepts such as filtering, joining, aggregating, sorting, and working with dates.

📁 Dataset
This project uses mock retail data stored across four CSV files:

products.csv — product catalog with prices and categories
customers.csv — customer information
city.csv — city & state details
sales.csv — sales transactions with product, customer, and date references
All CSVs are located in the /data folder.

🛠️ Tools Used
MySQL 8.0
MySQL Workbench
Git & GitHub
## Analysis: Time-Based Sales Trends Using SQL Aggregation

To uncover key business insights, I performed a detailed time-based analysis of sales data using SQL aggregation techniques. The aim was to identify trends in monthly revenue and order volume to highlight peak sales periods and understand customer buying patterns over time.

### Methodology

- **Data Grouping:**  
  The sales data was grouped by month and year using SQL’s `DATE_FORMAT()` function, allowing for a clear view of trends over time.

- **Aggregation:**  
  I used `SUM()` to calculate total monthly revenue and `COUNT(DISTINCT sale_id)` to determine the number of monthly orders. These aggregate functions provided a concise summary of sales activity.

- **Filtering:**  
  For a focused yearly analysis, I filtered results for specific years (e.g., 2023), enabling year-over-year comparisons.

- **Ranking:**  
  To identify peak periods, I sorted and selected the top months by revenue and by order volume.

### Key Findings

- **Seasonal Trends:**  
  The analysis revealed distinct sales peaks during specific months, indicating possible seasonality or the impact of promotions and holidays.

- **Peak Periods:**  
  The top revenue and order months were identified, providing targets for future marketing campaigns and inventory management.

- **Customer Buying Patterns:**  
  By comparing revenue and order counts, I could infer whether peak sales were driven by more customers or higher-value purchases.

- **Yearly Comparisons:**  
  Focusing on a single year (e.g., 2023) allowed for the identification of any deviations from previous trends and assessment of recent business performance.

### Example SQL Query Used

```sql
SELECT
  DATE_FORMAT(sale_date, '%Y-%m') AS year_month,
  SUM(CAST(total AS UNSIGNED)) AS total_revenue,
  COUNT(DISTINCT sale_id) AS order_count
FROM sales
GROUP BY year_month
ORDER BY year_month;
```

### Conclusion

By leveraging SQL aggregation techniques, I was able to extract actionable insights from raw sales data, such as identifying peak sales periods and understanding purchasing trends. These findings can inform strategic decisions in marketing, inventory planning, and customer engagement for the business.

---

