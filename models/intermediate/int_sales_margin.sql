-- Where is the data about quantity? sales
-- Where is the data about purchase_price? products
-- Where is the data about revenue? sales 

SELECT *,
purchase_price*quantity AS purchase_cost,
ROUND(revenue- (purchase_price*quantity) , 2)AS margin,
{{ margin_percent('revenue', 'purchase_price * quantity') }} AS margin_percent
FROM {{ ref('stg_gz_raw_data__raw_gz_sales') }}
INNER JOIN {{ ref('stg_gz_raw_data__raw_gz_product') }}
USING (products_id)