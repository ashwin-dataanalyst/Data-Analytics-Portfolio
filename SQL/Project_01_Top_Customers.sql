USE superstore_db;

WITH customer_sales AS
(
    SELECT
        customer_name,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY customer_name
)

SELECT
    *,
    ROUND(
        total_sales /
        (SELECT SUM(sales) FROM superstore) * 100,
        2
    ) AS percentage_of_company_sales
FROM customer_sales
ORDER BY total_sales DESC
LIMIT 5;
