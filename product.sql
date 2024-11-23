
-- Catagory and sub catagory analysis
SELECT
    category,
    subcategory,
    ROUND(SUM(unit_price_usd * quantity), 2) AS total_sales
FROM
    overall
GROUP BY
    category, subcategory
ORDER BY
    total_sales DESC;

-- Profitability Analysis: Calculate profit margins for products by comparingunit cost and unit price.

SELECT
    product_name,
    ROUND(SUM((unit_price_usd - unit_cost_usd) * quantity), 2) AS profit_margin
FROM
    overall
GROUP BY
    product_name
ORDER BY
    profit_margin DESC
LIMIT 10;

-- Product Popularity: Identify the most and least popular products based on sales data.

SELECT
    product_name,
    SUM(quantity) AS total_quantity_sold
FROM
    overall
GROUP BY
    product_name
ORDER BY
    total_quantity_sold DESC
LIMIT 10;

SELECT
    product_name,
    SUM(quantity) AS total_quantity_sold
FROM
    overall
GROUP BY
    product_name
ORDER BY
    total_quantity_sold ASC
LIMIT 10;

