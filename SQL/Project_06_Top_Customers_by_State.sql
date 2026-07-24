USE superstore_db;

WITH customer_sales AS
(
    SELECT

        state,

        customer_name,

        SUM(sales) AS total_sales

    FROM superstore

    GROUP BY

        state,

        customer_name
),

customer_rank AS
(
    SELECT

        *,

        RANK()

        OVER(

            PARTITION BY state

            ORDER BY total_sales DESC

        ) AS customer_rank

    FROM customer_sales
)

SELECT

    state,

    customer_name,

    total_sales,

    customer_rank

FROM customer_rank

WHERE customer_rank <= 3

ORDER BY

    state,

    customer_rank;
