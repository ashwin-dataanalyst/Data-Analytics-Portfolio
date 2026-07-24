USE superstore_db;

WITH product_revenue AS
(
    SELECT
        product_name,
        SUM(sales) AS total_revenue
    FROM superstore
    GROUP BY product_name
),

running_revenue AS
(
    SELECT

        ROW_NUMBER()
        OVER(
            ORDER BY total_revenue DESC
        ) AS product_rank,

        product_name,

        total_revenue,

        SUM(total_revenue)
        OVER(
            ORDER BY total_revenue DESC
        ) AS running_revenue

    FROM product_revenue
)

SELECT *

FROM running_revenue;
