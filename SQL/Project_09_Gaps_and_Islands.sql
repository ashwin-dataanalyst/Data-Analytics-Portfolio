USE superstore_db;

WITH monthly_sales AS
(
    SELECT
        YEAR(order_date) AS year_,
        MONTH(order_date) AS month_,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY
        YEAR(order_date),
        MONTH(order_date)
),

previous_month AS
(
    SELECT
        *,
        LAG(total_sales)
        OVER(ORDER BY year_, month_) AS previous_month_sales
    FROM monthly_sales
),

difference_calculated AS
(
    SELECT
        *,
        total_sales - previous_month_sales AS sales_difference
    FROM previous_month
),

breaks AS
(
    SELECT
        *,
        CASE
            WHEN sales_difference < 0
             AND COALESCE(
                 LAG(sales_difference)
                 OVER(ORDER BY year_, month_),
                 0
             ) >= 0
            THEN 1
            ELSE 0
        END AS break_flag
    FROM difference_calculated
),

groups_created AS
(
    SELECT
        *,
        SUM(break_flag)
        OVER(
            ORDER BY year_, month_
        ) AS group_id
    FROM breaks
),

group_frequency AS
(
    SELECT
        group_id,
        COUNT(*) AS streak_length
    FROM groups_created
    GROUP BY group_id
)

SELECT
    MAX(streak_length) AS longest_increasing_streak
FROM group_frequency;
