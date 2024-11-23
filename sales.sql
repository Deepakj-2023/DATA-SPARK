-- sales analysis


SELECT
  MONTHNAME(order_date) AS month,
  ROUND(SUM((unit_price_usd)*quantity),2) AS total_revenue_USD
FROM
  overall
GROUP BY
  MONTHNAME(order_date); 
  

-- sales by revenue performance

SELECT
  product_name,
  ROUND(SUM((unit_price_usd)*quantity),2) AS total_revenue_USD
FROM
  overall
GROUP BY
  product_name
order by total_revenue_USD desc limit 10

-- sales by stores

SELECT
  storekey,
  ROUND(SUM((unit_price_usd)*quantity),2) AS total_revenue_USD
FROM
  overall
GROUP BY
  storekey
order by total_revenue_USD desc
-- sales by top product performance

SELECT
  product_name,
  SUM(quantity) AS total_quantity
FROM
   overall
GROUP BY
  product_name
Order by total_quantity Desc  
Limit 10   



