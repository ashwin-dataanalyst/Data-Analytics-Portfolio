USE superstore_db;

WITH product_sales AS
(
    SELECT
        category,
        product_name,
        SUM(sales) AS total_sales
    FROM superstore
    GROUP BY
        category,
        product_name
),

category_average AS
(
    SELECT
        category,
        AVG(total_sales) AS average_category_sales
    FROM product_sales
    GROUP BY category
)

SELECT

    ps.category,

    ps.product_name,

    ps.total_sales,

    ca.average_category_sales

FROM product_sales ps

JOIN category_average ca

ON ps.category = ca.category

WHERE ps.total_sales > ca.average_category_sales

ORDER BY
ps.category,
ps.total_sales DESC;
