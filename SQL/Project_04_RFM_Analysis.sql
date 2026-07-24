USE superstore_db;

WITH rfm AS
(
    SELECT
        customer_name,
        MAX(order_date) AS last_order_date,
        COUNT(DISTINCT order_id) AS frequency,
        SUM(sales) AS monetary
    FROM superstore
    GROUP BY customer_name
),

recency_done AS
(
    SELECT
        *,
        DATEDIFF(
            (SELECT MAX(order_date) FROM superstore),
            last_order_date
        ) AS recency
    FROM rfm
),

rfm_score AS
(
    SELECT
        *,
        NTILE(5) OVER(
            ORDER BY recency ASC
        ) AS r_bucket,

        NTILE(5) OVER(
            ORDER BY frequency DESC
        ) AS f_bucket,

        NTILE(5) OVER(
            ORDER BY monetary DESC
        ) AS m_bucket

    FROM recency_done
)

SELECT

    customer_name,

    6-r_bucket AS r_score,

    6-f_bucket AS f_score,

    6-m_bucket AS m_score

FROM rfm_score;
