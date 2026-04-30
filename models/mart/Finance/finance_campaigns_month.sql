SELECT 
DATE_TRUNC(date_date, MONTH) AS datemonth,
SUM(operational_margin - total_ads_cost) AS ads_margin,
ROUND(SUM(average_basket),2) AS average_basket,
SUM(operational_margin) AS operational_margin,
SUM(total_ads_cost) AS ads_cost,
SUM(total_impressions) AS impression,
SUM(total_clicks) AS click,
SUM(quantity) AS quantity,
SUM(revenue) AS revenue,
SUM(purchase_cost) AS purchase_cost,
SUM(margin) AS margin,
SUM(shipping_fee) AS shipping_fee,
SUM(log_cost) AS log_cost,
SUM(ship_cost) AS ship_cost
FROM {{ ref('int_campaigns_day') }}
INNER JOIN {{ ref('finance_days') }}
USING (date_date)
GROUP BY datemonth