SELECT 
date_date,
operational_margin - total_ads_cost AS ads_margin,
average_basket,
operational_margin,
total_ads_cost,
total_impressions,
total_clicks,
quantity,
revenue,
purchase_cost,
margin,
shipping_fee,
log_cost,
ship_cost
FROM {{ ref('int_campaigns_day') }}
INNER JOIN {{ ref('finance_days') }}
USING (date_date)