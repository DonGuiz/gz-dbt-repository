SELECT orders_id,
date_date,
ROUND(margin+shipping_fee-logcost-ship_cost, 2) AS operational_margin,
quantity,
revenue,
margin,
logcost,
purchase_cost,
shipping_fee,
ship_cost
FROM {{ ref('int_orders_margin') }}
INNER JOIN {{ ref('stg_gz_raw_data__raw_gz_ship') }}
USING (orders_id)