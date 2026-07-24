USE superstore_db;

WITH inefficient_state AS
(
    SELECT
        state,
        SUM(profit) AS total_profit,
        SUM(sales) AS total_sales,
        AVG(discount) AS average_discount
    FROM superstore
    GROUP BY state
    ORDER BY total_sales DESC
    LIMIT 5
),

profitability AS
(
    SELECT
        *,
        ROUND(total_profit / total_sales * 100, 2) AS profit_margin
    FROM inefficient_state
)

SELECT *
FROM profitability
ORDER BY profit_margin ASC;
