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
        *,
        ROW_NUMBER() OVER(
            ORDER BY total_revenue DESC
        ) AS row_number,

        SUM(total_revenue)
        OVER(
            ORDER BY total_revenue DESC
        ) AS running_total
    FROM product_revenue
),

cumulative_percentage AS
(
    SELECT
        *,
        ROUND(
            running_total /
            (SELECT SUM(sales) FROM superstore) * 100,
            2
        ) AS cumulative_percentage
    FROM running_revenue
),

first_product AS
(
    SELECT
        row_number
    FROM cumulative_percentage
    WHERE cumulative_percentage >= 80
    LIMIT 1
)

SELECT
    COUNT(*) AS products_required_for_80_percent_revenue
FROM cumulative_percentage
WHERE row_number <=
(
    SELECT row_number
    FROM first_product
);
